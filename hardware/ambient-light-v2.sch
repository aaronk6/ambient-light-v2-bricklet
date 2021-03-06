EESchema Schematic File Version 2
LIBS:tinkerforge
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
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Ambient Light Bricklet"
Date "Do 02 Apr 2015"
Rev "2.0"
Comp "Tinkerforge GmbH"
Comment1 "Licensed under CERN OHL v.1.1"
Comment2 "Copyright (©) 2015, B.Nordmeyer <bastian@tinkerforge.com>"
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 600  7650 0    40   ~ 0
Copyright Tinkerforge GmbH 2015.\nThis documentation describes Open Hardware and is licensed under the\nCERN OHL v. 1.1.\nYou may redistribute and modify this documentation under the terms of the\nCERN OHL v.1.1. (http://ohwr.org/cernohl). This documentation is distributed\nWITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF\nMERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A\nPARTICULAR PURPOSE. Please see the CERN OHL v.1.1 for applicable\nconditions\n
NoConn ~ 4000 3100
Wire Wire Line
	4150 3050 4150 3300
Wire Wire Line
	4150 3300 4000 3300
Wire Wire Line
	5150 4650 5150 4550
Wire Wire Line
	5150 4850 5600 4850
Wire Wire Line
	4000 3500 4350 3500
Connection ~ 4250 4950
Wire Wire Line
	4250 4750 4350 4750
Wire Wire Line
	4350 4850 4150 4850
Wire Wire Line
	4150 4850 4150 3600
Wire Wire Line
	4150 3600 4000 3600
Wire Wire Line
	3550 4250 3550 4150
Wire Wire Line
	4250 4950 4350 4950
Wire Wire Line
	4250 5050 4250 4650
Wire Wire Line
	4250 4650 4350 4650
Connection ~ 4250 4750
Wire Wire Line
	4000 3400 4350 3400
Wire Wire Line
	5150 4950 5600 4950
Wire Wire Line
	5600 4550 5600 4650
Wire Wire Line
	5150 4550 5200 4550
Connection ~ 5150 4550
Wire Wire Line
	4000 3200 4250 3200
NoConn ~ 5150 4750
$Comp
L GND #PWR01
U 1 1 4CE147DC
P 5600 4650
F 0 "#PWR01" H 5600 4650 30  0001 C CNN
F 1 "GND" H 5600 4580 30  0001 C CNN
F 2 "" H 5600 4650 60  0001 C CNN
F 3 "" H 5600 4650 60  0001 C CNN
	1    5600 4650
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 4CE147C5
P 5400 4550
F 0 "C1" V 5200 4550 50  0000 L CNN
F 1 "100nF" V 5550 4550 50  0000 L CNN
F 2 "kicad-libraries:C0603" H 5400 4550 60  0001 C CNN
F 3 "" H 5400 4550 60  0001 C CNN
	1    5400 4550
	0    1    1    0   
$EndComp
$Comp
L DRILL U4
U 1 1 4C692B9B
P 10600 6350
F 0 "U4" H 10650 6400 60  0001 C CNN
F 1 "DRILL" H 10600 6350 60  0000 C CNN
F 2 "kicad-libraries:DRILL_NP" H 10600 6350 60  0001 C CNN
F 3 "" H 10600 6350 60  0001 C CNN
	1    10600 6350
	1    0    0    -1  
$EndComp
$Comp
L DRILL U3
U 1 1 4C692B9A
P 10600 6150
F 0 "U3" H 10650 6200 60  0001 C CNN
F 1 "DRILL" H 10600 6150 60  0000 C CNN
F 2 "kicad-libraries:DRILL_NP" H 10600 6150 60  0001 C CNN
F 3 "" H 10600 6150 60  0001 C CNN
	1    10600 6150
	1    0    0    -1  
$EndComp
$Comp
L DRILL U5
U 1 1 4C692B98
P 10900 6150
F 0 "U5" H 10950 6200 60  0001 C CNN
F 1 "DRILL" H 10900 6150 60  0000 C CNN
F 2 "kicad-libraries:DRILL_NP" H 10900 6150 60  0001 C CNN
F 3 "" H 10900 6150 60  0001 C CNN
	1    10900 6150
	1    0    0    -1  
$EndComp
$Comp
L DRILL U6
U 1 1 4C692B94
P 10900 6350
F 0 "U6" H 10950 6400 60  0001 C CNN
F 1 "DRILL" H 10900 6350 60  0000 C CNN
F 2 "kicad-libraries:DRILL_NP" H 10900 6350 60  0001 C CNN
F 3 "" H 10900 6350 60  0001 C CNN
	1    10900 6350
	1    0    0    -1  
$EndComp
Text GLabel 5600 4950 2    60   Input ~ 0
SDA
Text GLabel 5600 4850 2    60   Input ~ 0
SCL
Text GLabel 4350 3500 2    60   Output ~ 0
SDA
Text GLabel 4350 3400 2    60   Output ~ 0
SCL
$Comp
L VCC #PWR02
U 1 1 4C5FD35E
P 5150 4550
F 0 "#PWR02" H 5150 4650 30  0001 C CNN
F 1 "VCC" H 5150 4650 30  0000 C CNN
F 2 "" H 5150 4550 60  0001 C CNN
F 3 "" H 5150 4550 60  0001 C CNN
	1    5150 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 4C5FD34E
P 4250 5050
F 0 "#PWR03" H 4250 5050 30  0001 C CNN
F 1 "GND" H 4250 4980 30  0001 C CNN
F 2 "" H 4250 5050 60  0001 C CNN
F 3 "" H 4250 5050 60  0001 C CNN
	1    4250 5050
	1    0    0    -1  
$EndComp
$Comp
L CAT24C U1
U 1 1 4C5FD337
P 4750 5050
F 0 "U1" H 4600 5550 60  0000 C CNN
F 1 "M24C64" H 4750 5050 60  0000 C CNN
F 2 "kicad-libraries:SOIC8" H 4750 5050 60  0001 C CNN
F 3 "" H 4750 5050 60  0001 C CNN
	1    4750 5050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 4C5FCFB4
P 4150 3050
F 0 "#PWR04" H 4150 3150 30  0001 C CNN
F 1 "VCC" H 4150 3150 30  0000 C CNN
F 2 "" H 4150 3050 60  0001 C CNN
F 3 "" H 4150 3050 60  0001 C CNN
	1    4150 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 4C5FCF5E
P 4250 3300
F 0 "#PWR05" H 4250 3300 30  0001 C CNN
F 1 "GND" H 4250 3230 30  0001 C CNN
F 2 "" H 4250 3300 60  0001 C CNN
F 3 "" H 4250 3300 60  0001 C CNN
	1    4250 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 4C5FCF4F
P 3550 4250
F 0 "#PWR06" H 3550 4250 30  0001 C CNN
F 1 "GND" H 3550 4180 30  0001 C CNN
F 2 "" H 3550 4250 60  0001 C CNN
F 3 "" H 3550 4250 60  0001 C CNN
	1    3550 4250
	1    0    0    -1  
$EndComp
$Comp
L CON-SENSOR P1
U 1 1 4C5FCF27
P 3550 3550
F 0 "P1" H 3300 4100 60  0000 C CNN
F 1 "CON-SENSOR" V 3700 3550 60  0000 C CNN
F 2 "kicad-libraries:CON-SENSOR" H 3550 3550 60  0001 C CNN
F 3 "" H 3550 3550 60  0001 C CNN
	1    3550 3550
	-1   0    0    -1  
$EndComp
$Comp
L LTR-329ALS U2
U 1 1 551D4B1A
P 6250 3350
F 0 "U2" H 6350 3650 60  0000 C CNN
F 1 "LTR-329ALS" H 6550 3050 60  0000 C CNN
F 2 "kicad-libraries:LTR-329ALS" H 6250 3350 60  0001 C CNN
F 3 "" H 6250 3350 60  0000 C CNN
	1    6250 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 551D44C3
P 6250 3750
F 0 "#PWR07" H 6250 3750 30  0001 C CNN
F 1 "GND" H 6250 3680 30  0001 C CNN
F 2 "" H 6250 3750 60  0001 C CNN
F 3 "" H 6250 3750 60  0001 C CNN
	1    6250 3750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR08
U 1 1 551D44EA
P 6250 2900
F 0 "#PWR08" H 6250 3000 30  0001 C CNN
F 1 "VCC" H 6250 3000 30  0000 C CNN
F 2 "" H 6250 2900 60  0001 C CNN
F 3 "" H 6250 2900 60  0001 C CNN
	1    6250 2900
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 551D450D
P 6550 2900
F 0 "C2" V 6350 2900 50  0000 L CNN
F 1 "100nF" V 6700 2800 50  0000 L CNN
F 2 "kicad-libraries:C0603" H 6550 2900 60  0001 C CNN
F 3 "" H 6550 2900 60  0001 C CNN
	1    6550 2900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR09
U 1 1 551D45A6
P 6750 3000
F 0 "#PWR09" H 6750 3000 30  0001 C CNN
F 1 "GND" H 6750 2930 30  0001 C CNN
F 2 "" H 6750 3000 60  0001 C CNN
F 3 "" H 6750 3000 60  0001 C CNN
	1    6750 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2900 6350 2900
Wire Wire Line
	6250 2900 6250 3000
Wire Wire Line
	6750 2900 6750 3000
Wire Wire Line
	6250 3750 6250 3700
Connection ~ 6250 2900
Wire Wire Line
	5900 3300 5250 3300
Wire Wire Line
	5250 3300 5250 3700
Wire Wire Line
	5250 3700 4000 3700
Wire Wire Line
	4000 3800 5350 3800
Wire Wire Line
	5350 3800 5350 3400
Wire Wire Line
	5350 3400 5900 3400
$Comp
L R R1
U 1 1 551D46F1
P 5500 2900
F 0 "R1" V 5580 2900 50  0000 C CNN
F 1 "2k2" V 5500 2900 50  0000 C CNN
F 2 "kicad-libraries:R0603" H 5500 2900 60  0001 C CNN
F 3 "" H 5500 2900 60  0000 C CNN
	1    5500 2900
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 551D4770
P 5700 2900
F 0 "R2" V 5780 2900 50  0000 C CNN
F 1 "2k2" V 5700 2900 50  0000 C CNN
F 2 "kicad-libraries:R0603" H 5700 2900 60  0001 C CNN
F 3 "" H 5700 2900 60  0000 C CNN
	1    5700 2900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR010
U 1 1 551D479C
P 5500 2600
F 0 "#PWR010" H 5500 2700 30  0001 C CNN
F 1 "VCC" H 5500 2700 30  0000 C CNN
F 2 "" H 5500 2600 60  0001 C CNN
F 3 "" H 5500 2600 60  0001 C CNN
	1    5500 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2600 5500 2650
$Comp
L VCC #PWR011
U 1 1 551D47DF
P 5700 2600
F 0 "#PWR011" H 5700 2700 30  0001 C CNN
F 1 "VCC" H 5700 2700 30  0000 C CNN
F 2 "" H 5700 2600 60  0001 C CNN
F 3 "" H 5700 2600 60  0001 C CNN
	1    5700 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2600 5700 2650
Wire Wire Line
	5500 3150 5500 3300
Connection ~ 5500 3300
Wire Wire Line
	5700 3150 5700 3400
Connection ~ 5700 3400
Wire Wire Line
	4250 3200 4250 3300
NoConn ~ 4000 3900
NoConn ~ 4000 4000
$EndSCHEMATC
