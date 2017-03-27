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
F 2 "tl2c-footprint:JW1AFSN-12-F" H 6320 1940 60  0001 C CNN
F 3 "" H 6320 1940 60  0000 C CNN
F 4 "JW1AFSN-12-F" H 6450 1950 60  0001 C CNN "MFP"
F 5 "504961 - 62" H 6450 1950 60  0001 C CNN "Conrad-PN"
F 6 "N/A" H 6450 1950 60  0001 C CNN "Digikey-PN"
	1    6450 1950
	1    0    0    -1  
$EndComp
$Comp
L Relay_JW1AFSN12F REL?
U 1 1 58525862
P 6450 3050
AR Path="/58525862" Ref="REL?"  Part="1" 
AR Path="/585253A2/58525862" Ref="REL102"  Part="1" 
F 0 "REL102" H 6470 2910 60  0000 C CNN
F 1 "Relay_EG" H 6450 3200 60  0000 C CNN
F 2 "tl2c-footprint:JW1AFSN-12-F" H 6320 3040 60  0001 C CNN
F 3 "" H 6320 3040 60  0000 C CNN
F 4 "JW1AFSN-12-F" H 6450 3050 60  0001 C CNN "MFP"
F 5 "504961 - 62" H 6450 3050 60  0001 C CNN "Conrad-PN"
F 6 "N/A" H 6450 3050 60  0001 C CNN "Digikey-PN"
	1    6450 3050
	1    0    0    -1  
$EndComp
$Comp
L Relay_JW1AFSN12F REL?
U 1 1 5852586A
P 6450 4050
AR Path="/5852586A" Ref="REL?"  Part="1" 
AR Path="/585253A2/5852586A" Ref="REL103"  Part="1" 
F 0 "REL103" H 6470 3910 60  0000 C CNN
F 1 "Relay_OG" H 6450 4200 60  0000 C CNN
F 2 "tl2c-footprint:JW1AFSN-12-F" H 6320 4040 60  0001 C CNN
F 3 "" H 6320 4040 60  0000 C CNN
F 4 "JW1AFSN-12-F" H 6450 4050 60  0001 C CNN "MFP"
F 5 "504961 - 62" H 6450 4050 60  0001 C CNN "Conrad-PN"
F 6 "N/A" H 6450 4050 60  0001 C CNN "Digikey-PN"
	1    6450 4050
	1    0    0    -1  
$EndComp
$Comp
L D D404
U 1 1 58525871
P 6425 2350
F 0 "D404" H 6425 2450 50  0000 C CNN
F 1 "1N4148W" H 6425 2250 50  0000 C CNN
F 2 "Diodes_SMD:SOD-123" H 6425 2350 50  0001 C CNN
F 3 "" H 6425 2350 50  0000 C CNN
F 4 "1N4148W-E3-18" H 6425 2350 60  0001 C CNN "MFP"
F 5 "564852 - 62" H 6425 2350 60  0001 C CNN "Conrad-PN"
F 6 "1N4148W-E3-18CT-ND " H 6425 2350 60  0001 C CNN "Digikey-PN"
	1    6425 2350
	-1   0    0    1   
$EndComp
$Comp
L D D405
U 1 1 58525878
P 6425 3400
F 0 "D405" H 6425 3500 50  0000 C CNN
F 1 "1N4148W" H 6425 3300 50  0000 C CNN
F 2 "Diodes_SMD:SOD-123" H 6425 3400 50  0001 C CNN
F 3 "" H 6425 3400 50  0000 C CNN
F 4 "1N4148W-E3-18" H 6425 3400 60  0001 C CNN "MFP"
F 5 "564852 - 62" H 6425 3400 60  0001 C CNN "Conrad-PN"
F 6 "1N4148W-E3-18CT-ND" H 6425 3400 60  0001 C CNN "Digikey-PN"
	1    6425 3400
	-1   0    0    1   
$EndComp
$Comp
L D D406
U 1 1 5852587F
P 6425 4400
F 0 "D406" H 6425 4500 50  0000 C CNN
F 1 "1N4148W" H 6425 4300 50  0000 C CNN
F 2 "Diodes_SMD:SOD-123" H 6425 4400 50  0001 C CNN
F 3 "" H 6425 4400 50  0000 C CNN
F 4 "1N4148W-E3-18" H 6425 4400 60  0001 C CNN "MFP"
F 5 "564852 - 62" H 6425 4400 60  0001 C CNN "Conrad-PN"
F 6 "1N4148W-E3-18CT-ND" H 6425 4400 60  0001 C CNN "Digikey-PN"
	1    6425 4400
	-1   0    0    1   
$EndComp
$Comp
L R R401
U 1 1 58525889
P 4750 2350
F 0 "R401" V 4830 2350 50  0000 C CNN
F 1 "10kΩ" V 4750 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4680 2350 50  0001 C CNN
F 3 "" H 4750 2350 50  0000 C CNN
	1    4750 2350
	0    1    1    0   
$EndComp
$Comp
L R R402
U 1 1 58525890
P 4750 3450
F 0 "R402" V 4830 3450 50  0000 C CNN
F 1 "10kΩ" V 4750 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4680 3450 50  0001 C CNN
F 3 "" H 4750 3450 50  0000 C CNN
	1    4750 3450
	0    1    1    0   
$EndComp
$Comp
L R R403
U 1 1 58525897
P 4750 4500
F 0 "R403" V 4830 4500 50  0000 C CNN
F 1 "10kΩ" V 4750 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4680 4500 50  0001 C CNN
F 3 "" H 4750 4500 50  0000 C CNN
	1    4750 4500
	0    1    1    0   
$EndComp
$Comp
L IRLML2502 Q401
U 1 1 5852589F
P 5400 2300
F 0 "Q401" H 5400 2151 40  0000 R CNN
F 1 "IRLML2502" H 5400 2450 40  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5270 2402 29  0001 C CNN
F 3 "" H 5400 2300 60  0000 C CNN
F 4 "IRLML2502GTRPBF" H 5400 2300 60  0001 C CNN "MFP"
F 5 "162827 - 62 " H 5400 2300 60  0001 C CNN "Conrad-PN"
F 6 "IRLML2502GTRPBFCT-ND" H 5400 2300 60  0001 C CNN "Digikey-PN"
	1    5400 2300
	1    0    0    -1  
$EndComp
$Comp
L IRLML2502 Q402
U 1 1 585258A7
P 5400 3400
F 0 "Q402" H 5400 3251 40  0000 R CNN
F 1 "IRLML2502" H 5400 3550 40  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5270 3502 29  0001 C CNN
F 3 "" H 5400 3400 60  0000 C CNN
F 4 "IRLML2502GTRPBF" H 5400 3400 60  0001 C CNN "MFP"
F 5 "162827 - 62 " H 5400 3400 60  0001 C CNN "Conrad-PN"
F 6 "RLML2502GTRPBFCT-ND" H 5400 3400 60  0001 C CNN "Digikey-PN"
	1    5400 3400
	1    0    0    -1  
$EndComp
$Comp
L IRLML2502 Q403
U 1 1 585258AF
P 5400 4450
F 0 "Q403" H 5400 4301 40  0000 R CNN
F 1 "IRLML2502" H 5400 4600 40  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5270 4552 29  0001 C CNN
F 3 "" H 5400 4450 60  0000 C CNN
F 4 "IRLML2502GTRPBF" H 5400 4450 60  0001 C CNN "MFP"
F 5 "162827 - 62 " H 5400 4450 60  0001 C CNN "Conrad-PN"
F 6 "RLML2502GTRPBFCT-ND" H 5400 4450 60  0001 C CNN "Digikey-PN"
	1    5400 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1550 7000 4400
Wire Wire Line
	7000 4400 6575 4400
Wire Wire Line
	7000 3400 6575 3400
Connection ~ 7000 3400
Wire Wire Line
	7000 2350 6575 2350
Connection ~ 7000 2350
Wire Wire Line
	6275 2350 5950 2350
Wire Wire Line
	6275 3400 5950 3400
Wire Wire Line
	6275 4400 5950 4400
Wire Wire Line
	5500 2500 5500 2600
Wire Wire Line
	4900 2350 5200 2350
Wire Wire Line
	4900 4500 5200 4500
Wire Wire Line
	4250 4500 4600 4500
Wire Wire Line
	4900 3450 5200 3450
Wire Wire Line
	4250 3450 4600 3450
Wire Wire Line
	7000 1950 6850 1950
Connection ~ 7000 1950
Wire Wire Line
	5950 2350 5950 1950
Wire Wire Line
	7000 3050 6850 3050
Connection ~ 7000 3050
Wire Wire Line
	5500 3050 5500 3200
Wire Wire Line
	5950 3400 5950 3050
Wire Wire Line
	7000 4050 6850 4050
Connection ~ 7000 4050
Wire Wire Line
	5500 4050 5500 4250
Wire Wire Line
	5950 4400 5950 4050
Wire Wire Line
	5500 4800 5500 4650
Wire Wire Line
	5500 3650 5500 3600
Text Notes 3700 2700 0    60   ~ 0
TODO - Add a Pull-down\n
Text HLabel 4200 2350 0    60   Input ~ 0
Relay_UG
Text HLabel 4250 3450 0    60   Input ~ 0
Relay_EG
Text HLabel 4250 4500 0    60   Input ~ 0
Relay_OG
Text HLabel 6650 1550 0    60   Input ~ 0
LED_DRIVER_U+
$Comp
L R R407
U 1 1 5852702F
P 5750 1950
F 0 "R407" V 5830 1950 50  0000 C CNN
F 1 "10kΩ" V 5750 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5680 1950 50  0001 C CNN
F 3 "" H 5750 1950 50  0000 C CNN
	1    5750 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 1950 6050 1950
Connection ~ 5950 1950
$Comp
L R R408
U 1 1 585271D4
P 5750 3050
F 0 "R408" V 5830 3050 50  0000 C CNN
F 1 "10kΩ" V 5750 3050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5680 3050 50  0001 C CNN
F 3 "" H 5750 3050 50  0000 C CNN
	1    5750 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 3050 5600 3050
Wire Wire Line
	5900 3050 6050 3050
Connection ~ 5950 3050
$Comp
L R R409
U 1 1 58527308
P 5750 4050
F 0 "R409" V 5830 4050 50  0000 C CNN
F 1 "10kΩ" V 5750 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5680 4050 50  0001 C CNN
F 3 "" H 5750 4050 50  0000 C CNN
	1    5750 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 4050 5600 4050
Wire Wire Line
	5900 4050 6050 4050
Connection ~ 5950 4050
Wire Wire Line
	6650 1550 7000 1550
Wire Wire Line
	5600 1950 5500 1950
Wire Wire Line
	5500 1950 5500 2100
Wire Wire Line
	4800 5200 4800 4950
Wire Wire Line
	4800 4950 4300 4950
Text HLabel 4300 4950 0    60   Input ~ 0
LED_DRIVER_GND
$Comp
L GNDA #PWR030
U 1 1 5856DA15
P 4800 5200
F 0 "#PWR030" H 4800 4950 50  0001 C CNN
F 1 "GNDA" H 4800 5050 50  0000 C CNN
F 2 "" H 4800 5200 50  0000 C CNN
F 3 "" H 4800 5200 50  0000 C CNN
	1    4800 5200
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR031
U 1 1 5856DA56
P 5500 4800
F 0 "#PWR031" H 5500 4550 50  0001 C CNN
F 1 "GNDA" H 5500 4650 50  0000 C CNN
F 2 "" H 5500 4800 50  0000 C CNN
F 3 "" H 5500 4800 50  0000 C CNN
	1    5500 4800
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR032
U 1 1 5856DA97
P 5500 3650
F 0 "#PWR032" H 5500 3400 50  0001 C CNN
F 1 "GNDA" H 5500 3500 50  0000 C CNN
F 2 "" H 5500 3650 50  0000 C CNN
F 3 "" H 5500 3650 50  0000 C CNN
	1    5500 3650
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR033
U 1 1 5856DAD8
P 5500 2600
F 0 "#PWR033" H 5500 2350 50  0001 C CNN
F 1 "GNDA" H 5500 2450 50  0000 C CNN
F 2 "" H 5500 2600 50  0000 C CNN
F 3 "" H 5500 2600 50  0000 C CNN
	1    5500 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2350 4600 2350
$EndSCHEMATC
