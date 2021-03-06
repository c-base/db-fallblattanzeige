EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ok-ic-com
LIBS:power_sources
LIBS:additional-logic
LIBS:additional-opto
LIBS:additional_connectors
LIBS:db-fallblattanzeige-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Fallblatt-Fahrzielanzeige / Device Controller"
Date "2016-01-25"
Rev "1"
Comp "c-base e.V."
Comment1 "coon"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA328-P IC1
U 1 1 56A67206
P 3800 4200
F 0 "IC1" H 3050 5450 50  0000 L BNN
F 1 "ATMEGA328-P" H 4200 2800 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm" H 3800 4200 50  0001 C CIN
F 3 "http://www.atmel.com/images/atmel-8271-8-bit-avr-microcontroller-atmega48a-48pa-88a-88pa-168a-168pa-328-328p_datasheet_complete.pdf" H 3800 4200 50  0001 C CNN
	1    3800 4200
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 56A672DC
P 1150 4800
F 0 "D1" H 1150 4900 50  0000 C CNN
F 1 "Power LED (Green)" H 1150 4661 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 1150 4800 50  0001 C CNN
F 3 "" H 1150 4800 50  0000 C CNN
	1    1150 4800
	0    -1   -1   0   
$EndComp
$Comp
L MAX485 IC2
U 1 1 56A674FC
P 8700 5450
F 0 "IC2" H 8700 5800 60  0000 C CNN
F 1 "MAX485" H 8700 5100 60  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 8700 5450 60  0001 C CNN
F 3 "" H 8700 5450 60  0000 C CNN
	1    8700 5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 56A6A12F
P 1150 5350
F 0 "#PWR01" H 1150 5100 50  0001 C CNN
F 1 "GND" H 1150 5200 50  0000 C CNN
F 2 "" H 1150 5350 50  0000 C CNN
F 3 "" H 1150 5350 50  0000 C CNN
	1    1150 5350
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 56A6A275
P 1150 4000
F 0 "R1" V 1230 4000 50  0000 C CNN
F 1 "150" V 1150 4000 50  0000 C CNN
F 2 "Resistors_Universal:Resistor_SMD+THTuniversal_0805to1206_RM10_HandSoldering" V 1080 4000 50  0001 C CNN
F 3 "" H 1150 4000 50  0000 C CNN
	1    1150 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 56A7B4AD
P 8300 3600
F 0 "#PWR02" H 8300 3350 50  0001 C CNN
F 1 "GND" H 8300 3450 50  0000 C CNN
F 2 "" H 8300 3600 50  0000 C CNN
F 3 "" H 8300 3600 50  0000 C CNN
	1    8300 3600
	1    0    0    -1  
$EndComp
$Comp
L +5VA #PWR03
U 1 1 56A7B653
P 7000 1950
F 0 "#PWR03" H 7000 1800 50  0001 C CNN
F 1 "+5VA" H 7000 2090 50  0000 C CNN
F 2 "" H 7000 1950 50  0000 C CNN
F 3 "" H 7000 1950 50  0000 C CNN
	1    7000 1950
	1    0    0    -1  
$EndComp
$Comp
L +5VD #PWR04
U 1 1 56A7B691
P 7550 1950
F 0 "#PWR04" H 7550 1800 50  0001 C CNN
F 1 "+5VD" H 7550 2090 50  0000 C CNN
F 2 "" H 7550 1950 50  0000 C CNN
F 3 "" H 7550 1950 50  0000 C CNN
	1    7550 1950
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 56A7B6E4
P 8100 1950
F 0 "#PWR05" H 8100 1800 50  0001 C CNN
F 1 "VCC" H 8100 2100 50  0000 C CNN
F 2 "" H 8100 1950 50  0000 C CNN
F 3 "" H 8100 1950 50  0000 C CNN
	1    8100 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 56A7BAB2
P 2650 5650
F 0 "#PWR06" H 2650 5400 50  0001 C CNN
F 1 "GND" H 2650 5500 50  0000 C CNN
F 2 "" H 2650 5650 50  0000 C CNN
F 3 "" H 2650 5650 50  0000 C CNN
	1    2650 5650
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 56A7CAE9
P 7400 3950
F 0 "C3" H 7425 4050 50  0000 L CNN
F 1 "100nF" H 7425 3850 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 7438 3800 50  0001 C CNN
F 3 "" H 7400 3950 50  0000 C CNN
	1    7400 3950
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 56A7CC6B
P 7100 3850
F 0 "#PWR07" H 7100 3700 50  0001 C CNN
F 1 "VCC" H 7100 4000 50  0000 C CNN
F 2 "" H 7100 3850 50  0000 C CNN
F 3 "" H 7100 3850 50  0000 C CNN
	1    7100 3850
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 56A7CC95
P 7100 4150
F 0 "R3" V 7180 4150 50  0000 C CNN
F 1 "10K" V 7100 4150 50  0000 C CNN
F 2 "Resistors_Universal:Resistor_SMD+THTuniversal_0805to1206_RM10_HandSoldering" V 7030 4150 50  0001 C CNN
F 3 "" H 7100 4150 50  0000 C CNN
	1    7100 4150
	1    0    0    -1  
$EndComp
Text Label 5150 4450 0    60   ~ 0
SCL
Text Label 5150 4350 0    60   ~ 0
SDA
Text Label 4650 2050 3    60   ~ 0
SDA
Text Label 4550 2050 3    60   ~ 0
SCL
Text Label 5200 2700 0    60   ~ 0
Motor
$Comp
L GND #PWR08
U 1 1 56A7D807
P 4450 2450
F 0 "#PWR08" H 4450 2200 50  0001 C CNN
F 1 "GND" H 4450 2300 50  0000 C CNN
F 2 "" H 4450 2450 50  0000 C CNN
F 3 "" H 4450 2450 50  0000 C CNN
	1    4450 2450
	1    0    0    -1  
$EndComp
Text Label 4350 2050 3    60   ~ 0
PWR_IR2
Text Label 4250 2050 3    60   ~ 0
PWR_IR1
$Comp
L Crystal Y1
U 1 1 56A7E0C8
P 5600 3750
F 0 "Y1" H 5600 3900 50  0000 C CNN
F 1 "Crystal" H 5600 3600 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 5600 3750 50  0001 C CNN
F 3 "" H 5600 3750 50  0000 C CNN
	1    5600 3750
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 56A7E68C
P 6100 3500
F 0 "C1" H 6125 3600 50  0000 L CNN
F 1 "22pF" H 6125 3400 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 6138 3350 50  0001 C CNN
F 3 "" H 6100 3500 50  0000 C CNN
	1    6100 3500
	0    -1   -1   0   
$EndComp
$Comp
L C C2
U 1 1 56A7E7E9
P 6100 4000
F 0 "C2" H 6125 4100 50  0000 L CNN
F 1 "22pF" H 6125 3900 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 6138 3850 50  0001 C CNN
F 3 "" H 6100 4000 50  0000 C CNN
	1    6100 4000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR09
U 1 1 56A7E97C
P 6550 4200
F 0 "#PWR09" H 6550 3950 50  0001 C CNN
F 1 "GND" H 6550 4050 50  0000 C CNN
F 2 "" H 6550 4200 50  0000 C CNN
F 3 "" H 6550 4200 50  0000 C CNN
	1    6550 4200
	1    0    0    -1  
$EndComp
$Comp
L +5VD #PWR010
U 1 1 56A7EBD6
P 4450 950
F 0 "#PWR010" H 4450 800 50  0001 C CNN
F 1 "+5VD" H 4450 1090 50  0000 C CNN
F 2 "" H 4450 950 50  0000 C CNN
F 3 "" H 4450 950 50  0000 C CNN
	1    4450 950 
	1    0    0    -1  
$EndComp
Text Label 5050 4250 0    60   ~ 0
PWR_IR1
Text Label 5050 4150 0    60   ~ 0
PWR_IR2
Text Label 4150 1100 1    60   ~ 0
IR_IN
Text Label 5250 5200 0    60   ~ 0
IR_IN
Text Label 5350 3100 0    60   ~ 0
SR_DATA
Text Label 5250 5300 0    60   ~ 0
~SR_LATCH
Text Label 5250 5400 0    60   ~ 0
SR_CP
Text Label 4850 1150 1    60   ~ 0
SR_DATA
Text Label 4850 1900 3    60   ~ 0
~SR_LATCH
Text Label 4750 1150 1    60   ~ 0
SR_CP
$Comp
L GND #PWR011
U 1 1 56BE821A
P 9150 5850
F 0 "#PWR011" H 9150 5600 50  0001 C CNN
F 1 "GND" H 9150 5700 50  0000 C CNN
F 2 "" H 9150 5850 50  0000 C CNN
F 3 "" H 9150 5850 50  0000 C CNN
	1    9150 5850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR012
U 1 1 56BE82AB
P 9150 5050
F 0 "#PWR012" H 9150 4900 50  0001 C CNN
F 1 "VCC" H 9150 5200 50  0000 C CNN
F 2 "" H 9150 5050 50  0000 C CNN
F 3 "" H 9150 5050 50  0000 C CNN
	1    9150 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 56BE833E
P 7050 6150
F 0 "#PWR013" H 7050 5900 50  0001 C CNN
F 1 "GND" H 7050 6000 50  0000 C CNN
F 2 "" H 7050 6150 50  0000 C CNN
F 3 "" H 7050 6150 50  0000 C CNN
	1    7050 6150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR014
U 1 1 56BE83D3
P 7050 5150
F 0 "#PWR014" H 7050 5000 50  0001 C CNN
F 1 "VCC" H 7050 5300 50  0000 C CNN
F 2 "" H 7050 5150 50  0000 C CNN
F 3 "" H 7050 5150 50  0000 C CNN
	1    7050 5150
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 56BF76F8
P 7050 5900
F 0 "R2" V 7130 5900 50  0000 C CNN
F 1 "4.7K" V 7050 5900 50  0000 C CNN
F 2 "Resistors_Universal:Resistor_SMD+THTuniversal_0805to1206_RM10_HandSoldering" V 6980 5900 50  0001 C CNN
F 3 "" H 7050 5900 50  0000 C CNN
	1    7050 5900
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 56BF7794
P 7350 5350
F 0 "R4" V 7430 5350 50  0000 C CNN
F 1 "4.7K" V 7350 5350 50  0000 C CNN
F 2 "Resistors_Universal:Resistor_SMD+THTuniversal_0805to1206_RM10_HandSoldering" V 7280 5350 50  0001 C CNN
F 3 "" H 7350 5350 50  0000 C CNN
	1    7350 5350
	0    1    1    0   
$EndComp
Text Label 9650 5900 0    60   ~ 0
BUS_PLUS
Text Label 9650 5000 0    60   ~ 0
BUS_MINUS
Text Label 3050 2250 0    60   ~ 0
BUS_MINUS
Text Label 3050 1000 0    60   ~ 0
BUS_PLUS
NoConn ~ 4800 3400
NoConn ~ 4800 3500
NoConn ~ 4800 3600
NoConn ~ 4800 3950
NoConn ~ 4800 4050
NoConn ~ 4800 5100
NoConn ~ 4800 3300
$Comp
L R R6
U 1 1 56BFC259
P 9650 5450
F 0 "R6" V 9730 5450 50  0000 C CNN
F 1 "120" V 9650 5450 50  0000 C CNN
F 2 "Resistors_Universal:Resistor_SMD+THTuniversal_0805to1206_RM10_HandSoldering" V 9580 5450 50  0001 C CNN
F 3 "" H 9650 5450 50  0000 C CNN
	1    9650 5450
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 56C0A3AC
P 8150 5000
F 0 "R5" V 8230 5000 50  0000 C CNN
F 1 "1K" V 8150 5000 50  0000 C CNN
F 2 "Resistors_Universal:Resistor_SMD+THTuniversal_0805to1206_RM10_HandSoldering" V 8080 5000 50  0001 C CNN
F 3 "" H 8150 5000 50  0000 C CNN
	1    8150 5000
	-1   0    0    1   
$EndComp
$Comp
L C 100nF2
U 1 1 56C0C772
P 2650 4400
F 0 "100nF2" H 2675 4500 50  0000 L CNN
F 1 "C" H 2675 4300 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 2688 4250 50  0001 C CNN
F 3 "" H 2650 4400 50  0000 C CNN
	1    2650 4400
	1    0    0    -1  
$EndComp
$Comp
L C 100nF3
U 1 1 56C0D654
P 9350 5450
F 0 "100nF3" H 9375 5550 50  0000 L CNN
F 1 "C" H 9375 5350 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 9388 5300 50  0001 C CNN
F 3 "" H 9350 5450 50  0000 C CNN
	1    9350 5450
	1    0    0    -1  
$EndComp
NoConn ~ 8300 4500
$Comp
L FTDI_header P2
U 1 1 56CB7691
P 8850 3250
F 0 "P2" H 8850 3600 50  0000 C CNN
F 1 "FTDI_header" V 8950 3250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 8850 3250 50  0001 C CNN
F 3 "" H 8850 3250 50  0000 C CNN
	1    8850 3250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR015
U 1 1 56CB8A88
P 1150 3450
F 0 "#PWR015" H 1150 3300 50  0001 C CNN
F 1 "VCC" H 1150 3600 50  0000 C CNN
F 2 "" H 1150 3450 50  0000 C CNN
F 3 "" H 1150 3450 50  0000 C CNN
	1    1150 3450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR016
U 1 1 56CB8E2E
P 2650 2900
F 0 "#PWR016" H 2650 2750 50  0001 C CNN
F 1 "VCC" H 2650 3050 50  0000 C CNN
F 2 "" H 2650 2900 50  0000 C CNN
F 3 "" H 2650 2900 50  0000 C CNN
	1    2650 2900
	1    0    0    -1  
$EndComp
$Comp
L PWR_SEL JP2
U 1 1 56CBA465
P 7550 2600
F 0 "JP2" H 7500 2750 50  0000 L CNN
F 1 "Power Select" H 7550 2400 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 7550 2600 50  0001 C CNN
F 3 "" H 7550 2600 50  0000 C CNN
	1    7550 2600
	0    -1   -1   0   
$EndComp
$Comp
L C 100nF1
U 1 1 56CBB6B6
P 2200 4400
F 0 "100nF1" H 2225 4500 50  0000 L CNN
F 1 "C" H 2225 4300 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 2238 4250 50  0001 C CNN
F 3 "" H 2200 4400 50  0000 C CNN
	1    2200 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 56CBB74B
P 2200 4950
F 0 "#PWR017" H 2200 4700 50  0001 C CNN
F 1 "GND" H 2200 4800 50  0000 C CNN
F 2 "" H 2200 4950 50  0000 C CNN
F 3 "" H 2200 4950 50  0000 C CNN
	1    2200 4950
	1    0    0    -1  
$EndComp
$Comp
L TX_SEL JP1
U 1 1 56CBDDE0
P 8300 4250
F 0 "JP1" H 8150 4000 50  0000 L CNN
F 1 "Debug Override" H 8250 4400 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 8300 4250 50  0001 C CNN
F 3 "" H 8300 4250 50  0000 C CNN
	1    8300 4250
	0    1    1    0   
$EndComp
$Comp
L ZiLOG_3562_FBM_V2.02 P1
U 1 1 56F1A4E4
P 4450 1550
F 0 "P1" H 4450 2050 50  0000 C CNN
F 1 "ZiLOG_3562_FBM_V2.02" V 4450 1550 50  0000 C CNN
F 2 "c-base-db:ZiLOG_3562_FBM_V2.02" H 4450 350 50  0001 C CNN
F 3 "" H 4450 350 50  0000 C CNN
	1    4450 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 4250 8200 4250
Wire Wire Line
	1150 4150 1150 4600
Wire Wire Line
	1150 3450 1150 3850
Wire Wire Line
	8300 3400 8300 3600
Wire Wire Line
	8300 3500 8650 3500
Wire Wire Line
	8650 3400 8300 3400
Connection ~ 8300 3500
Wire Wire Line
	7550 3300 7550 2850
Wire Wire Line
	7000 1950 7000 3300
Wire Wire Line
	7550 1950 7550 2350
Wire Wire Line
	2650 2900 2650 4250
Wire Wire Line
	2650 4550 2650 5650
Wire Wire Line
	2650 5400 2900 5400
Wire Wire Line
	8100 2600 8100 1950
Wire Wire Line
	8100 2600 7650 2600
Wire Wire Line
	8650 3200 8150 3200
Wire Wire Line
	8650 3100 7900 3100
Wire Wire Line
	7900 3100 7900 5650
Wire Wire Line
	7900 4800 4800 4800
Wire Wire Line
	8650 3000 7400 3000
Wire Wire Line
	7400 3000 7400 3800
Wire Wire Line
	7400 4550 7400 4100
Wire Wire Line
	7000 3300 8650 3300
Connection ~ 7550 3300
Wire Wire Line
	4800 4450 5150 4450
Wire Wire Line
	4800 4350 5150 4350
Wire Wire Line
	4650 1800 4650 2050
Wire Wire Line
	4550 1800 4550 2050
Wire Wire Line
	4800 3200 5200 3200
Wire Wire Line
	5200 3200 5200 2450
Wire Wire Line
	5200 2450 4750 2450
Wire Wire Line
	4450 1800 4450 2450
Wire Wire Line
	4350 1800 4350 2050
Wire Wire Line
	4250 1800 4250 2050
Wire Wire Line
	4150 2050 4150 1800
Wire Wire Line
	3050 2050 4150 2050
Wire Wire Line
	3050 2050 3050 2250
Wire Wire Line
	3050 1100 4050 1100
Wire Wire Line
	3050 1100 3050 1000
Wire Wire Line
	7100 4000 7100 3850
Wire Wire Line
	4800 4550 7400 4550
Wire Wire Line
	7100 4550 7100 4300
Connection ~ 7100 4550
Wire Wire Line
	6250 4000 6550 4000
Connection ~ 6550 4000
Wire Wire Line
	4800 4150 5050 4150
Wire Wire Line
	4800 4250 5050 4250
Wire Wire Line
	4800 5200 5250 5200
Wire Wire Line
	4050 1100 4050 1300
Wire Wire Line
	4750 2450 4750 1800
Wire Wire Line
	4800 3100 5350 3100
Wire Wire Line
	4800 5300 5250 5300
Wire Wire Line
	4800 5400 5250 5400
Wire Wire Line
	4850 1800 4850 1900
Wire Wire Line
	4850 1150 4850 1300
Wire Wire Line
	4750 1150 4750 1300
Wire Wire Line
	9050 5650 9350 5650
Wire Wire Line
	9150 5650 9150 5850
Wire Wire Line
	9050 5250 9350 5250
Wire Wire Line
	9150 5250 9150 5050
Wire Wire Line
	7050 5150 7050 5350
Wire Wire Line
	7050 5350 7200 5350
Wire Wire Line
	7500 5350 8350 5350
Wire Wire Line
	7050 6050 7050 6150
Wire Wire Line
	7050 5550 7050 5750
Wire Wire Line
	6750 5550 8350 5550
Wire Wire Line
	4800 4900 7650 4900
Wire Wire Line
	7650 4900 7650 5350
Connection ~ 7650 5350
Wire Wire Line
	4800 5000 6750 5000
Wire Wire Line
	6750 5000 6750 5550
Connection ~ 7050 5550
Wire Wire Line
	8150 5250 8350 5250
Wire Wire Line
	7900 5650 8350 5650
Connection ~ 7900 4800
Wire Wire Line
	8150 4250 8150 4850
Wire Wire Line
	9200 5500 9200 5750
Wire Wire Line
	9200 5750 9650 5750
Wire Wire Line
	9650 5600 9650 5900
Wire Wire Line
	9200 5400 9200 5150
Connection ~ 9650 5750
Wire Wire Line
	8150 5250 8150 5150
Connection ~ 8150 4700
Wire Wire Line
	8150 3200 8150 3950
Connection ~ 2650 5400
Wire Wire Line
	9200 5400 9050 5400
Wire Wire Line
	9050 5500 9200 5500
Wire Wire Line
	9650 5000 9650 5300
Wire Wire Line
	9350 5250 9350 5300
Connection ~ 9150 5250
Wire Wire Line
	9350 5650 9350 5600
Connection ~ 9150 5650
Wire Wire Line
	4150 1300 4150 1100
Wire Wire Line
	9200 5150 9650 5150
Connection ~ 9650 5150
Wire Wire Line
	1150 5000 1150 5350
Connection ~ 2650 3400
Connection ~ 2650 3100
Wire Wire Line
	2900 3400 2650 3400
Wire Wire Line
	2900 5300 2650 5300
Connection ~ 2650 5300
Wire Wire Line
	2900 3100 2650 3100
Wire Wire Line
	4450 950  4450 1300
Wire Wire Line
	2900 3700 2200 3700
Wire Wire Line
	2200 3700 2200 4250
Wire Wire Line
	2200 4550 2200 4950
Wire Wire Line
	5150 4000 5950 4000
Wire Wire Line
	4800 3700 5150 3700
Wire Wire Line
	6550 3500 6550 4200
Wire Wire Line
	5150 3700 5150 3500
Wire Wire Line
	5150 3500 5950 3500
Wire Wire Line
	5600 3500 5600 3600
Wire Wire Line
	4800 3800 5150 3800
Wire Wire Line
	5150 3800 5150 4000
Wire Wire Line
	5600 3900 5600 4000
Connection ~ 5600 4000
Wire Wire Line
	6550 3500 6250 3500
Connection ~ 5600 3500
Wire Wire Line
	8150 3950 8300 3950
Wire Wire Line
	8300 3950 8300 4000
Wire Wire Line
	4800 4700 8150 4700
$EndSCHEMATC
