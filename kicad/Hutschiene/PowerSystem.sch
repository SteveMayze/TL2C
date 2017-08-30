EESchema Schematic File Version 2
LIBS:tl2c-symbols
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
LIBS:tl2c-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title "TL2C - Timed LED Lighting Controller"
Date "2017-07-16"
Rev "2L.2"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R202
U 1 1 584DB059
P 3200 4250
F 0 "R202" V 3280 4250 50  0000 C CNN
F 1 "0Ω" V 3200 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3130 4250 50  0001 C CNN
F 3 "" H 3200 4250 50  0000 C CNN
	1    3200 4250
	0    1    1    0   
$EndComp
Text Label 2300 3950 0    60   ~ 0
U+
$Comp
L GND #PWR019
U 1 1 584DB061
P 3900 4850
F 0 "#PWR019" H 3900 4600 50  0001 C CNN
F 1 "GND" H 3900 4700 50  0000 C CNN
F 2 "" H 3900 4850 50  0000 C CNN
F 3 "" H 3900 4850 50  0000 C CNN
	1    3900 4850
	1    0    0    -1  
$EndComp
$Comp
L C C202
U 1 1 584DB067
P 2600 4450
F 0 "C202" H 2625 4550 50  0000 L CNN
F 1 "1μF 25V" H 2625 4350 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 2638 4300 50  0001 C CNN
F 3 "" H 2600 4450 50  0000 C CNN
F 4 "Value" H 2600 4450 60  0001 C CNN "MFP"
F 5 "Value" H 2600 4450 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 2600 4450 60  0001 C CNN "Digikey-PN"
	1    2600 4450
	1    0    0    -1  
$EndComp
$Comp
L C C204
U 1 1 584DB06E
P 4650 4450
F 0 "C204" H 4675 4550 50  0000 L CNN
F 1 "2.2μF 16V" H 4675 4350 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4688 4300 50  0001 C CNN
F 3 "" H 4650 4450 50  0000 C CNN
F 4 "Value" H 4650 4450 60  0001 C CNN "MFP"
F 5 "Value" H 4650 4450 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 4650 4450 60  0001 C CNN "Digikey-PN"
	1    4650 4450
	1    0    0    -1  
$EndComp
$Comp
L LED D202
U 1 1 584DB076
P 5250 4900
F 0 "D202" H 5250 5000 50  0000 C CNN
F 1 "3V3DC" H 5250 4800 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5250 4900 50  0001 C CNN
F 3 "" H 5250 4900 50  0000 C CNN
	1    5250 4900
	0    -1   -1   0   
$EndComp
$Comp
L R R204
U 1 1 584DB07D
P 5250 4400
F 0 "R204" V 5330 4400 50  0000 C CNN
F 1 "660Ω" V 5250 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5180 4400 50  0001 C CNN
F 3 "" H 5250 4400 50  0000 C CNN
	1    5250 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 584DB084
P 5250 5300
F 0 "#PWR020" H 5250 5050 50  0001 C CNN
F 1 "GND" H 5250 5150 50  0000 C CNN
F 2 "" H 5250 5300 50  0000 C CNN
F 3 "" H 5250 5300 50  0000 C CNN
	1    5250 5300
	1    0    0    -1  
$EndComp
$Comp
L TPS70933 U202
U 1 1 584DB0C1
P 3900 4100
F 0 "U202" H 4150 3750 60  0000 C CNN
F 1 "TPS70933" H 3900 4100 60  0000 C CNN
F 2 "tl2c-footprint:TPS70933DBVR" H 3750 4100 60  0001 C CNN
F 3 "" H 3750 4100 60  0000 C CNN
F 4 "TPS70933DBVR" H 3900 4100 60  0001 C CNN "MFP"
F 5 "1261694 - 62" H 3900 4100 60  0001 C CNN "Conrad-PN"
F 6 "296-35483-1-ND" H 3900 4100 60  0001 C CNN "Digikey-PN"
	1    3900 4100
	1    0    0    -1  
$EndComp
$Comp
L LF120ABDT-TR U201
U 1 1 584DB84E
P 3900 1550
F 0 "U201" H 4150 1200 60  0000 C CNN
F 1 "LF120ABDT-TR" H 3900 1550 60  0000 C CNN
F 2 "tl2c-footprint:LF120ABDT-TR" H 3750 1550 60  0001 C CNN
F 3 "" H 3750 1550 60  0000 C CNN
F 4 "LF120ABDT-TR" H 3900 1550 60  0001 C CNN "MFP"
F 5 "1185937 - 62" H 3900 1550 60  0001 C CNN "Conrad-PN"
F 6 "497-8330-1-ND" H 3900 1550 60  0001 C CNN "Digikey-PN"
	1    3900 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4250 3350 4250
Wire Wire Line
	2300 3950 3350 3950
Wire Wire Line
	3050 4250 2950 4250
Wire Wire Line
	2950 4250 2950 3950
Connection ~ 2950 3950
Wire Wire Line
	3900 4600 3900 4850
Wire Wire Line
	2600 3950 2600 4300
Connection ~ 2600 3950
Wire Wire Line
	4650 3950 4650 4300
Connection ~ 4650 3950
Wire Wire Line
	4650 4600 4650 4700
Wire Wire Line
	4650 4700 3900 4700
Connection ~ 3900 4700
Wire Wire Line
	2600 4600 2600 4800
Wire Wire Line
	2600 4800 3900 4800
Connection ~ 3900 4800
Wire Wire Line
	5250 3950 5250 4250
Connection ~ 5250 3950
Wire Wire Line
	5250 5100 5250 5300
Text HLabel 6100 3850 0    60   Input ~ 0
UbOut
Wire Wire Line
	4450 1400 5550 1400
Wire Wire Line
	2800 1400 3350 1400
$Comp
L C C201
U 1 1 584DCFF9
P 3050 1850
F 0 "C201" H 3075 1950 50  0000 L CNN
F 1 "0.1μF 50V" H 3075 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3088 1700 50  0001 C CNN
F 3 "" H 3050 1850 50  0000 C CNN
	1    3050 1850
	1    0    0    -1  
$EndComp
$Comp
L C C203
U 1 1 584DD0BF
P 4600 1850
F 0 "C203" H 4625 1950 50  0000 L CNN
F 1 "2.2μF 50V" H 4625 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4638 1700 50  0001 C CNN
F 3 "" H 4600 1850 50  0000 C CNN
F 4 "CL32B225KBJNNNE" H 4600 1850 60  0001 C CNN "MFP"
F 5 "450955 - 62" H 4600 1850 60  0001 C CNN "Conrad-PN"
F 6 "N/A" H 4600 1850 60  0001 C CNN "Digikey-PN"
	1    4600 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 584DD17A
P 3900 2650
F 0 "#PWR021" H 3900 2400 50  0001 C CNN
F 1 "GND" H 3900 2500 50  0000 C CNN
F 2 "" H 3900 2650 50  0000 C CNN
F 3 "" H 3900 2650 50  0000 C CNN
	1    3900 2650
	1    0    0    -1  
$EndComp
Text HLabel 5550 1400 2    60   Input ~ 0
U+Out
Text HLabel 2800 1400 0    60   Input ~ 0
U+In
Wire Wire Line
	3900 2050 3900 2650
Wire Wire Line
	3050 1400 3050 1700
Connection ~ 3050 1400
Wire Wire Line
	3050 2000 3050 2400
Wire Wire Line
	3050 2400 3900 2400
Connection ~ 3900 2400
Wire Wire Line
	4600 2000 4600 2500
Wire Wire Line
	4600 2500 3900 2500
Connection ~ 3900 2500
Wire Wire Line
	4600 1700 4600 1400
Connection ~ 4600 1400
Text Label 5400 1400 0    60   ~ 0
U+
Wire Wire Line
	5250 4550 5250 4700
Text HLabel 6075 3400 0    60   Input ~ 0
5V
Text Notes 5765 4440 0    60   ~ 0
Double check the output of the 3.3V\nand watch out for the voltage drop \non the Schottky.
$Comp
L CONN_01X03 P201
U 1 1 58DCB84B
P 6475 3850
F 0 "P201" H 6475 4050 50  0000 C CNN
F 1 "Mode_Bridge" V 6575 3850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6475 3850 50  0001 C CNN
F 3 "" H 6475 3850 50  0000 C CNN
	1    6475 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3850 6275 3850
Wire Wire Line
	4450 3950 6275 3950
Wire Wire Line
	6075 3400 6150 3400
Wire Wire Line
	6275 3750 6150 3750
Wire Wire Line
	6150 3750 6150 3400
$EndSCHEMATC
