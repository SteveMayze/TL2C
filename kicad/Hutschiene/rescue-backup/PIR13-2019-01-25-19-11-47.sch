EESchema Schematic File Version 2
LIBS:tl2c-rescue
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
Sheet 3 5
Title "TL2C - Timed LED Lighting Controller"
Date "2017-07-16"
Rev "2L.2"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2570 1910 2    60   Input ~ 0
U+
$Comp
L R R307
U 1 1 58520DB2
P 2220 2160
F 0 "R307" V 2300 2160 50  0000 C CNN
F 1 "10kΩ" V 2220 2160 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2150 2160 50  0001 C CNN
F 3 "" H 2220 2160 50  0000 C CNN
	1    2220 2160
	-1   0    0    1   
$EndComp
$Comp
L IRLML2502 Q301
U 1 1 58520DBC
P 1820 2460
F 0 "Q301" H 1820 2311 40  0000 R CNN
F 1 "IRLML2502" H 1820 2610 40  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 1690 2562 29  0001 C CNN
F 3 "" H 1820 2460 60  0000 C CNN
F 4 "IRLML2502GTRPBF" H 1820 2460 60  0001 C CNN "MFP"
F 5 "162827 - 62 " H 1820 2460 60  0001 C CNN "Conrad-PN"
F 6 "IRLML2502GTRPBFCT-ND" H 1820 2460 60  0001 C CNN "Digikey-PN"
	1    1820 2460
	-1   0    0    -1  
$EndComp
$Comp
L R R301
U 1 1 58520DC6
P 1720 2960
F 0 "R301" V 1800 2960 50  0000 C CNN
F 1 "1kΩ" V 1720 2960 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1650 2960 50  0001 C CNN
F 3 "" H 1720 2960 50  0000 C CNN
	1    1720 2960
	-1   0    0    1   
$EndComp
Text Label 2970 2510 2    60   ~ 0
PIR_UG
Text HLabel 1320 1910 0    60   Input ~ 0
Ub+
$Comp
L GND #PWR022
U 1 1 585215A4
P 1720 3160
F 0 "#PWR022" H 1720 2910 50  0001 C CNN
F 1 "GND" H 1720 3010 50  0000 C CNN
F 2 "" H 1720 3160 50  0000 C CNN
F 3 "" H 1720 3160 50  0000 C CNN
	1    1720 3160
	1    0    0    -1  
$EndComp
$Comp
L R R308
U 1 1 58521B00
P 2220 4060
F 0 "R308" V 2300 4060 50  0000 C CNN
F 1 "10kΩ" V 2220 4060 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2150 4060 50  0001 C CNN
F 3 "" H 2220 4060 50  0000 C CNN
	1    2220 4060
	-1   0    0    1   
$EndComp
$Comp
L IRLML2502 Q302
U 1 1 58521B09
P 1820 4360
F 0 "Q302" H 1820 4211 40  0000 R CNN
F 1 "IRLML2502" H 1820 4510 40  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 1690 4462 29  0001 C CNN
F 3 "" H 1820 4360 60  0000 C CNN
F 4 "IRLML2502GTRPBF" H 1820 4360 60  0001 C CNN "MFP"
F 5 "162827 - 62 " H 1820 4360 60  0001 C CNN "Conrad-PN"
F 6 "IRLML2502GTRPBFCT-ND" H 1820 4360 60  0001 C CNN "Digikey-PN"
	1    1820 4360
	-1   0    0    -1  
$EndComp
Text Label 1720 3860 0    60   ~ 0
Ub+
$Comp
L R R302
U 1 1 58521B12
P 1720 4860
F 0 "R302" V 1800 4860 50  0000 C CNN
F 1 "1kΩ" V 1720 4860 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1650 4860 50  0001 C CNN
F 3 "" H 1720 4860 50  0000 C CNN
	1    1720 4860
	-1   0    0    1   
$EndComp
Text Label 2220 3860 0    60   ~ 0
U+
Text Label 2970 4410 2    60   ~ 0
PIR_EG
$Comp
L GND #PWR023
U 1 1 58521B24
P 1720 5060
F 0 "#PWR023" H 1720 4810 50  0001 C CNN
F 1 "GND" H 1720 4910 50  0000 C CNN
F 2 "" H 1720 5060 50  0000 C CNN
F 3 "" H 1720 5060 50  0000 C CNN
	1    1720 5060
	1    0    0    -1  
$EndComp
$Comp
L R R309
U 1 1 58521C51
P 2220 5960
F 0 "R309" V 2300 5960 50  0000 C CNN
F 1 "10kΩ" V 2220 5960 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2150 5960 50  0001 C CNN
F 3 "" H 2220 5960 50  0000 C CNN
	1    2220 5960
	-1   0    0    1   
$EndComp
$Comp
L IRLML2502 Q303
U 1 1 58521C5A
P 1820 6260
F 0 "Q303" H 1820 6111 40  0000 R CNN
F 1 "IRLML2502" H 1820 6410 40  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 1690 6362 29  0001 C CNN
F 3 "" H 1820 6260 60  0000 C CNN
F 4 "IRLML2502GTRPBF" H 1820 6260 60  0001 C CNN "MFP"
F 5 "162827 - 62 " H 1820 6260 60  0001 C CNN "Conrad-PN"
F 6 "IRLML2502GTRPBFCT-ND" H 1820 6260 60  0001 C CNN "Digikey-PN"
	1    1820 6260
	-1   0    0    -1  
$EndComp
Text Label 1720 5760 0    60   ~ 0
Ub+
$Comp
L R R303
U 1 1 58521C63
P 1720 6760
F 0 "R303" V 1800 6760 50  0000 C CNN
F 1 "1kΩ" V 1720 6760 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1650 6760 50  0001 C CNN
F 3 "" H 1720 6760 50  0000 C CNN
	1    1720 6760
	-1   0    0    1   
$EndComp
Text Label 2220 5760 0    60   ~ 0
U+
Text Label 2970 6310 2    60   ~ 0
PIR_OG
$Comp
L GND #PWR024
U 1 1 58521C75
P 1720 6960
F 0 "#PWR024" H 1720 6710 50  0001 C CNN
F 1 "GND" H 1720 6810 50  0000 C CNN
F 2 "" H 1720 6960 50  0000 C CNN
F 3 "" H 1720 6960 50  0000 C CNN
	1    1720 6960
	1    0    0    -1  
$EndComp
Text HLabel 1520 2760 0    60   Input ~ 0
SIG_UG
Text HLabel 1520 4660 0    60   Input ~ 0
SIG_EG
Text HLabel 1520 6560 0    60   Input ~ 0
SIG_OG
Wire Wire Line
	2020 2510 2970 2510
Wire Wire Line
	2220 2510 2220 2310
Connection ~ 2220 2510
Wire Wire Line
	1720 3110 1720 3160
Wire Wire Line
	1320 1910 1720 1910
Wire Wire Line
	1720 2760 1520 2760
Wire Wire Line
	1720 2660 1720 2810
Connection ~ 1720 2760
Wire Wire Line
	2020 4410 2970 4410
Wire Wire Line
	2220 4410 2220 4210
Connection ~ 2220 4410
Wire Wire Line
	1720 3860 1720 4160
Wire Wire Line
	1720 5010 1720 5060
Wire Wire Line
	2220 3910 2220 3860
Wire Wire Line
	1720 4660 1520 4660
Wire Wire Line
	1720 4560 1720 4710
Connection ~ 1720 4660
Wire Wire Line
	2020 6310 2970 6310
Wire Wire Line
	2220 6310 2220 6110
Connection ~ 2220 6310
Wire Wire Line
	1720 5760 1720 6060
Wire Wire Line
	1720 6910 1720 6960
Wire Wire Line
	2220 5810 2220 5760
Wire Wire Line
	1720 6560 1520 6560
Wire Wire Line
	1720 6460 1720 6610
Connection ~ 1720 6560
Wire Wire Line
	2570 1910 2220 1910
Wire Wire Line
	1720 1910 1720 2260
Wire Wire Line
	2220 1910 2220 2010
Text HLabel 2970 6310 2    60   Input ~ 0
PIR_OG
Text HLabel 2970 4410 2    60   Input ~ 0
PIR_EG
Text HLabel 2970 2510 2    60   Input ~ 0
PIR_UG
Text Label 2270 1910 0    60   ~ 0
U+
$EndSCHEMATC
