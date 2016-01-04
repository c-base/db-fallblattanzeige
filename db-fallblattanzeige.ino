// DB-Fallblattanzeige 
// 05.01.2016
//
// Authors: uk, coon

const int PIN_MOTOR = 2;
const int PIN_SENSORS = 3;

void spinToOrigin() {
  digitalWrite(PIN_MOTOR, LOW);

  // skip first high value
  while(digitalRead(PIN_SENSORS));

  int startValue = digitalRead(PIN_SENSORS);
  int numEqual = 0;
  
  while(numEqual < 1000) {   
    if(HIGH == digitalRead(PIN_SENSORS))
      numEqual++;
    else
      numEqual = 0;

    delayMicroseconds(100);
  }
  while(digitalRead(PIN_SENSORS));
  digitalWrite(PIN_MOTOR, HIGH);
}

void waitForSwitches(int switches) {
  int lastValue = digitalRead(PIN_SENSORS);
  int currentValue;
  int numSwitches = 0;
  
  while(numSwitches < switches) {
    currentValue = digitalRead(PIN_SENSORS);
    delayMicroseconds(50);

    if(currentValue != lastValue) {
      lastValue = currentValue;
      numSwitches++;
    }    
  }
}

void flipCards(int numCards) {
  digitalWrite(PIN_MOTOR, LOW);
  
  for(int i = 0; i < numCards; i++)
    waitForSwitches(2);
    
  digitalWrite(PIN_MOTOR, HIGH);
}

void setup() {
  pinMode(PIN_MOTOR, OUTPUT);
  pinMode(PIN_SENSORS, INPUT);
  Serial.begin(9600);

  spinToOrigin();
  delay(1000); // wait for a second (this is not needed, but nice for debugging)
  flipCards(3);
}

// the loop function runs over and over again forever
void loop() {
 
}
