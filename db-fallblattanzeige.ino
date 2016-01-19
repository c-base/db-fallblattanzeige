// DB-Fallblattanzeige 
// 15.01.2016
//
// Authors: uk, coon

// Pins
const int PIN_SENSORS_IN = 5;  // PD5
const int PIN_SR_LATCH   = 6;  // PD6
const int PIN_SR_CP      = 7;  // PD7
const int PIN_SR_DATA    = 8;  // PB0
const int PIN_MOTOR      = 9;  // PB1
const int PIN_IR_ROTARY  = A2; // PC2
const int PIN_IR_ORIGIN  = A3; // PC3

// constants
const int ORIGIN_OFFSET = 5;

void waitForSwitches(int switches) {
  int lastValue = digitalRead(PIN_SENSORS_IN);
  int currentValue;
  int numSwitches = 0;
  
  while(numSwitches < switches) {
    currentValue = digitalRead(PIN_SENSORS_IN);
    delayMicroseconds(50);

    if(currentValue != lastValue) {
      lastValue = currentValue;
      numSwitches++;
    }    
  }
}

void flipCards(int numCards) {
  digitalWrite(PIN_IR_ROTARY, HIGH);
  digitalWrite(PIN_MOTOR, LOW);
  
  for(int i = 0; i < numCards; i++)
    waitForSwitches(2);
    
  digitalWrite(PIN_MOTOR, HIGH);
  digitalWrite(PIN_IR_ROTARY, LOW);
}

void spinToOrigin() {
  digitalWrite(PIN_IR_ORIGIN, HIGH);
  digitalWrite(PIN_MOTOR, LOW);

  while(digitalRead(PIN_SENSORS_IN));  // skip first high value
  while(!digitalRead(PIN_SENSORS_IN)); // wait for home  
  while(digitalRead(PIN_SENSORS_IN));  // wait for end of home
  flipCards(ORIGIN_OFFSET);            // flip some additional cards, if needed
  
  digitalWrite(PIN_MOTOR, HIGH);
  digitalWrite(PIN_IR_ORIGIN, LOW);
}

void setup() {
  pinMode(PIN_SENSORS_IN, INPUT);
  pinMode(PIN_SR_LATCH,   OUTPUT);
  pinMode(PIN_SR_CP,      OUTPUT);
  pinMode(PIN_SR_DATA,    OUTPUT);
  pinMode(PIN_MOTOR,      OUTPUT);
  pinMode(PIN_IR_ORIGIN,  OUTPUT);
  pinMode(PIN_IR_ROTARY,  OUTPUT);
  
  digitalWrite(PIN_IR_ORIGIN, LOW);
  digitalWrite(PIN_IR_ROTARY, LOW);
  
  Serial.begin(9600);

  spinToOrigin();
}

void loop() {
  if (Serial.available() > 0) {
    int numCards = Serial.parseInt();
    if(numCards > 0)
      flipCards(numCards);
    else
      spinToOrigin();
  }
}


