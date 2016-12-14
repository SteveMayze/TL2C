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
Sheet 4 4
Title "TL2C - Timed LED Lighting Controller"
Date "2016-12-14"
Rev "2L.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Relay_JW1AFSN12F REL?
U 1 1 5852585A
P 6450 1950
AR Path="/5852585A" Ref="REL?"  Part="1" 
AR Path="/585253A2/5852585A" Ref="REL101"  Part="1" 
F 0 "REL101" H 6470 1810 60  0000 C CNN
F 1 "Relay_UG" H 6450 2100 60  0000 C CNN
F 2 "" H 6320 1940 60  0000 C CNN
F 3 "" H 6320 1940 60  0000 C CNN
F 4 "JW1AFSN-12-F" H 6450 1950 60  0001 C CNN "MFP"
	1    6450 1950
	1    0    0    -1  
$EndComp
$Comp
L Relay_JW1AFSN12F REL?
U 1 1 58525862
P 6450 3750
AR Path="/58525862" Ref="REL?"  Part="1" 
AR Path="/585253A2/58525862" Ref="REL102"  Part="1" 
F 0 "REL102" H 6470 3610 60  0000 C CNN
F 1 "Relay_EG" H 6450 3900 60  0000 C CNN
F 2 "" H 6320 3740 60  0000 C CNN
F 3 "" H 6320 3740 60  0000 C CNN
F 4 "JW1AFSN-12-F" H 6450 3750 60  0001 C CNN "MFP"
	1    6450 3750
	1    0    0    -1  
$EndComp
$Comp
L Relay_JW1AFSN12F REL?
U 1 1 5852586A
P 6450 5450
AR Path="/5852586A" Ref="REL?"  Part="1" 
AR Path="/585253A2/5852586A" Ref="REL103"  Part="1" 
F 0 "REL103" H 6470 5310 60  0000 C CNN
F 1 "Relay_OG" H 6450 5600 60  0000 C CNN
F 2 "" H 6320 5440 60  0000 C CNN
F 3 "" H 6320 5440 60  0000 C CNN
F 4 "JW1AFSN-12-F" H 6450 5450 60  0001 C CNN "MFP"
	1    6450 5450
	1    0    0    -1  
$EndComp
$Comp
L D D401
U 1 1 58525871
P 6425 2350
F 0 "D401" H 6425 2450 50  0000 C CNN
F 1 "D" H 6425 2250 50  0000 C CNN
F 2 "" H 6425 2350 50  0000 C CNN
F 3 "" H 6425 2350 50  0000 C CNN
	1    6425 2350
	-1   0    0    1   
$EndComp
$Comp
L D D402
U 1 1 58525878
P 6425 4100
F 0 "D402" H 6425 4200 50  0000 C CNN
F 1 "D" H 6425 4000 50  0000 C CNN
F 2 "" H 6425 4100 50  0000 C CNN
F 3 "" H 6425 4100 50  0000 C CNN
	1    6425 4100
	-1   0    0    1   
$EndComp
$Comp
L D D403
U 1 1 5852587F
P 6425 5800
F 0 "D403" H 6425 5900 50  0000 C CNN
F 1 "D" H 6425 5700 50  0000 C CNN
F 2 "" H 6425 5800 50  0000 C CNN
F 3 "" H 6425 5800 50  0000 C CNN
	1    6425 5800
	-1   0    0    1   
$EndComp
$Comp
L R R401
U 1 1 58525889
P 4750 2350
F 0 "R401" V 4830 2350 50  0000 C CNN
F 1 "10kΩ" V 4750 2350 50  0000 C CNN
F 2 "" V 4680 2350 50  0000 C CNN
F 3 "" H 4750 2350 50  0000 C CNN
	1    4750 2350
	0    1    1    0   
$EndComp
$Comp
L R R402
U 1 1 58525890
P 4750 4150
F 0 "R402" V 4830 4150 50  0000 C CNN
F 1 "10kΩ" V 4750 4150 50  0000 C CNN
F 2 "" V 4680 4150 50  0000 C CNN
F 3 "" H 4750 4150 50  0000 C CNN
	1    4750 4150
	0    1    1    0   
$EndComp
$Comp
L R R403
U 1 1 58525897
P 4750 5900
F 0 "R403" V 4830 5900 50  0000 C CNN
F 1 "10kΩ" V 4750 5900 50  0000 C CNN
F 2 "" V 4680 5900 50  0000 C CNN
F 3 "" H 4750 5900 50  0000 C CNN
	1    4750 5900
	0    1    1    0   
$EndComp
$Comp
L IRLML2502 Q401
U 1 1 5852589F
P 5400 2300
F 0 "Q401" H 5400 2151 40  0000 R CNN
F 1 "IRLML2502" H 5400 2450 40  0000 R CNN
F 2 "Micro3" H 5270 2402 29  0001 C CNN
F 3 "" H 5400 2300 60  0000 C CNN
F 4 "TPS70933DBVR" H 5400 2300 60  0001 C CNN "MFP"
	1    5400 2300
	1    0    0    -1  
$EndComp
$Comp
L IRLML2502 Q402
U 1 1 585258A7
P 5400 4100
F 0 "Q402" H 5400 3951 40  0000 R CNN
F 1 "IRLML2502" H 5400 4250 40  0000 R CNN
F 2 "Micro3" H 5270 4202 29  0001 C CNN
F 3 "" H 5400 4100 60  0000 C CNN
F 4 "TPS70933DBVR" H 5400 4100 60  0001 C CNN "MFP"
	1    5400 4100
	1    0    0    -1  
$EndComp
$Comp
L IRLML2502 Q403
U 1 1 585258AF
P 5400 5850
F 0 "Q403" H 5400 5701 40  0000 R CNN
F 1 "IRLML2502" H 5400 6000 40  0000 R CNN
F 2 "Micro3" H 5270 5952 29  0001 C CNN
F 3 "" H 5400 5850 60  0000 C CNN
F 4 "TPS70933DBVR" H 5400 5850 60  0001 C CNN "MFP"
	1    5400 5850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR404
U 1 1 585258B6
P 5500 2600
F 0 "#PWR404" H 5500 2350 50  0001 C CNN
F 1 "GND" H 5500 2450 50  0000 C CNN
F 2 "" H 5500 2600 50  0000 C CNN
F 3 "" H 5500 2600 50  0000 C CNN
	1    5500 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR405
U 1 1 585258BC
P 5500 4350
F 0 "#PWR405" H 5500 4100 50  0001 C CNN
F 1 "GND" H 5500 4200 50  0000 C CNN
F 2 "" H 5500 4350 50  0000 C CNN
F 3 "" H 5500 4350 50  0000 C CNN
	1    5500 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR406
U 1 1 585258C2
P 5500 6200
F 0 "#PWR406" H 5500 5950 50  0001 C CNN
F 1 "GND" H 5500 6050 50  0000 C CNN
F 2 "" H 5500 6200 50  0000 C CNN
F 3 "" H 5500 6200 50  0000 C CNN
	1    5500 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1550 7000 1950
Wire Wire Line
	7000 1950 7000 2350
Wire Wire Line
	7000 2350 7000 3750
Wire Wire Line
	7000 3750 7000 4100
Wire Wire Line
	7000 4100 7000 5450
Wire Wire Line
	7000 5450 7000 5800
Wire Wire Line
	7000 5800 6575 5800
Wire Wire Line
	7000 4100 6575 4100
Connection ~ 7000 4100
Wire Wire Line
	7000 2350 6575 2350
Connection ~ 7000 2350
Wire Wire Line
	6275 2350 5950 2350
Wire Wire Line
	6275 4100 5950 4100
Wire Wire Line
	6275 5800 5950 5800
Wire Wire Line
	5500 2500 5500 2600
Wire Wire Line
	4900 2350 5100 2350
Wire Wire Line
	5100 2350 5200 2350
Wire Wire Line
	4200 2350 4450 2350
Wire Wire Line
	4450 2350 4600 2350
Wire Wire Line
	4900 5900 5100 5900
Wire Wire Line
	5100 5900 5200 5900
Wire Wire Line
	4250 5900 4500 5900
Wire Wire Line
	4500 5900 4600 5900
Wire Wire Line
	4900 4150 5100 4150
Wire Wire Line
	5100 4150 5200 4150
Wire Wire Line
	4250 4150 4500 4150
Wire Wire Line
	4500 4150 4600 4150
Wire Wire Line
	7000 1950 6850 1950
Connection ~ 7000 1950
Wire Wire Line
	5950 2350 5950 1950
Wire Wire Line
	7000 3750 6850 3750
Connection ~ 7000 3750
Wire Wire Line
	5500 3750 5500 3900
Wire Wire Line
	5950 4100 5950 3750
Wire Wire Line
	7000 5450 6850 5450
Connection ~ 7000 5450
Wire Wire Line
	5500 5450 5500 5650
Wire Wire Line
	5950 5800 5950 5450
Wire Wire Line
	5500 6200 5500 6050
Wire Wire Line
	5500 4350 5500 4300
Wire Wire Line
	5100 2350 5100 2500
Connection ~ 5100 2350
$Comp
L GND #PWR401
U 1 1 585258F7
P 5100 3300
F 0 "#PWR401" H 5100 3050 50  0001 C CNN
F 1 "GND" H 5100 3150 50  0000 C CNN
F 2 "" H 5100 3300 50  0000 C CNN
F 3 "" H 5100 3300 50  0000 C CNN
	1    5100 3300
	1    0    0    -1  
$EndComp
Text Notes 3700 2700 0    60   ~ 0
TODO - Add a Pull-down\n
Text HLabel 4200 2350 0    60   Input ~ 0
Relay_UG
Text HLabel 4250 4150 0    60   Input ~ 0
Relay_EG
Text HLabel 4250 5900 0    60   Input ~ 0
Relay_OG
Text HLabel 6650 1550 0    60   Input ~ 0
U+
$Comp
L GND #PWR402
U 1 1 58526E1D
P 5100 5000
F 0 "#PWR402" H 5100 4750 50  0001 C CNN
F 1 "GND" H 5100 4850 50  0000 C CNN
F 2 "" H 5100 5000 50  0000 C CNN
F 3 "" H 5100 5000 50  0000 C CNN
	1    5100 5000
	1    0    0    -1  
$EndComp
$Comp
L R R407
U 1 1 5852702F
P 5750 1950
F 0 "R407" V 5830 1950 50  0000 C CNN
F 1 "10kΩ" V 5750 1950 50  0000 C CNN
F 2 "" V 5680 1950 50  0000 C CNN
F 3 "" H 5750 1950 50  0000 C CNN
	1    5750 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 1950 5950 1950
Wire Wire Line
	5950 1950 6050 1950
Connection ~ 5950 1950
$Comp
L R R408
U 1 1 585271D4
P 5750 3750
F 0 "R408" V 5830 3750 50  0000 C CNN
F 1 "10kΩ" V 5750 3750 50  0000 C CNN
F 2 "" V 5680 3750 50  0000 C CNN
F 3 "" H 5750 3750 50  0000 C CNN
	1    5750 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 3750 5600 3750
Wire Wire Line
	5900 3750 5950 3750
Wire Wire Line
	5950 3750 6050 3750
Connection ~ 5950 3750
$Comp
L R R409
U 1 1 58527308
P 5750 5450
F 0 "R409" V 5830 5450 50  0000 C CNN
F 1 "10kΩ" V 5750 5450 50  0000 C CNN
F 2 "" V 5680 5450 50  0000 C CNN
F 3 "" H 5750 5450 50  0000 C CNN
	1    5750 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 5450 5600 5450
Wire Wire Line
	5900 5450 5950 5450
Wire Wire Line
	5950 5450 6050 5450
Connection ~ 5950 5450
$Comp
L GND #PWR403
U 1 1 58527626
P 5100 6750
F 0 "#PWR403" H 5100 6500 50  0001 C CNN
F 1 "GND" H 5100 6600 50  0000 C CNN
F 2 "" H 5100 6750 50  0000 C CNN
F 3 "" H 5100 6750 50  0000 C CNN
	1    5100 6750
	1    0    0    -1  
$EndComp
$Comp
L LED D404
U 1 1 5852AA54
P 5100 2700
F 0 "D404" H 5100 2800 50  0000 C CNN
F 1 "LED_UG" H 5100 2600 50  0000 C CNN
F 2 "" H 5100 2700 50  0000 C CNN
F 3 "" H 5100 2700 50  0000 C CNN
	1    5100 2700
	0    -1   -1   0   
$EndComp
$Comp
L R R410
U 1 1 5852ACEC
P 5100 3100
F 0 "R410" V 5180 3100 50  0000 C CNN
F 1 "660Ω" V 5100 3100 50  0000 C CNN
F 2 "" V 5030 3100 50  0000 C CNN
F 3 "" H 5100 3100 50  0000 C CNN
F 4 "Value" H 5100 3100 60  0001 C CNN "MFP"
	1    5100 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1550 7000 1550
$Comp
L LED D405
U 1 1 5852B54A
P 5100 4400
F 0 "D405" H 5100 4500 50  0000 C CNN
F 1 "LED_EG" H 5100 4300 50  0000 C CNN
F 2 "" H 5100 4400 50  0000 C CNN
F 3 "" H 5100 4400 50  0000 C CNN
	1    5100 4400
	0    -1   -1   0   
$EndComp
$Comp
L LED D406
U 1 1 5852BB30
P 5100 6150
F 0 "D406" H 5100 6250 50  0000 C CNN
F 1 "LED_OG" H 5100 6050 50  0000 C CNN
F 2 "" H 5100 6150 50  0000 C CNN
F 3 "" H 5100 6150 50  0000 C CNN
	1    5100 6150
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P TP401
U 1 1 58534907
P 4450 2300
F 0 "TP401" H 4450 2570 50  0000 C CNN
F 1 "TP_RLY_UG" H 4450 2500 50  0000 C CNN
F 2 "" H 4650 2300 50  0000 C CNN
F 3 "" H 4650 2300 50  0000 C CNN
	1    4450 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2300 4450 2350
Connection ~ 4450 2350
$Comp
L TEST_1P TP402
U 1 1 58534C79
P 4500 4100
F 0 "TP402" H 4500 4370 50  0000 C CNN
F 1 "TP_RLY_EG" H 4500 4300 50  0000 C CNN
F 2 "" H 4700 4100 50  0000 C CNN
F 3 "" H 4700 4100 50  0000 C CNN
	1    4500 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4100 4500 4150
Connection ~ 4500 4150
$Comp
L TEST_1P TP403
U 1 1 58534E54
P 4500 5850
F 0 "TP403" H 4500 6120 50  0000 C CNN
F 1 "TP_RLY_OG" H 4500 6050 50  0000 C CNN
F 2 "" H 4700 5850 50  0000 C CNN
F 3 "" H 4700 5850 50  0000 C CNN
	1    4500 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5850 4500 5900
Connection ~ 4500 5900
Wire Wire Line
	5100 2900 5100 2950
Wire Wire Line
	5100 3250 5100 3300
Wire Wire Line
	5600 1950 5500 1950
Wire Wire Line
	5500 1950 5500 2100
$Comp
L R R?
U 1 1 5853C4A0
P 5100 4800
F 0 "R?" V 5180 4800 50  0000 C CNN
F 1 "660Ω" V 5100 4800 50  0000 C CNN
F 2 "" V 5030 4800 50  0000 C CNN
F 3 "" H 5100 4800 50  0000 C CNN
F 4 "Value" H 5100 4800 60  0001 C CNN "MFP"
	1    5100 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4600 5100 4650
Wire Wire Line
	5100 4950 5100 5000
Wire Wire Line
	5100 4200 5100 4150
Connection ~ 5100 4150
$Comp
L R R?
U 1 1 5853CAEA
P 5100 6550
F 0 "R?" V 5180 6550 50  0000 C CNN
F 1 "660Ω" V 5100 6550 50  0000 C CNN
F 2 "" V 5030 6550 50  0000 C CNN
F 3 "" H 5100 6550 50  0000 C CNN
F 4 "Value" H 5100 6550 60  0001 C CNN "MFP"
	1    5100 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5900 5100 5950
Connection ~ 5100 5900
Wire Wire Line
	5100 6350 5100 6400
Wire Wire Line
	5100 6700 5100 6750
$EndSCHEMATC
