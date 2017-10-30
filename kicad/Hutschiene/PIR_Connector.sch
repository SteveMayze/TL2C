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
Sheet 5 5
Title ""
Date "2017-07-16"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2710 1570 0    60   Input ~ 0
PIR_OG
Text HLabel 2720 2970 0    60   Input ~ 0
PIR_EG
Text HLabel 2720 4310 0    60   Input ~ 0
PIR_UG
$Comp
L CONN_01X03 P501
U 1 1 596CE34C
P 3350 1470
F 0 "P501" H 3350 1670 50  0000 C CNN
F 1 "CONN_PIR_OG" V 3450 1470 50  0000 C CNN
F 2 "tl2c-footprint:PCB_Screw_Terminal_Block_5.8mm_x_3" H 3350 1470 50  0001 C CNN
F 3 "" H 3350 1470 50  0000 C CNN
	1    3350 1470
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P502
U 1 1 596CE37D
P 3360 2870
F 0 "P502" H 3360 3070 50  0000 C CNN
F 1 "CONN_PIR_EG" V 3460 2870 50  0000 C CNN
F 2 "tl2c-footprint:PCB_Screw_Terminal_Block_5.8mm_x_3" H 3360 2870 50  0001 C CNN
F 3 "" H 3360 2870 50  0000 C CNN
	1    3360 2870
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P503
U 1 1 596CE3AC
P 3360 4210
F 0 "P503" H 3360 4410 50  0000 C CNN
F 1 "CONN_PIR_UG" V 3460 4210 50  0000 C CNN
F 2 "tl2c-footprint:PCB_Screw_Terminal_Block_5.8mm_x_3" H 3360 4210 50  0001 C CNN
F 3 "" H 3360 4210 50  0000 C CNN
	1    3360 4210
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR032
U 1 1 596CE74B
P 2160 2110
F 0 "#PWR032" H 2160 1860 50  0001 C CNN
F 1 "GNDA" H 2160 1960 50  0000 C CNN
F 2 "" H 2160 2110 50  0000 C CNN
F 3 "" H 2160 2110 50  0000 C CNN
	1    2160 2110
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR033
U 1 1 596CE78C
P 2210 3550
F 0 "#PWR033" H 2210 3300 50  0001 C CNN
F 1 "GNDA" H 2210 3400 50  0000 C CNN
F 2 "" H 2210 3550 50  0000 C CNN
F 3 "" H 2210 3550 50  0000 C CNN
	1    2210 3550
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR034
U 1 1 596CE7BF
P 2200 4820
F 0 "#PWR034" H 2200 4570 50  0001 C CNN
F 1 "GNDA" H 2200 4670 50  0000 C CNN
F 2 "" H 2200 4820 50  0000 C CNN
F 3 "" H 2200 4820 50  0000 C CNN
	1    2200 4820
	1    0    0    -1  
$EndComp
$Comp
L C C502
U 1 1 596CF9A5
P 1730 1660
F 0 "C502" H 1755 1760 50  0000 L CNN
F 1 "100nF 50V" H 1755 1560 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1768 1510 50  0001 C CNN
F 3 "" H 1730 1660 50  0000 C CNN
F 4 "Value" H 1730 1660 60  0001 C CNN "MPN"
F 5 "Value" H 1730 1660 60  0001 C CNN "ConradPN"
	1    1730 1660
	1    0    0    -1  
$EndComp
$Comp
L C C501
U 1 1 596CFB0E
P 1710 3130
F 0 "C501" H 1735 3230 50  0000 L CNN
F 1 "100nF 50V" H 1735 3030 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1748 2980 50  0001 C CNN
F 3 "" H 1710 3130 50  0000 C CNN
F 4 "Value" H 1710 3130 60  0001 C CNN "MPN"
F 5 "Value" H 1710 3130 60  0001 C CNN "ConradPN"
F 6 "Value" H 1710 3130 60  0001 C CNN "Label"
	1    1710 3130
	1    0    0    -1  
$EndComp
$Comp
L C C503
U 1 1 596CFB51
P 1760 4390
F 0 "C503" H 1785 4490 50  0000 L CNN
F 1 "100nF 50V" H 1785 4290 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1798 4240 50  0001 C CNN
F 3 "" H 1760 4390 50  0000 C CNN
F 4 "Value" H 1760 4390 60  0001 C CNN "MPN"
F 5 "Value" H 1760 4390 60  0001 C CNN "ConradPN"
F 6 "Value" H 1760 4390 60  0001 C CNN "Label"
	1    1760 4390
	1    0    0    -1  
$EndComp
Wire Wire Line
	1190 1370 3150 1370
Wire Wire Line
	1360 2770 3160 2770
Wire Wire Line
	1360 4110 3160 4110
Wire Wire Line
	2210 2870 2210 3550
Wire Wire Line
	2160 1470 3150 1470
Wire Wire Line
	2210 2870 3160 2870
Wire Wire Line
	2200 4210 3160 4210
Wire Wire Line
	3150 1570 2710 1570
Wire Wire Line
	3160 2970 2720 2970
Wire Wire Line
	3160 4310 2720 4310
Wire Wire Line
	1730 1510 1730 1370
Connection ~ 1730 1370
Wire Wire Line
	1730 1810 1730 1900
Wire Wire Line
	1730 1900 2160 1900
Wire Wire Line
	2160 1470 2160 2110
Connection ~ 2160 1900
Wire Wire Line
	1710 2770 1710 2980
Wire Wire Line
	1710 3280 1710 3310
Wire Wire Line
	1710 3310 2210 3310
Connection ~ 2210 3310
Wire Wire Line
	1760 4110 1760 4240
Wire Wire Line
	1760 4540 1760 4720
Wire Wire Line
	1760 4720 2200 4720
Wire Wire Line
	2200 4210 2200 4820
Connection ~ 2200 4720
Text HLabel 1190 1370 0    60   Input ~ 0
U+
Connection ~ 1710 2770
Connection ~ 1760 4110
Wire Wire Line
	1360 1370 1360 4110
Connection ~ 1360 1370
Connection ~ 1360 2770
$EndSCHEMATC
