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
F 2 "Socket_Strips:Socket_Strip_Straight_2x20_Pitch2.54mm" H 2250 3800 60  0001 C CNN
F 3 "" H 2250 3800 60  0000 C CNN
	1    2650 2800
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
L GND #PWR01
U 1 1 5947A28B
P 3250 4750
F 0 "#PWR01" H 3250 4500 50  0001 C CNN
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
Text Label 6500 4600 2    60   ~ 0
I2C1_SDA
Text Label 6550 5300 3    60   ~ 0
GND
Text Label 6500 5000 2    60   ~ 0
GPIO_4
Text Label 6500 5200 2    60   ~ 0
GPIO_5
Text Notes 5650 1500 0    60   ~ 0
Raspberry Pi\nExpansion
Text Notes 5850 4250 0    60   ~ 0
TL2C I2C Expansion
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
Text Notes 5150 5600 0    60   ~ 0
RJ45 - Connector as a \ngeneral  purpose  connector \nto the Raspberry Pi
$Comp
L GND #PWR02
U 1 1 5997F2C0
P 6550 5650
F 0 "#PWR02" H 6550 5400 50  0001 C CNN
F 1 "GND" H 6550 5500 50  0000 C CNN
F 2 "" H 6550 5650 60  0000 C CNN
F 3 "" H 6550 5650 60  0000 C CNN
	1    6550 5650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P2
U 1 1 5997F300
P 5850 4850
F 0 "P2" H 5850 5300 50  0000 C CNN
F 1 "CONN_01X08" V 5950 4850 50  0000 C CNN
F 2 "tl2c-footprint:RJ45_8P8C" H 5850 4850 60  0001 C CNN
F 3 "" H 5850 4850 60  0000 C CNN
	1    5850 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6050 4500 6550 4500
Wire Wire Line
	6550 4500 6550 5650
Wire Wire Line
	6050 4700 6550 4700
Connection ~ 6550 4700
Wire Wire Line
	6050 4900 6550 4900
Connection ~ 6550 4900
Wire Wire Line
	6050 5100 6550 5100
Connection ~ 6550 5100
Wire Wire Line
	6050 4600 6500 4600
Wire Wire Line
	6050 4800 6500 4800
Wire Wire Line
	6050 5000 6500 5000
Wire Wire Line
	6050 5200 6500 5200
Text Label 6500 4800 2    60   ~ 0
I2C1_SCL
$EndSCHEMATC
