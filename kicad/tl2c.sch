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
Sheet 1 4
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
L ATTINY20-X IC101
U 1 1 584C1FC2
P 4250 5200
F 0 "IC101" H 3300 5950 50  0000 C CNN
F 1 "ATTINY20-X" H 5050 4450 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 4250 5300 50  0001 C CIN
F 3 "" H 4250 5200 50  0000 C CNN
F 4 "ATTINY20-SSUR" H 4250 5200 60  0001 C CNN "MFP"
F 5 "1267295 - 62" H 4250 5200 60  0001 C CNN "Conrad-PN"
F 6 "ATTINY20-SSURCT-ND" H 4250 5200 60  0001 C CNN "Digikey-PN"
	1    4250 5200
	1    0    0    -1  
$EndComp
$Comp
L C C101
U 1 1 584C320A
P 2850 4850
F 0 "C101" H 2875 4950 50  0000 L CNN
F 1 "100n 10V" H 2450 4750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2888 4700 50  0001 C CNN
F 3 "" H 2850 4850 50  0000 C CNN
	1    2850 4850
	1    0    0    -1  
$EndComp
Text Label 2600 4600 0    60   ~ 0
Ub+
$Comp
L GND #PWR01
U 1 1 584C3309
P 3700 6200
F 0 "#PWR01" H 3700 5950 50  0001 C CNN
F 1 "GND" H 3700 6050 50  0000 C CNN
F 2 "" H 3700 6200 50  0000 C CNN
F 3 "" H 3700 6200 50  0000 C CNN
	1    3700 6200
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 P104
U 1 1 584C357B
P 4825 1225
F 0 "P104" H 4825 1425 50  0000 C CNN
F 1 "ISP Header" H 4825 1025 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 4825 25  50  0001 C CNN
F 3 "" H 4825 25  50  0000 C CNN
F 4 "Value" H 4825 1225 60  0001 C CNN "MFP"
F 5 "Value" H 4825 1225 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 4825 1225 60  0001 C CNN "Digikey-PN"
	1    4825 1225
	1    0    0    -1  
$EndComp
Text Label 4175 1125 0    60   ~ 0
MISO
Text Label 4175 1225 0    60   ~ 0
SCK
Text Label 4175 1325 0    60   ~ 0
Reset
Text Label 5325 1125 2    60   ~ 0
Ub+
Text Label 5325 1225 2    60   ~ 0
MOSI
$Comp
L GND #PWR02
U 1 1 584C39BE
P 5175 1425
F 0 "#PWR02" H 5175 1175 50  0001 C CNN
F 1 "GND" H 5175 1275 50  0000 C CNN
F 2 "" H 5175 1425 50  0000 C CNN
F 3 "" H 5175 1425 50  0000 C CNN
	1    5175 1425
	1    0    0    -1  
$EndComp
Text Notes 4100 2100 0    50   ~ 0
We have a 3V3 system \nand possibly a 5V programmer. \nInitial research suggests the AVRISP MkII\ncan drive ISP lines at the required voltage.\nhttps://forum.arduino.cc/index.php?topic=92544.0
$Comp
L R R101
U 1 1 584C40A0
P 3700 3900
F 0 "R101" V 3780 3900 50  0000 C CNN
F 1 "10kΩ" V 3700 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3630 3900 50  0001 C CNN
F 3 "" H 3700 3900 50  0000 C CNN
	1    3700 3900
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR03
U 1 1 584C4458
P 2850 5100
F 0 "#PWR03" H 2850 4850 50  0001 C CNN
F 1 "GND" H 2850 4950 50  0000 C CNN
F 2 "" H 2850 5100 50  0000 C CNN
F 3 "" H 2850 5100 50  0000 C CNN
	1    2850 5100
	1    0    0    -1  
$EndComp
Text Label 3700 3575 2    60   ~ 0
Ub+
Text Label 5900 5300 2    60   ~ 0
SCK
Text Label 5900 5600 2    60   ~ 0
MOSI
Text Label 5650 5700 2    60   ~ 0
MISO
$Comp
L R R103
U 1 1 584C58EE
P 6050 5600
F 0 "R103" V 6130 5600 50  0000 C CNN
F 1 "330Ω" V 6050 5600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5980 5600 50  0001 C CNN
F 3 "" H 6050 5600 50  0000 C CNN
	1    6050 5600
	0    1    1    0   
$EndComp
$Comp
L R R102
U 1 1 584C5F14
P 6050 5300
F 0 "R102" V 6130 5300 50  0000 C CNN
F 1 "330Ω" V 6050 5300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5980 5300 50  0001 C CNN
F 3 "" H 6050 5300 50  0000 C CNN
	1    6050 5300
	0    1    1    0   
$EndComp
Text Label 6500 5300 2    60   ~ 0
SCL
Text Label 6500 5600 2    60   ~ 0
SDA
$Comp
L R R104
U 1 1 584C6CF4
P 6650 5200
F 0 "R104" V 6730 5200 50  0000 C CNN
F 1 "NOPOP" V 6650 5200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6580 5200 50  0001 C CNN
F 3 "" H 6650 5200 50  0000 C CNN
	1    6650 5200
	0    1    1    0   
$EndComp
$Comp
L R R105
U 1 1 584C6E58
P 6650 5500
F 0 "R105" V 6730 5500 50  0000 C CNN
F 1 "NOPOP" V 6650 5500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6580 5500 50  0001 C CNN
F 3 "" H 6650 5500 50  0000 C CNN
	1    6650 5500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 584C7124
P 7000 5900
F 0 "#PWR04" H 7000 5650 50  0001 C CNN
F 1 "GND" H 7000 5750 50  0000 C CNN
F 2 "" H 7000 5900 50  0000 C CNN
F 3 "" H 7000 5900 50  0000 C CNN
	1    7000 5900
	1    0    0    -1  
$EndComp
Text Label 6050 4600 2    60   ~ 0
RelayUG
Text Label 6050 4700 2    60   ~ 0
RelayEG
Text Label 6050 4800 2    60   ~ 0
RelayOG
Text Label 5800 4900 2    60   ~ 0
SIG_UG
Text Label 5800 5000 2    60   ~ 0
SIG_EG
Text Label 5800 5100 2    60   ~ 0
SIG_OG
Text Label 6400 5200 2    60   ~ 0
Spare1
Text Label 6400 5500 2    60   ~ 0
Spare2
$Comp
L CONN_01X03 P102
U 1 1 584C77B2
P 2100 3050
F 0 "P102" H 2100 3250 50  0000 C CNN
F 1 "I2C Master" V 2200 3050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 2100 3050 50  0001 C CNN
F 3 "" H 2100 3050 50  0000 C CNN
F 4 "Value" H 2100 3050 60  0001 C CNN "MFP"
F 5 "Value" H 2100 3050 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 2100 3050 60  0001 C CNN "Digikey-PN"
	1    2100 3050
	1    0    0    -1  
$EndComp
Text Label 1500 2950 0    60   ~ 0
SDA
Text Label 950  3050 0    60   ~ 0
SCL
$Comp
L GND #PWR05
U 1 1 584C7C99
P 1750 3250
F 0 "#PWR05" H 1750 3000 50  0001 C CNN
F 1 "GND" H 1750 3100 50  0000 C CNN
F 2 "" H 1750 3250 50  0000 C CNN
F 3 "" H 1750 3250 50  0000 C CNN
	1    1750 3250
	1    0    0    -1  
$EndComp
$Comp
L Relay_JW1AFSN12F REL101
U 2 1 584C8F2D
P 8050 1150
F 0 "REL101" H 8050 1050 60  0000 C CNN
F 1 "Relay_UG" H 8060 1280 60  0000 C CNN
F 2 "tl2c-footprint:JW1AFSN-12-F" H 7920 1140 60  0001 C CNN
F 3 "" H 7920 1140 60  0000 C CNN
F 4 "JW1AFSN-12-F" H 8050 1150 60  0001 C CNN "MFP"
F 5 "504961 - 62" H 8050 1150 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 8050 1150 60  0001 C CNN "Digikey-PN"
	2    8050 1150
	1    0    0    -1  
$EndComp
$Comp
L Relay_JW1AFSN12F REL102
U 2 1 584C93FA
P 8050 1550
F 0 "REL102" H 8070 1410 60  0000 C CNN
F 1 "Relay_EG" H 8060 1680 60  0000 C CNN
F 2 "tl2c-footprint:JW1AFSN-12-F" H 7920 1540 60  0001 C CNN
F 3 "" H 7920 1540 60  0000 C CNN
F 4 "JW1AFSN-12-F" H 8050 1550 60  0001 C CNN "MFP"
F 5 "504961 - 62" H 8050 1550 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 8050 1550 60  0001 C CNN "Digikey-PN"
	2    8050 1550
	1    0    0    -1  
$EndComp
$Comp
L Relay_JW1AFSN12F REL103
U 2 1 584C945E
P 8050 2000
F 0 "REL103" H 8070 1860 60  0000 C CNN
F 1 "Relay_OG" H 8060 2130 60  0000 C CNN
F 2 "tl2c-footprint:JW1AFSN-12-F" H 7920 1990 60  0001 C CNN
F 3 "" H 7920 1990 60  0000 C CNN
F 4 "JW1AFSN-12-F" H 8050 2000 60  0001 C CNN "MFP"
F 5 "504961 - 62" H 8050 2000 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 8050 2000 60  0001 C CNN "Digikey-PN"
	2    8050 2000
	1    0    0    -1  
$EndComp
Text Label 9375 1650 0    60   ~ 0
Neutral
Text Label 8650 1150 0    60   ~ 0
LineUG
Text Label 8650 1550 0    60   ~ 0
LineEG
Text Label 8650 2000 0    60   ~ 0
LineOG
Text Label 7150 1150 0    60   ~ 0
Lin
$Comp
L CONN_01X02 P106
U 1 1 584CF5D0
P 6950 1200
F 0 "P106" H 6950 1350 50  0000 C CNN
F 1 "240VAC" V 7050 1200 50  0000 C CNN
F 2 "tl2c-footprint:Pin_Header_1_x_2_5mmPitch" H 6950 1200 50  0001 C CNN
F 3 "" H 6950 1200 50  0000 C CNN
F 4 "Value" H 6950 1200 60  0001 C CNN "MFP"
F 5 "Value" H 6950 1200 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 6950 1200 60  0001 C CNN "Digikey-PN"
	1    6950 1200
	-1   0    0    -1  
$EndComp
Text Label 7150 1850 1    60   ~ 0
Neutral
$Comp
L GND #PWR06
U 1 1 584CB28B
P 4600 4300
F 0 "#PWR06" H 4600 4050 50  0001 C CNN
F 1 "GND" H 4600 4150 50  0000 C CNN
F 2 "" H 4600 4300 50  0000 C CNN
F 3 "" H 4600 4300 50  0000 C CNN
	1    4600 4300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P108
U 1 1 584CBB71
P 9950 1400
F 0 "P108" H 9950 1750 50  0000 C CNN
F 1 "LED_OUT" V 10050 1400 50  0000 C CNN
F 2 "tl2c-footprint:Pin_Header_1_x_6_54mmPitch" H 9950 1400 50  0001 C CNN
F 3 "" H 9950 1400 50  0000 C CNN
	1    9950 1400
	1    0    0    -1  
$EndComp
Text Label 9375 1450 0    60   ~ 0
Neutral
Text Label 9375 1250 0    60   ~ 0
Neutral
$Comp
L CONN_01X02 P103
U 1 1 584CC850
P 2100 3800
F 0 "P103" H 2100 3950 50  0000 C CNN
F 1 "Spare" V 2200 3800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 2100 3800 50  0001 C CNN
F 3 "" H 2100 3800 50  0000 C CNN
F 4 "Value" H 2100 3800 60  0001 C CNN "MFP"
F 5 "Value" H 2100 3800 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 2100 3800 60  0001 C CNN "Digikey-PN"
	1    2100 3800
	1    0    0    -1  
$EndComp
Text Label 1500 3750 0    60   ~ 0
Spare1
Text Label 1500 3850 0    60   ~ 0
Spare2
Text Notes 5650 6050 0    60   ~ 0
TODO - Verify the values \nof the resistors for sharing\nthe IO lines.
$Sheet
S 1750 1150 1800 900 
U 584D9013
F0 "Power System" 60
F1 "PowerSystem.sch" 60
F2 "UbOut" I R 3550 1850 60 
F3 "U+Out" I R 3550 1350 60 
F4 "U+In" I L 1750 1350 60 
$EndSheet
$Comp
L CONN_01X02 P101
U 1 1 584D9CD6
P 1250 1400
F 0 "P101" H 1250 1550 50  0000 C CNN
F 1 "12VDC" V 1350 1400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 1250 1400 50  0001 C CNN
F 3 "" H 1250 1400 50  0000 C CNN
F 4 "Value" H 1250 1400 60  0001 C CNN "MFP"
F 5 "Value" H 1250 1400 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 1250 1400 60  0001 C CNN "Digikey-PN"
	1    1250 1400
	-1   0    0    -1  
$EndComp
Text Label 3850 1350 2    60   ~ 0
U+
Text Label 3850 1850 2    60   ~ 0
Ub+
$Comp
L GND #PWR07
U 1 1 584DF6BA
P 1550 1600
F 0 "#PWR07" H 1550 1350 50  0001 C CNN
F 1 "GND" H 1550 1450 50  0000 C CNN
F 2 "" H 1550 1600 50  0000 C CNN
F 3 "" H 1550 1600 50  0000 C CNN
	1    1550 1600
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P TP103
U 1 1 584E2848
P 1750 2850
F 0 "TP103" H 1750 3120 50  0000 C CNN
F 1 "TPSDA" H 1750 3050 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1950 2850 50  0001 C CNN
F 3 "" H 1950 2850 50  0000 C CNN
	1    1750 2850
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P TP102
U 1 1 584E2A24
P 1250 2850
F 0 "TP102" H 1250 3120 50  0000 C CNN
F 1 "TPSCL" H 1250 3050 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1450 2850 50  0001 C CNN
F 3 "" H 1450 2850 50  0000 C CNN
	1    1250 2850
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P TP101
U 1 1 584E3051
P 1100 4600
F 0 "TP101" H 1100 4870 50  0000 C CNN
F 1 "TPGND" H 1100 4800 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1300 4600 50  0001 C CNN
F 3 "" H 1300 4600 50  0000 C CNN
	1    1100 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 584E33BE
P 1100 4700
F 0 "#PWR08" H 1100 4450 50  0001 C CNN
F 1 "GND" H 1100 4550 50  0000 C CNN
F 2 "" H 1100 4700 50  0000 C CNN
F 3 "" H 1100 4700 50  0000 C CNN
	1    1100 4700
	1    0    0    -1  
$EndComp
Text Notes 6800 850  0    60   ~ 0
240V AC Board
Text Notes 5650 6350 0    60   ~ 0
The RP has 1k8Ω pullup\nresistors to 3V3\n
$Sheet
S 8600 4500 800  1350
U 58520450
F0 "PIR13" 60
F1 "PIR13.sch" 60
F2 "SIG_UG" I L 8600 5350 60 
F3 "SIG_EG" I L 8600 5500 60 
F4 "SIG_OG" I L 8600 5650 60 
F5 "U+" I L 8600 4700 60 
F6 "Ub+" I L 8600 4850 60 
$EndSheet
Text Label 8200 4700 0    60   ~ 0
U+
Text Label 8200 4850 0    60   ~ 0
Ub+
Text Label 8200 5350 0    60   ~ 0
SIG_UG
Text Label 8200 5500 0    60   ~ 0
SIG_EG
Text Label 8200 5650 0    60   ~ 0
SIG_OG
$Sheet
S 8750 2450 900  1150
U 585253A2
F0 "LED Driver" 60
F1 "LED_Driver.sch" 60
F2 "Relay_UG" I L 8750 3000 60 
F3 "Relay_EG" I L 8750 3200 60 
F4 "Relay_OG" I L 8750 3400 60 
F5 "LED_DRIVER_U+" I L 8750 2650 60 
$EndSheet
Wire Wire Line
	2600 4600 3100 4600
Wire Wire Line
	2850 4600 2850 4700
Connection ~ 2850 4600
Wire Wire Line
	5075 1125 5325 1125
Wire Wire Line
	5075 1225 5325 1225
Wire Wire Line
	5075 1325 5175 1325
Wire Wire Line
	4575 1125 4175 1125
Wire Wire Line
	4575 1225 4175 1225
Wire Wire Line
	4575 1325 4175 1325
Wire Wire Line
	5175 1325 5175 1425
Wire Wire Line
	2850 5000 2850 5100
Wire Wire Line
	3700 3575 3700 3750
Wire Wire Line
	3700 6050 3700 6200
Wire Wire Line
	5400 5600 5900 5600
Wire Wire Line
	5400 5700 5650 5700
Wire Wire Line
	5400 5300 5900 5300
Wire Wire Line
	6200 5300 6500 5300
Wire Wire Line
	6200 5600 6500 5600
Wire Wire Line
	5400 5200 6500 5200
Wire Wire Line
	5400 5500 6500 5500
Wire Wire Line
	6800 5200 7000 5200
Wire Wire Line
	7000 5200 7000 5900
Wire Wire Line
	6800 5500 7000 5500
Connection ~ 7000 5500
Wire Wire Line
	1500 2950 1900 2950
Wire Wire Line
	950  3050 1900 3050
Wire Wire Line
	1900 3150 1750 3150
Wire Wire Line
	1750 3150 1750 3250
Wire Wire Line
	8450 1550 9150 1550
Wire Wire Line
	8450 2000 9300 2000
Wire Wire Line
	7150 1150 7650 1150
Wire Wire Line
	7650 1550 7350 1550
Wire Wire Line
	7350 2000 7650 2000
Wire Wire Line
	7350 1150 7350 2000
Connection ~ 7350 1550
Connection ~ 7350 1150
Wire Wire Line
	7150 1250 7150 1850
Wire Wire Line
	8450 1150 9750 1150
Wire Wire Line
	9150 1550 9150 1350
Wire Wire Line
	9150 1350 9750 1350
Wire Wire Line
	9300 2000 9300 1550
Wire Wire Line
	9300 1550 9750 1550
Wire Wire Line
	9750 1650 9375 1650
Wire Wire Line
	9750 1450 9375 1450
Wire Wire Line
	9750 1250 9375 1250
Wire Wire Line
	1900 3750 1500 3750
Wire Wire Line
	1900 3850 1500 3850
Wire Wire Line
	4400 4250 4600 4250
Wire Wire Line
	4600 4250 4600 4300
Wire Wire Line
	1450 1350 1750 1350
Wire Wire Line
	3550 1350 3850 1350
Wire Wire Line
	3550 1850 3850 1850
Wire Wire Line
	1450 1450 1550 1450
Wire Wire Line
	1550 1450 1550 1600
Wire Wire Line
	1250 2850 1250 3050
Connection ~ 1250 3050
Wire Wire Line
	1750 2850 1750 2950
Connection ~ 1750 2950
Wire Wire Line
	8600 4700 8200 4700
Wire Wire Line
	8600 4850 8200 4850
Wire Wire Line
	8600 5350 8200 5350
Wire Wire Line
	8600 5500 8200 5500
Wire Wire Line
	8600 5650 8200 5650
Wire Wire Line
	5800 5000 5400 5000
Wire Wire Line
	5400 5100 5800 5100
Wire Wire Line
	1100 4600 1100 4700
Wire Wire Line
	5400 4900 5800 4900
Wire Wire Line
	8750 2650 7600 2650
Wire Wire Line
	7600 2750 8050 2750
Wire Wire Line
	8050 2750 8050 3000
Wire Wire Line
	8050 3000 8750 3000
Wire Wire Line
	8000 3200 8750 3200
Wire Wire Line
	8000 3200 8000 2850
Wire Wire Line
	8000 2850 7600 2850
Wire Wire Line
	7600 2950 7950 2950
Wire Wire Line
	7950 2950 7950 3400
Wire Wire Line
	7950 3400 8750 3400
Wire Wire Line
	5400 4600 6050 4600
Wire Wire Line
	6050 4700 5400 4700
Wire Wire Line
	5400 4800 6050 4800
Wire Wire Line
	6150 2650 5950 2650
Wire Wire Line
	5950 2650 5950 2500
Text Label 5950 2500 2    60   ~ 0
Ub+
$Comp
L CONN_01X05 P105
U 1 1 58541643
P 6350 2850
F 0 "P105" H 6350 3150 50  0000 C CNN
F 1 "LED_DRIVER" V 6450 2850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05" H 6350 2850 50  0001 C CNN
F 3 "" H 6350 2850 50  0000 C CNN
F 4 "Value" H 6350 2850 60  0001 C CNN "MFP"
F 5 "Value" H 6350 2850 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 6350 2850 60  0001 C CNN "Digikey-PN"
	1    6350 2850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P107
U 1 1 5854179B
P 7400 2850
F 0 "P107" H 7400 3150 50  0000 C CNN
F 1 "LED_DRIVER" V 7500 2850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05" H 7400 2850 50  0001 C CNN
F 3 "" H 7400 2850 50  0000 C CNN
F 4 "Value" H 7400 2850 60  0001 C CNN "MFP"
F 5 "Value" H 7400 2850 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 7400 2850 60  0001 C CNN "Digikey-PN"
	1    7400 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7600 3050 7700 3050
Wire Wire Line
	7700 3050 7700 3250
$Comp
L GND #PWR09
U 1 1 58541B90
P 6050 3100
F 0 "#PWR09" H 6050 2850 50  0001 C CNN
F 1 "GND" H 6050 2950 50  0000 C CNN
F 2 "" H 6050 3100 50  0000 C CNN
F 3 "" H 6050 3100 50  0000 C CNN
	1    6050 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3050 6050 3050
Wire Wire Line
	6050 3050 6050 3100
Wire Notes Line
	6650 700  10550 700 
Wire Notes Line
	10550 700  10550 3900
Wire Notes Line
	10550 3900 6650 3900
Wire Notes Line
	6650 3900 6650 700 
Wire Wire Line
	4550 2750 6150 2750
Wire Wire Line
	4550 2850 6150 2850
Wire Wire Line
	4550 2950 6150 2950
Text Label 4550 2750 0    60   ~ 0
RelayUG
Text Label 4550 2850 0    60   ~ 0
RelayEG
Text Label 4550 2950 0    60   ~ 0
RelayOG
Wire Notes Line
	6550 2850 7150 2850
Wire Notes Line
	6550 2750 7150 2750
Wire Notes Line
	7150 2650 6550 2650
Wire Notes Line
	6550 2950 7150 2950
Wire Notes Line
	7150 3050 6550 3050
$Comp
L TL3315NF160Q SW101
U 1 1 58559EF5
P 4150 4150
F 0 "SW101" V 4350 4150 60  0000 C CNN
F 1 "TL3315NF160Q" H 4600 4200 60  0001 C CNN
F 2 "tl2c-footprint:PTS525SM15SMTR2LFS" H 4150 4100 60  0001 C CNN
F 3 "" H 4150 4100 60  0000 C CNN
F 4 "Value" H 4150 4150 60  0001 C CNN "MFP"
F 5 "Value" H 4150 4150 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 4150 4150 60  0001 C CNN "Digikey-PN"
	1    4150 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 4050 3700 4350
Wire Wire Line
	3250 4250 3900 4250
Connection ~ 3700 4250
Text Label 3250 4250 0    60   ~ 0
Reset
NoConn ~ 3900 4050
NoConn ~ 4400 4050
$Comp
L LED D101
U 1 1 5856AA32
P 5000 3350
F 0 "D101" H 5000 3450 50  0000 C CNN
F 1 "LED_UG" H 5000 3250 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5000 3350 50  0001 C CNN
F 3 "" H 5000 3350 50  0000 C CNN
	1    5000 3350
	0    -1   -1   0   
$EndComp
$Comp
L R R106
U 1 1 5856AB2B
P 5000 3800
F 0 "R106" V 5080 3800 50  0000 C CNN
F 1 "660Ω" V 5000 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4930 3800 50  0001 C CNN
F 3 "" H 5000 3800 50  0000 C CNN
	1    5000 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3550 5000 3650
$Comp
L GND #PWR010
U 1 1 5856AF1B
P 5000 4050
F 0 "#PWR010" H 5000 3800 50  0001 C CNN
F 1 "GND" H 5000 3900 50  0000 C CNN
F 2 "" H 5000 4050 50  0000 C CNN
F 3 "" H 5000 4050 50  0000 C CNN
	1    5000 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3950 5000 4050
Wire Wire Line
	5000 3150 5000 2750
Connection ~ 5000 2750
$Comp
L LED D102
U 1 1 5856B277
P 5300 3350
F 0 "D102" H 5300 3450 50  0000 C CNN
F 1 "LED_EG" H 5300 3250 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5300 3350 50  0001 C CNN
F 3 "" H 5300 3350 50  0000 C CNN
	1    5300 3350
	0    -1   -1   0   
$EndComp
$Comp
L R R107
U 1 1 5856B27D
P 5300 3800
F 0 "R107" V 5380 3800 50  0000 C CNN
F 1 "660Ω" V 5300 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5230 3800 50  0001 C CNN
F 3 "" H 5300 3800 50  0000 C CNN
	1    5300 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3550 5300 3650
$Comp
L GND #PWR011
U 1 1 5856B284
P 5300 4050
F 0 "#PWR011" H 5300 3800 50  0001 C CNN
F 1 "GND" H 5300 3900 50  0000 C CNN
F 2 "" H 5300 4050 50  0000 C CNN
F 3 "" H 5300 4050 50  0000 C CNN
	1    5300 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3950 5300 4050
Wire Wire Line
	5300 3150 5300 2850
Connection ~ 5300 2850
$Comp
L LED D103
U 1 1 5856B503
P 5600 3350
F 0 "D103" H 5600 3450 50  0000 C CNN
F 1 "LED_OG" H 5600 3250 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5600 3350 50  0001 C CNN
F 3 "" H 5600 3350 50  0000 C CNN
	1    5600 3350
	0    -1   -1   0   
$EndComp
$Comp
L R R108
U 1 1 5856B509
P 5600 3800
F 0 "R108" V 5680 3800 50  0000 C CNN
F 1 "660Ω" V 5600 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5530 3800 50  0001 C CNN
F 3 "" H 5600 3800 50  0000 C CNN
	1    5600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3550 5600 3650
$Comp
L GND #PWR012
U 1 1 5856B510
P 5600 4050
F 0 "#PWR012" H 5600 3800 50  0001 C CNN
F 1 "GND" H 5600 3900 50  0000 C CNN
F 2 "" H 5600 4050 50  0000 C CNN
F 3 "" H 5600 4050 50  0000 C CNN
	1    5600 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3950 5600 4050
Wire Wire Line
	5600 3150 5600 2950
Connection ~ 5600 2950
$Comp
L GNDA #PWR013
U 1 1 5856E00B
P 7700 3250
F 0 "#PWR013" H 7700 3000 50  0001 C CNN
F 1 "GNDA" H 7700 3100 50  0000 C CNN
F 2 "" H 7700 3250 50  0000 C CNN
F 3 "" H 7700 3250 50  0000 C CNN
	1    7700 3250
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P TP104
U 1 1 58571150
P 5100 2700
F 0 "TP104" H 5100 2970 50  0000 C CNN
F 1 "TP_RLY_UG" H 5100 2900 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 5300 2700 50  0001 C CNN
F 3 "" H 5300 2700 50  0000 C CNN
	1    5100 2700
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P TP105
U 1 1 5857134A
P 5450 2800
F 0 "TP105" H 5450 3070 50  0000 C CNN
F 1 "TP_RLY_EG" H 5450 3000 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 5650 2800 50  0001 C CNN
F 3 "" H 5650 2800 50  0000 C CNN
	1    5450 2800
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P TP106
U 1 1 585714D0
P 5800 2900
F 0 "TP106" H 5800 3170 50  0000 C CNN
F 1 "TP_RLY_OG" H 5800 3100 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 6000 2900 50  0001 C CNN
F 3 "" H 6000 2900 50  0000 C CNN
	1    5800 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2700 5100 2750
Connection ~ 5100 2750
Wire Wire Line
	5450 2800 5450 2850
Connection ~ 5450 2850
Wire Wire Line
	5800 2900 5800 2950
Connection ~ 5800 2950
Text Notes 6850 4150 0    60   ~ 0
TODO - Change the relay to  AZ7705T-1A-12DEF - Conrad.\nor FIN 43.41.7 12V - Reichelt
$EndSCHEMATC
