EESchema Schematic File Version 2
LIBS:Rpi_Adapter_Symbols
LIBS:ce_header
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
LIBS:Rpi_Adapter-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RaspberryPi_3b MCU1
U 1 1 59479884
P 2650 2800
F 0 "MCU1" H 3200 1350 60  0000 C CNN
F 1 "RaspberryPi_3b" H 2600 3250 60  0000 C CNN
F 2 "Rpi_Adapter_Footprints:Pin_Header_Straight_2x20_Pitch2.54mm" H 2250 3800 60  0001 C CNN
F 3 "" H 2250 3800 60  0000 C CNN
	1    2650 2800
	1    0    0    -1  
$EndComp
$Comp
L CE_Header H1
U 1 1 594798FD
P 9000 4400
F 0 "H1" H 9700 3200 60  0000 C CNN
F 1 "CE_Header" H 9000 5500 60  0000 C CNN
F 2 "CE_Header:CE_Header" H 8600 4800 60  0001 C CNN
F 3 "" H 8600 4800 60  0000 C CNN
	1    9000 4400
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 P2
U 1 1 594799AC
P 5850 4600
F 0 "P2" H 5850 4800 50  0000 C CNN
F 1 "CONN_02X03" H 5850 4400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 5850 3400 60  0001 C CNN
F 3 "" H 5850 3400 60  0000 C CNN
	1    5850 4600
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X20 P1
U 1 1 59479B40
P 5850 2650
F 0 "P1" H 5850 3700 50  0000 C CNN
F 1 "CONN_02X20" V 5850 2650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20_Pitch2.54mm" H 5850 1700 60  0001 C CNN
F 3 "" H 5850 1700 60  0000 C CNN
	1    5850 2650
	1    0    0    -1  
$EndComp
Text Label 5600 1700 2    60   ~ 0
3V3
Text Label 6100 1700 0    60   ~ 0
5V
Text Label 6100 1800 0    60   ~ 0
5V
Text Label 5600 2500 2    60   ~ 0
3V3
Text Label 5600 2000 2    60   ~ 0
GPIO_4
Text Label 5600 3100 2    60   ~ 0
GPIO_5
Text Label 5600 3200 2    60   ~ 0
GPIO_6
Text Label 6100 3200 0    60   ~ 0
GPIO_12
Text Label 5600 3300 2    60   ~ 0
GPIO_13
Text Label 6100 3400 0    60   ~ 0
GPIO_16
Text Label 5600 2200 2    60   ~ 0
GPIO_17
Text Label 6100 2200 0    60   ~ 0
GPIO_18
Text Label 5600 3400 2    60   ~ 0
GPIO_19
Text Label 6100 3500 0    60   ~ 0
GPIO_20
Text Label 6100 3600 0    60   ~ 0
GPIO_21
Text Label 5600 2400 2    60   ~ 0
GPIO_22
Text Label 6100 2400 0    60   ~ 0
GPIO_23
Text Label 6100 2500 0    60   ~ 0
GPIO_24
Text Label 6100 2700 0    60   ~ 0
GPIO_25
Text Label 5600 3500 2    60   ~ 0
GPIO_26
Text Label 5600 2300 2    60   ~ 0
GPIO_27
Text Label 6100 2000 0    60   ~ 0
UART0_Tx
Text Label 6100 2100 0    60   ~ 0
UART0_Rx
Text Label 5600 2600 2    60   ~ 0
SPI0_MOSI
Text Label 5600 2700 2    60   ~ 0
SPI0_MISO
Text Label 5600 2800 2    60   ~ 0
SPI0_SCLK
Text Label 6100 2800 0    60   ~ 0
SPI0_CS0
Text Label 6100 2900 0    60   ~ 0
SPI0_CS1
Text Label 5600 1800 2    60   ~ 0
I2C1_SDA
Text Label 5600 1900 2    60   ~ 0
I2C1_SCL
Text Label 6100 1900 0    60   ~ 0
GND
Text Label 5600 2100 2    60   ~ 0
GND
Text Label 6100 2300 0    60   ~ 0
GND
Text Label 6100 2600 0    60   ~ 0
GND
Text Label 5600 2900 2    60   ~ 0
GND
Text Label 6100 3100 0    60   ~ 0
GND
Text Label 6100 3300 0    60   ~ 0
GND
Text Label 5600 3600 2    60   ~ 0
GND
NoConn ~ 5600 3000
NoConn ~ 6100 3000
Text Label 4050 1500 2    60   ~ 0
3V3
Text Label 1100 1500 0    60   ~ 0
5V
Text Label 1550 3300 2    60   ~ 0
I2C1_SDA
Text Label 1550 3400 2    60   ~ 0
I2C1_SCL
$Comp
L GND #PWR1
U 1 1 5947A28B
P 3250 4750
F 0 "#PWR1" H 3250 4500 50  0001 C CNN
F 1 "GND" H 3250 4600 50  0000 C CNN
F 2 "" H 3250 4750 60  0000 C CNN
F 3 "" H 3250 4750 60  0000 C CNN
	1    3250 4750
	1    0    0    -1  
$EndComp
Text Label 3250 4650 2    60   ~ 0
GND
Text Label 3700 1800 0    60   ~ 0
GPIO_4
Text Label 3700 2400 0    60   ~ 0
GPIO_17
Text Label 3700 3400 0    60   ~ 0
GPIO_27
Text Label 3700 2900 0    60   ~ 0
GPIO_22
Text Label 1550 2000 2    60   ~ 0
SPI0_MOSI
Text Label 1550 2100 2    60   ~ 0
SPI0_MISO
Text Label 1550 2200 2    60   ~ 0
SPI0_SCLK
Text Label 3700 1900 0    60   ~ 0
GPIO_5
Text Label 3700 2000 0    60   ~ 0
GPIO_6
Text Label 3700 2200 0    60   ~ 0
GPIO_13
Text Label 3700 2600 0    60   ~ 0
GPIO_19
Text Label 3700 3300 0    60   ~ 0
GPIO_26
Text Label 3700 3700 0    60   ~ 0
UART0_Tx
Text Label 3700 3800 0    60   ~ 0
UART0_Rx
Text Label 3700 2500 0    60   ~ 0
GPIO_18
Text Label 3700 3000 0    60   ~ 0
GPIO_23
Text Label 3700 3100 0    60   ~ 0
GPIO_24
Text Label 3700 3200 0    60   ~ 0
GPIO_25
Text Label 1550 2400 2    60   ~ 0
SPI0_CS0
Text Label 1550 2500 2    60   ~ 0
SPI0_CS1
Text Label 3700 2100 0    60   ~ 0
GPIO_12
Text Label 3700 2300 0    60   ~ 0
GPIO_16
Text Label 3700 2700 0    60   ~ 0
GPIO_20
Text Label 3700 2800 0    60   ~ 0
GPIO_21
Text Label 8000 3600 2    60   ~ 0
5V
Text Label 10000 4600 0    60   ~ 0
3V3
Text Label 7000 3800 0    60   ~ 0
SPI0_MOSI
Text Label 10950 3800 2    60   ~ 0
SPI0_MISO
Text Label 7000 4000 0    60   ~ 0
SPI0_SCLK
Text Label 7000 4200 0    60   ~ 0
UART0_Tx
Text Label 10950 4200 2    60   ~ 0
UART0_Rx
Text Label 8000 5400 2    60   ~ 0
GND
Text Label 10000 4400 0    60   ~ 0
GND
Text Label 10950 4800 2    60   ~ 0
I2C1_SDA
Text Label 7000 4800 0    60   ~ 0
I2C1_SCL
Text Label 10950 4000 2    60   ~ 0
SPI0_CS0
Text Label 5600 4500 2    60   ~ 0
I2C1_SDA
Text Label 5600 4600 2    60   ~ 0
I2C1_SCL
Text Label 5600 4700 2    60   ~ 0
GND
Text Label 6100 4500 0    60   ~ 0
GPIO_4
Text Label 6100 4600 0    60   ~ 0
GPIO_5
Text Label 6100 4700 0    60   ~ 0
GPIO_6
Text Label 8000 5000 2    60   ~ 0
GPIO_12
Text Label 10000 5000 0    60   ~ 0
GPIO_13
Text Label 8000 5200 2    60   ~ 0
GPIO_16
Text Label 10000 5200 0    60   ~ 0
GPIO_17
Text Notes 5650 1500 0    60   ~ 0
Raspberry Pi\nExpansion
Text Notes 5450 4350 0    60   ~ 0
TL2C I2C Expansion
Text Notes 8700 3100 0    60   ~ 0
CE Header\nExpansion
Text Notes 2400 1200 0    60   ~ 0
Raspberry Pi\nConnection
Wire Wire Line
	2250 4400 2250 4650
Wire Wire Line
	2250 4650 3250 4650
Wire Wire Line
	2950 4650 2950 4400
Wire Wire Line
	2350 4400 2350 4650
Connection ~ 2350 4650
Wire Wire Line
	2450 4400 2450 4650
Connection ~ 2450 4650
Wire Wire Line
	2550 4400 2550 4650
Connection ~ 2550 4650
Wire Wire Line
	2650 4400 2650 4650
Connection ~ 2650 4650
Wire Wire Line
	2750 4400 2750 4650
Connection ~ 2750 4650
Wire Wire Line
	2850 4400 2850 4650
Connection ~ 2850 4650
Wire Wire Line
	3250 4650 3250 4750
Connection ~ 2950 4650
Wire Wire Line
	1550 1600 1100 1600
Wire Wire Line
	1100 1600 1100 1500
Wire Wire Line
	1100 1500 1550 1500
Wire Wire Line
	3700 1600 4050 1600
Wire Wire Line
	4050 1600 4050 1500
Wire Wire Line
	4050 1500 3700 1500
Wire Wire Line
	8000 3800 7000 3800
Wire Wire Line
	8000 4000 7000 4000
Wire Wire Line
	10000 3800 10950 3800
Wire Wire Line
	10000 4000 10950 4000
Wire Wire Line
	10000 4800 10950 4800
Wire Wire Line
	8000 4800 7000 4800
$Comp
L R R2
U 1 1 594806C0
P 7600 3300
F 0 "R2" V 7680 3300 50  0000 C CNN
F 1 "4k7" V 7600 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7530 3300 30  0001 C CNN
F 3 "" H 7600 3300 30  0000 C CNN
	1    7600 3300
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 59480738
P 7800 3300
F 0 "R3" V 7880 3300 50  0000 C CNN
F 1 "4k7" V 7800 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7730 3300 30  0001 C CNN
F 3 "" H 7800 3300 30  0000 C CNN
	1    7800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3450 7600 3800
Connection ~ 7600 3800
Wire Wire Line
	7800 3450 7800 4000
Connection ~ 7800 4000
Wire Wire Line
	7800 3000 7800 3150
Wire Wire Line
	7000 3000 7800 3000
Wire Wire Line
	7600 3000 7600 3150
Connection ~ 7600 3000
Text Label 7000 3000 0    60   ~ 0
3V3
$Comp
L R R1
U 1 1 594808E4
P 7550 4550
F 0 "R1" V 7630 4550 50  0000 C CNN
F 1 "4k7" V 7550 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7480 4550 30  0001 C CNN
F 3 "" H 7550 4550 30  0000 C CNN
	1    7550 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4800 7550 4700
Connection ~ 7550 4800
Wire Wire Line
	7550 4400 7550 4300
Wire Wire Line
	7550 4300 7000 4300
Text Label 7000 4300 0    60   ~ 0
3V3
$Comp
L R R4
U 1 1 594809B3
P 10100 3300
F 0 "R4" V 10180 3300 50  0000 C CNN
F 1 "4k7" V 10100 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 10030 3300 30  0001 C CNN
F 3 "" H 10100 3300 30  0000 C CNN
	1    10100 3300
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 59480A2F
P 10300 3300
F 0 "R5" V 10380 3300 50  0000 C CNN
F 1 "4k7" V 10300 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 10230 3300 30  0001 C CNN
F 3 "" H 10300 3300 30  0000 C CNN
	1    10300 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3450 10100 3800
Connection ~ 10100 3800
Wire Wire Line
	10300 3450 10300 4000
Connection ~ 10300 4000
Wire Wire Line
	10100 3150 10100 3000
Wire Wire Line
	10100 3000 10900 3000
Wire Wire Line
	10300 3000 10300 3150
Connection ~ 10300 3000
$Comp
L R R6
U 1 1 59480C1D
P 10400 4500
F 0 "R6" V 10480 4500 50  0000 C CNN
F 1 "4k7" V 10400 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 10330 4500 30  0001 C CNN
F 3 "" H 10400 4500 30  0000 C CNN
	1    10400 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 4800 10400 4650
Connection ~ 10400 4800
Wire Wire Line
	10400 4350 10950 4350
Text Label 10950 4350 2    60   ~ 0
3V3
Text Label 10900 3000 2    60   ~ 0
3V3
$Comp
L R R8
U 1 1 59483847
P 10300 4200
F 0 "R8" V 10380 4200 50  0000 C CNN
F 1 "0" V 10300 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 10230 4200 30  0001 C CNN
F 3 "" H 10300 4200 30  0000 C CNN
	1    10300 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	10000 4200 10150 4200
Wire Wire Line
	10450 4200 10950 4200
$Comp
L R R7
U 1 1 59483A0A
P 7700 4200
F 0 "R7" V 7780 4200 50  0000 C CNN
F 1 "0" V 7700 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7630 4200 30  0001 C CNN
F 3 "" H 7700 4200 30  0000 C CNN
	1    7700 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 4200 7850 4200
Wire Wire Line
	7550 4200 7000 4200
$EndSCHEMATC
