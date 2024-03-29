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
Date "2017-03-30"
Rev "2L.2"
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
F 1 "100n 50V" H 2450 4750 50  0000 L CNN
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
Text Label 3850 1100 0    60   ~ 0
TPIDATA
Text Label 5000 1100 2    60   ~ 0
Ub+
$Comp
L GND #PWR02
U 1 1 584C39BE
P 4850 1400
F 0 "#PWR02" H 4850 1150 50  0001 C CNN
F 1 "GND" H 4850 1250 50  0000 C CNN
F 2 "" H 4850 1400 50  0000 C CNN
F 3 "" H 4850 1400 50  0000 C CNN
	1    4850 1400
	1    0    0    -1  
$EndComp
Text Notes 3750 2100 0    50   ~ 0
We have a 3V3 system \nand possibly a 5V programmer. \nInitial research suggests the AVRISP MkII\ncan drive ISP lines at the required voltage.\nhttps://forum.arduino.cc/index.php?topic=92544.0
$Comp
L R R101
U 1 1 584C40A0
P 2750 2700
F 0 "R101" V 2830 2700 50  0000 C CNN
F 1 "10kΩ" V 2750 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2680 2700 50  0001 C CNN
F 3 "" H 2750 2700 50  0000 C CNN
	1    2750 2700
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
Text Label 2750 2375 2    60   ~ 0
Ub+
$Comp
L R R103
U 1 1 584C58EE
P 6500 5600
F 0 "R103" V 6580 5600 50  0000 C CNN
F 1 "0Ω" V 6500 5600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6430 5600 50  0001 C CNN
F 3 "" H 6500 5600 50  0000 C CNN
	1    6500 5600
	0    1    1    0   
$EndComp
Text Label 6950 5600 2    60   ~ 0
SDA
$Comp
L R R104
U 1 1 584C6CF4
P 7100 5200
F 0 "R104" V 7180 5200 50  0000 C CNN
F 1 "NOPOP" V 7100 5200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7030 5200 50  0001 C CNN
F 3 "" H 7100 5200 50  0000 C CNN
	1    7100 5200
	0    1    1    0   
$EndComp
$Comp
L R R105
U 1 1 584C6E58
P 7100 5700
F 0 "R105" V 7180 5700 50  0000 C CNN
F 1 "NOPOP" V 7100 5700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7030 5700 50  0001 C CNN
F 3 "" H 7100 5700 50  0000 C CNN
	1    7100 5700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 584C7124
P 7450 5900
F 0 "#PWR04" H 7450 5650 50  0001 C CNN
F 1 "GND" H 7450 5750 50  0000 C CNN
F 2 "" H 7450 5900 50  0000 C CNN
F 3 "" H 7450 5900 50  0000 C CNN
	1    7450 5900
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
Text Label 6650 5200 2    60   ~ 0
GPIO_PA6
Text Label 5800 5300 2    60   ~ 0
SCL
$Comp
L CONN_01X03 P102
U 1 1 584C77B2
P 1750 3050
F 0 "P102" H 1750 3250 50  0000 C CNN
F 1 "I2C Master" V 1850 3050 50  0000 C CNN
F 2 "tl2c-footprint:Spring_Terminal_Block_1_x_3" H 1750 3050 50  0001 C CNN
F 3 "" H 1750 3050 50  0000 C CNN
F 4 "Value" H 1750 3050 60  0001 C CNN "MFP"
F 5 "Value" H 1750 3050 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 1750 3050 60  0001 C CNN "Digikey-PN"
	1    1750 3050
	1    0    0    -1  
$EndComp
Text Label 1150 2950 0    60   ~ 0
SDA
Text Label 600  3050 0    60   ~ 0
SCL
$Comp
L GND #PWR05
U 1 1 584C7C99
P 1400 3250
F 0 "#PWR05" H 1400 3000 50  0001 C CNN
F 1 "GND" H 1400 3100 50  0000 C CNN
F 2 "" H 1400 3250 50  0000 C CNN
F 3 "" H 1400 3250 50  0000 C CNN
	1    1400 3250
	1    0    0    -1  
$EndComp
$Comp
L Relay_JW1AFSN12F REL101
U 2 1 584C8F2D
P 8450 1150
F 0 "REL101" H 8450 1050 60  0000 C CNN
F 1 "Relay_UG" H 8450 1300 60  0000 C CNN
F 2 "tl2c-footprint:JW1AFSN-12-F" H 8320 1140 60  0001 C CNN
F 3 "" H 8320 1140 60  0000 C CNN
F 4 "JW1AFSN-12-F" H 8450 1150 60  0001 C CNN "MFP"
F 5 "504961 - 62" H 8450 1150 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 8450 1150 60  0001 C CNN "Digikey-PN"
	2    8450 1150
	1    0    0    -1  
$EndComp
$Comp
L Relay_JW1AFSN12F REL102
U 2 1 584C93FA
P 8450 1550
F 0 "REL102" H 8450 1450 60  0000 C CNN
F 1 "Relay_EG" H 8450 1700 60  0000 C CNN
F 2 "tl2c-footprint:JW1AFSN-12-F" H 8320 1540 60  0001 C CNN
F 3 "" H 8320 1540 60  0000 C CNN
F 4 "JW1AFSN-12-F" H 8450 1550 60  0001 C CNN "MFP"
F 5 "504961 - 62" H 8450 1550 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 8450 1550 60  0001 C CNN "Digikey-PN"
	2    8450 1550
	1    0    0    -1  
$EndComp
$Comp
L Relay_JW1AFSN12F REL103
U 2 1 584C945E
P 8450 2000
F 0 "REL103" H 8450 1900 60  0000 C CNN
F 1 "Relay_OG" H 8450 2150 60  0000 C CNN
F 2 "tl2c-footprint:JW1AFSN-12-F" H 8320 1990 60  0001 C CNN
F 3 "" H 8320 1990 60  0000 C CNN
F 4 "JW1AFSN-12-F" H 8450 2000 60  0001 C CNN "MFP"
F 5 "504961 - 62" H 8450 2000 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 8450 2000 60  0001 C CNN "Digikey-PN"
	2    8450 2000
	1    0    0    -1  
$EndComp
Text Label 9675 1650 0    60   ~ 0
Neutral
Text Label 9100 1150 0    60   ~ 0
LineUG
Text Label 9075 1550 0    60   ~ 0
LineEG
Text Label 9125 2000 0    60   ~ 0
LineOG
Text Label 7175 1150 0    60   ~ 0
Lin
Text Label 7150 1575 2    60   ~ 0
Neutral
$Comp
L GND #PWR06
U 1 1 584CB28B
P 3850 3100
F 0 "#PWR06" H 3850 2850 50  0001 C CNN
F 1 "GND" H 3850 2950 50  0000 C CNN
F 2 "" H 3850 3100 50  0000 C CNN
F 3 "" H 3850 3100 50  0000 C CNN
	1    3850 3100
	1    0    0    -1  
$EndComp
Text Label 9625 1450 0    60   ~ 0
Neutral
Text Label 9625 1250 0    60   ~ 0
Neutral
$Comp
L CONN_01X02 P103
U 1 1 584CC850
P 2200 4050
F 0 "P103" H 2200 4200 50  0000 C CNN
F 1 "Spare" V 2300 4050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 2200 4050 50  0001 C CNN
F 3 "" H 2200 4050 50  0000 C CNN
F 4 "Value" H 2200 4050 60  0001 C CNN "MFP"
F 5 "Value" H 2200 4050 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 2200 4050 60  0001 C CNN "Digikey-PN"
	1    2200 4050
	1    0    0    -1  
$EndComp
Text Notes 6100 6050 0    60   ~ 0
TODO - Verify the values \nof the resistors for sharing\nthe IO lines.
$Sheet
S 1400 1150 1800 900 
U 584D9013
F0 "Power System" 60
F1 "PowerSystem.sch" 60
F2 "UbOut" I R 3200 1850 60 
F3 "U+Out" I R 3200 1350 60 
F4 "U+In" I L 1400 1350 60 
F5 "5V" I L 1400 1850 60 
$EndSheet
$Comp
L CONN_01X02 P101
U 1 1 584D9CD6
P 900 1400
F 0 "P101" H 900 1550 50  0000 C CNN
F 1 "12VDC" V 1000 1400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 900 1400 50  0001 C CNN
F 3 "" H 900 1400 50  0000 C CNN
F 4 "Value" H 900 1400 60  0001 C CNN "MFP"
F 5 "Value" H 900 1400 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 900 1400 60  0001 C CNN "Digikey-PN"
	1    900  1400
	-1   0    0    -1  
$EndComp
Text Label 3500 1350 2    60   ~ 0
U+
Text Label 3500 1850 2    60   ~ 0
Ub+
$Comp
L GND #PWR07
U 1 1 584DF6BA
P 1200 1600
F 0 "#PWR07" H 1200 1350 50  0001 C CNN
F 1 "GND" H 1200 1450 50  0000 C CNN
F 2 "" H 1200 1600 50  0000 C CNN
F 3 "" H 1200 1600 50  0000 C CNN
	1    1200 1600
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P TP103
U 1 1 584E2848
P 1400 2850
F 0 "TP103" H 1400 3120 50  0000 C CNN
F 1 "TPSDA" H 1400 3050 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1600 2850 50  0001 C CNN
F 3 "" H 1600 2850 50  0000 C CNN
	1    1400 2850
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P TP102
U 1 1 584E2A24
P 900 2850
F 0 "TP102" H 900 3120 50  0000 C CNN
F 1 "TPSCL" H 900 3050 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1100 2850 50  0001 C CNN
F 3 "" H 1100 2850 50  0000 C CNN
	1    900  2850
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
Text Notes 6675 850  0    60   ~ 0
240V AC Board
Text Notes 6100 6300 0    60   ~ 0
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
S 9000 2450 900  1150
U 585253A2
F0 "LED Driver" 60
F1 "LED_Driver.sch" 60
F2 "Relay_UG" I L 9000 3000 60 
F3 "Relay_EG" I L 9000 3200 60 
F4 "Relay_OG" I L 9000 3400 60 
F5 "LED_DRIVER_U+" I L 9000 2650 60 
F6 "LED_DRIVER_GND" I L 9000 3525 60 
$EndSheet
$Comp
L GND #PWR09
U 1 1 58541B90
P 5700 3425
F 0 "#PWR09" H 5700 3175 50  0001 C CNN
F 1 "GND" H 5700 3275 50  0000 C CNN
F 2 "" H 5700 3425 50  0000 C CNN
F 3 "" H 5700 3425 50  0000 C CNN
	1    5700 3425
	1    0    0    -1  
$EndComp
Text Label 4200 2750 0    60   ~ 0
RelayUG
Text Label 4200 2850 0    60   ~ 0
RelayEG
Text Label 4200 2950 0    60   ~ 0
RelayOG
$Comp
L TL3315NF160Q SW101
U 1 1 58559EF5
P 3400 2950
F 0 "SW101" V 3600 2950 60  0000 C CNN
F 1 "TL3315NF160Q" H 3850 3000 60  0001 C CNN
F 2 "tl2c-footprint:PTS525SM15SMTR2LFS" H 3400 2900 60  0001 C CNN
F 3 "" H 3400 2900 60  0000 C CNN
F 4 "Value" H 3400 2950 60  0001 C CNN "MFP"
F 5 "Value" H 3400 2950 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 3400 2950 60  0001 C CNN "Digikey-PN"
	1    3400 2950
	0    -1   -1   0   
$EndComp
NoConn ~ 3150 2850
NoConn ~ 3650 2850
$Comp
L LED D101
U 1 1 5856AA32
P 4650 3750
F 0 "D101" H 4650 3850 50  0000 C CNN
F 1 "LED_UG" H 4650 3650 50  0000 C CNN
F 2 "LEDs:LED_0805" H 4650 3750 50  0001 C CNN
F 3 "" H 4650 3750 50  0000 C CNN
	1    4650 3750
	0    -1   -1   0   
$EndComp
$Comp
L R R106
U 1 1 5856AB2B
P 4650 3300
F 0 "R106" V 4730 3300 50  0000 C CNN
F 1 "660Ω" V 4650 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4580 3300 50  0001 C CNN
F 3 "" H 4650 3300 50  0000 C CNN
	1    4650 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5856AF1B
P 4650 4050
F 0 "#PWR010" H 4650 3800 50  0001 C CNN
F 1 "GND" H 4650 3900 50  0000 C CNN
F 2 "" H 4650 4050 50  0000 C CNN
F 3 "" H 4650 4050 50  0000 C CNN
	1    4650 4050
	1    0    0    -1  
$EndComp
$Comp
L LED D102
U 1 1 5856B277
P 4950 3750
F 0 "D102" H 4950 3850 50  0000 C CNN
F 1 "LED_EG" H 4950 3650 50  0000 C CNN
F 2 "LEDs:LED_0805" H 4950 3750 50  0001 C CNN
F 3 "" H 4950 3750 50  0000 C CNN
	1    4950 3750
	0    -1   -1   0   
$EndComp
$Comp
L R R107
U 1 1 5856B27D
P 4950 3300
F 0 "R107" V 5030 3300 50  0000 C CNN
F 1 "660Ω" V 4950 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4880 3300 50  0001 C CNN
F 3 "" H 4950 3300 50  0000 C CNN
	1    4950 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5856B284
P 4950 4050
F 0 "#PWR011" H 4950 3800 50  0001 C CNN
F 1 "GND" H 4950 3900 50  0000 C CNN
F 2 "" H 4950 4050 50  0000 C CNN
F 3 "" H 4950 4050 50  0000 C CNN
	1    4950 4050
	1    0    0    -1  
$EndComp
$Comp
L LED D103
U 1 1 5856B503
P 5250 3750
F 0 "D103" H 5250 3850 50  0000 C CNN
F 1 "LED_OG" H 5250 3650 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5250 3750 50  0001 C CNN
F 3 "" H 5250 3750 50  0000 C CNN
	1    5250 3750
	0    -1   -1   0   
$EndComp
$Comp
L R R108
U 1 1 5856B509
P 5250 3300
F 0 "R108" V 5330 3300 50  0000 C CNN
F 1 "660Ω" V 5250 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5180 3300 50  0001 C CNN
F 3 "" H 5250 3300 50  0000 C CNN
	1    5250 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5856B510
P 5250 4050
F 0 "#PWR012" H 5250 3800 50  0001 C CNN
F 1 "GND" H 5250 3900 50  0000 C CNN
F 2 "" H 5250 4050 50  0000 C CNN
F 3 "" H 5250 4050 50  0000 C CNN
	1    5250 4050
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR013
U 1 1 5856E00B
P 7575 3600
F 0 "#PWR013" H 7575 3350 50  0001 C CNN
F 1 "GNDA" H 7575 3450 50  0000 C CNN
F 2 "" H 7575 3600 50  0000 C CNN
F 3 "" H 7575 3600 50  0000 C CNN
	1    7575 3600
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P TP104
U 1 1 58571150
P 4750 2700
F 0 "TP104" H 4750 2970 50  0000 C CNN
F 1 "TP_RLY_UG" H 4750 2900 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 4950 2700 50  0001 C CNN
F 3 "" H 4950 2700 50  0000 C CNN
	1    4750 2700
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P TP105
U 1 1 5857134A
P 5100 2800
F 0 "TP105" H 5100 3070 50  0000 C CNN
F 1 "TP_RLY_EG" H 5100 3000 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 5300 2800 50  0001 C CNN
F 3 "" H 5300 2800 50  0000 C CNN
	1    5100 2800
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P TP106
U 1 1 585714D0
P 5450 2900
F 0 "TP106" H 5450 3170 50  0000 C CNN
F 1 "TP_RLY_OG" H 5450 3100 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 5650 2900 50  0001 C CNN
F 3 "" H 5650 2900 50  0000 C CNN
	1    5450 2900
	1    0    0    -1  
$EndComp
Text Notes 7225 4100 0    60   ~ 0
TODO - Change the relay to  AZ7705T-1A-12DEF - Conrad.\nor FIN 43.41.7 12V - Reichelt
Text Label 5600 2500 2    60   ~ 0
U+
$Comp
L TerminalBlock_1x6 P108
U 1 1 586699C9
P 10200 1400
F 0 "P108" H 10200 1750 50  0000 C CNN
F 1 "LED_OUT" H 10200 1050 50  0000 C CNN
F 2 "tl2c-footprint:Spring_Terminal_Block_1_x_6_5mm" H 10200 1400 50  0001 C CNN
F 3 "" H 10200 1400 50  0000 C CNN
F 4 "Value" H 10200 1400 60  0001 C CNN "MFP"
F 5 "Value" H 10200 1400 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 10200 1400 60  0001 C CNN "Digikey-PN"
	1    10200 1400
	1    0    0    -1  
$EndComp
Text Label 10800 1250 2    60   ~ 0
Neutral
Text Label 10800 1450 2    60   ~ 0
Neutral
Text Label 10800 1650 2    60   ~ 0
Neutral
Text Label 10800 1150 2    60   ~ 0
LineUG
Text Label 10800 1350 2    60   ~ 0
LineEG
Text Label 10800 1550 2    60   ~ 0
LineOG
Text Label 6375 1250 0    60   ~ 0
Neutral
Text Label 6375 1150 0    60   ~ 0
Lin
$Comp
L Term_01X02 P106
U 1 1 58669AAE
P 6850 1200
F 0 "P106" H 6850 1350 50  0000 C CNN
F 1 "240VAC" H 6850 1050 50  0000 C CNN
F 2 "tl2c-footprint:Spring_Terminal_Block_1_x_2_5mm" H 6850 1200 50  0001 C CNN
F 3 "" H 6850 1200 50  0000 C CNN
F 4 "Value" H 6850 1200 60  0001 C CNN "MFP"
F 5 "Value" H 6850 1200 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 6850 1200 60  0001 C CNN "Digikey-PN"
	1    6850 1200
	1    0    0    -1  
$EndComp
$Comp
L C C102
U 1 1 58675769
P 3050 3350
F 0 "C102" H 3075 3450 50  0000 L CNN
F 1 "100n 50V" H 3200 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3088 3200 50  0001 C CNN
F 3 "" H 3050 3350 50  0000 C CNN
	1    3050 3350
	1    0    0    -1  
$EndComp
Text Label 3700 4275 0    60   ~ 0
~Reset
$Comp
L CONN_02X03 P104
U 1 1 584C357B
P 4500 1200
F 0 "P104" H 4500 1400 50  0000 C CNN
F 1 "TPI Header" H 4500 1000 50  0000 C CNN
F 2 "tl2c-footprint:TC2030-IDC-FP_ISP_Connector" H 4500 0   50  0001 C CNN
F 3 "" H 4500 0   50  0000 C CNN
F 4 "Value" H 4500 1200 60  0001 C CNN "MFP"
F 5 "Value" H 4500 1200 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 4500 1200 60  0001 C CNN "Digikey-PN"
	1    4500 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5867873E
P 3050 3600
F 0 "#PWR014" H 3050 3350 50  0001 C CNN
F 1 "GND" H 3050 3450 50  0000 C CNN
F 2 "" H 3050 3600 50  0000 C CNN
F 3 "" H 3050 3600 50  0000 C CNN
	1    3050 3600
	1    0    0    -1  
$EndComp
Text Label 2200 3050 0    60   ~ 0
~Reset
Text Label 3850 1300 0    60   ~ 0
~Reset
$Comp
L F_Small F101
U 1 1 586AB129
P 7400 1150
F 0 "F101" H 7360 1210 50  0000 L CNN
F 1 "500mA" H 7280 1090 50  0000 L CNN
F 2 "tl2c-footprint:Fuse_TE5_Littlefuse-ESKA_887_O14" H 7150 1300 50  0001 C CNN
F 3 "" H 7400 1150 50  0000 C CNN
F 4 "Value" H 7400 1150 60  0001 C CNN "MFP"
F 5 "Value" H 7400 1150 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 7400 1150 60  0001 C CNN "Digikey-PN"
F 7 "MIK-FLINK 0,5A" H 7400 1150 60  0001 C CNN "Reichelt-PN"
	1    7400 1150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P105
U 1 1 586D2545
P 6000 3000
F 0 "P105" H 6000 3450 50  0000 C CNN
F 1 "LED_DRIVER" V 6100 3000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 6000 3000 50  0001 C CNN
F 3 "" H 6000 3000 50  0000 C CNN
F 4 "Value" H 6000 3000 60  0001 C CNN "MFP"
F 5 "Value" H 6000 3000 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 6000 3000 60  0001 C CNN "Digikey-PN"
	1    6000 3000
	1    0    0    -1  
$EndComp
Text Label 5500 3250 0    60   ~ 0
Ub+
Text Label 5400 3050 0    60   ~ 0
GPIO_PA6
Text Label 5400 3150 0    60   ~ 0
GPIO_PB2
Text Label 1000 4000 0    60   ~ 0
GPIO_PA6
Text Label 1000 4100 0    60   ~ 0
GPIO_PB2
$Comp
L CONN_01X08 P107
U 1 1 586D6350
P 7275 3000
F 0 "P107" H 7275 3450 50  0000 C CNN
F 1 "LED_DRIVER" V 7375 3000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 7275 3000 50  0001 C CNN
F 3 "" H 7275 3000 50  0000 C CNN
F 4 "Value" H 7275 3000 60  0001 C CNN "MFP"
F 5 "Value" H 7275 3000 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 7275 3000 60  0001 C CNN "Digikey-PN"
	1    7275 3000
	-1   0    0    -1  
$EndComp
NoConn ~ 7475 3050
NoConn ~ 7475 3150
NoConn ~ 7475 3250
$Comp
L TEST_1P TP107
U 1 1 586D80EA
P 1525 3900
F 0 "TP107" H 1525 4170 50  0000 C CNN
F 1 "PA6" H 1525 4100 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1725 3900 50  0001 C CNN
F 3 "" H 1725 3900 50  0000 C CNN
	1    1525 3900
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P TP108
U 1 1 586D81E0
P 1850 3900
F 0 "TP108" H 1850 4170 50  0000 C CNN
F 1 "PB0" H 1850 4100 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 2050 3900 50  0001 C CNN
F 3 "" H 2050 3900 50  0000 C CNN
	1    1850 3900
	1    0    0    -1  
$EndComp
NoConn ~ 4750 1200
Text Label 6600 4950 2    60   ~ 0
TPIDATA
Text Label 5800 5500 2    60   ~ 0
TPICLK
Text Label 5800 5700 2    60   ~ 0
GPIO_PB2
Wire Wire Line
	2600 4600 3100 4600
Wire Wire Line
	2850 4600 2850 4700
Connection ~ 2850 4600
Wire Wire Line
	4750 1100 5000 1100
Wire Wire Line
	4750 1300 4850 1300
Wire Wire Line
	4250 1100 3850 1100
Wire Wire Line
	4250 1200 3850 1200
Wire Wire Line
	4250 1300 3850 1300
Wire Wire Line
	4850 1300 4850 1400
Wire Wire Line
	2850 5000 2850 5100
Wire Wire Line
	2750 2375 2750 2550
Wire Wire Line
	3700 6050 3700 6200
Wire Wire Line
	5400 5600 6350 5600
Wire Wire Line
	5400 5300 5800 5300
Wire Wire Line
	6650 5600 6950 5600
Wire Wire Line
	5400 5200 6950 5200
Wire Wire Line
	7250 5200 7450 5200
Wire Wire Line
	7450 5200 7450 5900
Wire Wire Line
	1150 2950 1550 2950
Wire Wire Line
	600  3050 1550 3050
Wire Wire Line
	1550 3150 1400 3150
Wire Wire Line
	1400 3150 1400 3250
Wire Wire Line
	8850 1550 9575 1550
Wire Wire Line
	8850 2000 9625 2000
Wire Wire Line
	7500 1150 8050 1150
Wire Wire Line
	8050 1550 7900 1550
Wire Wire Line
	7900 2000 8050 2000
Wire Wire Line
	7900 1150 7900 2000
Connection ~ 7900 1550
Wire Wire Line
	8850 1150 10000 1150
Wire Wire Line
	9575 1550 9575 1350
Wire Wire Line
	9575 1350 10000 1350
Wire Wire Line
	9625 2000 9625 1550
Wire Wire Line
	9625 1550 10000 1550
Wire Wire Line
	10000 1650 9675 1650
Wire Wire Line
	10000 1450 9625 1450
Wire Wire Line
	10000 1250 9625 1250
Wire Wire Line
	1000 4000 2000 4000
Wire Wire Line
	1000 4100 2000 4100
Wire Wire Line
	3650 3050 3850 3050
Wire Wire Line
	3850 3050 3850 3100
Wire Wire Line
	1100 1350 1400 1350
Wire Wire Line
	3200 1350 3500 1350
Wire Wire Line
	3200 1850 3500 1850
Wire Wire Line
	1100 1450 1200 1450
Wire Wire Line
	1200 1450 1200 1600
Wire Wire Line
	900  2850 900  3050
Connection ~ 900  3050
Wire Wire Line
	1400 2850 1400 2950
Connection ~ 1400 2950
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
	7475 2750 7925 2750
Wire Wire Line
	7925 2750 7925 3000
Wire Wire Line
	7875 3200 7875 2850
Wire Wire Line
	7875 2850 7475 2850
Wire Wire Line
	7475 2950 7825 2950
Wire Wire Line
	7825 2950 7825 3400
Wire Wire Line
	5400 4600 6050 4600
Wire Wire Line
	6050 4700 5400 4700
Wire Wire Line
	5400 4800 6050 4800
Wire Wire Line
	5800 2650 5600 2650
Wire Wire Line
	5600 2650 5600 2500
Wire Notes Line
	6325 700  10951 696 
Wire Notes Line
	10950 700  10950 3900
Wire Notes Line
	10950 3900 6325 3900
Wire Notes Line
	6325 3900 6325 700 
Wire Wire Line
	4200 2750 5800 2750
Wire Wire Line
	4200 2850 5800 2850
Wire Wire Line
	4200 2950 5800 2950
Wire Notes Line
	6175 2850 7025 2850
Wire Notes Line
	6175 2750 7025 2750
Wire Notes Line
	7025 2650 6175 2650
Wire Notes Line
	6175 2950 7025 2950
Wire Notes Line
	7025 3350 6175 3350
Wire Wire Line
	4650 3950 4650 4050
Wire Wire Line
	4650 3150 4650 2750
Connection ~ 4650 2750
Wire Wire Line
	4950 3950 4950 4050
Wire Wire Line
	4950 3150 4950 2850
Connection ~ 4950 2850
Wire Wire Line
	5250 3950 5250 4050
Wire Wire Line
	5250 3150 5250 2950
Connection ~ 5250 2950
Wire Wire Line
	4750 2700 4750 2750
Connection ~ 4750 2750
Wire Wire Line
	5100 2800 5100 2850
Connection ~ 5100 2850
Wire Wire Line
	5450 2900 5450 2950
Connection ~ 5450 2950
Wire Wire Line
	2200 3050 3150 3050
Wire Wire Line
	7100 1250 7150 1250
Wire Wire Line
	7150 1250 7150 1575
Wire Wire Line
	10450 1150 10800 1150
Wire Wire Line
	10450 1250 10800 1250
Wire Wire Line
	10450 1350 10800 1350
Wire Wire Line
	10450 1450 10800 1450
Wire Wire Line
	10450 1550 10800 1550
Wire Wire Line
	10450 1650 10800 1650
Wire Wire Line
	6650 1150 6375 1150
Wire Wire Line
	6650 1250 6375 1250
Wire Wire Line
	3700 4350 3700 4275
Wire Wire Line
	3050 3050 3050 3200
Connection ~ 3050 3050
Wire Wire Line
	3050 3500 3050 3600
Wire Wire Line
	6000 5600 6000 4950
Wire Wire Line
	6000 4950 6600 4950
Connection ~ 6000 5600
Wire Wire Line
	2750 2850 2750 3050
Connection ~ 2750 3050
Wire Wire Line
	4650 3450 4650 3550
Wire Wire Line
	4950 3450 4950 3550
Wire Wire Line
	5250 3450 5250 3550
Wire Wire Line
	7100 1150 7300 1150
Connection ~ 7900 1150
Wire Wire Line
	5800 3350 5700 3350
Wire Wire Line
	5700 3350 5700 3425
Wire Wire Line
	5800 3050 5400 3050
Wire Wire Line
	5800 3150 5400 3150
Wire Wire Line
	5800 3250 5500 3250
Wire Wire Line
	7475 3350 7575 3350
Wire Wire Line
	7575 3350 7575 3600
Wire Wire Line
	1525 3900 1525 4000
Connection ~ 1525 4000
Wire Wire Line
	1850 3900 1850 4100
Connection ~ 1850 4100
Wire Wire Line
	7475 2650 9000 2650
Wire Wire Line
	7925 3000 9000 3000
Wire Wire Line
	7875 3200 9000 3200
Wire Wire Line
	7825 3400 9000 3400
Wire Wire Line
	9000 3525 7575 3525
Connection ~ 7575 3525
Wire Wire Line
	5400 5700 6950 5700
Wire Wire Line
	7250 5700 7450 5700
Connection ~ 7450 5700
Wire Wire Line
	5400 5500 5800 5500
$Comp
L CONN_01X02 P109
U 1 1 589A46DF
P 900 1900
F 0 "P109" H 900 2050 50  0000 C CNN
F 1 "5VDC" V 1000 1900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 900 1900 50  0001 C CNN
F 3 "" H 900 1900 50  0000 C CNN
F 4 "Value" H 900 1900 60  0001 C CNN "MFP"
F 5 "Value" H 900 1900 60  0001 C CNN "Conrad-PN"
F 6 "Value" H 900 1900 60  0001 C CNN "Digikey-PN"
	1    900  1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1100 1850 1400 1850
$Comp
L GND #PWR015
U 1 1 589A5184
P 1250 2100
F 0 "#PWR015" H 1250 1850 50  0001 C CNN
F 1 "GND" H 1250 1950 50  0000 C CNN
F 2 "" H 1250 2100 50  0000 C CNN
F 3 "" H 1250 2100 50  0000 C CNN
	1    1250 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1950 1250 1950
Wire Wire Line
	1250 1950 1250 2100
Text Notes 550  2200 0    60   ~ 0
Ub+ for \nprogramming
Text Label 3850 1200 0    60   ~ 0
TPICLK
Text Notes 550  3850 0    60   ~ 0
GPIO_PA6 -\nRelay Interrupt
$EndSCHEMATC
