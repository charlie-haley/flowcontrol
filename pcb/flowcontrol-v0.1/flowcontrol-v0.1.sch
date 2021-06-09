EESchema Schematic File Version 4
EELAYER 30 0
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
L flowcontrol-v0.1-rescue:PICO_RP2040-Pico_rp2040 U1
U 1 1 604A5D56
P 4050 4400
F 0 "U1" H 4025 5765 50  0000 C CNN
F 1 "PICO_RP2040" H 4025 5674 50  0000 C CNN
F 2 "" H 3950 5850 50  0001 C CNN
F 3 "" H 3950 5850 50  0001 C CNN
	1    4050 4400
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:R_Small-Device R1
U 1 1 604B1754
P 5700 4600
F 0 "R1" H 5759 4646 50  0000 L CNN
F 1 "10k Ω" H 5759 4555 50  0000 L CNN
F 2 "" H 5700 4600 50  0001 C CNN
F 3 "~" H 5700 4600 50  0001 C CNN
	1    5700 4600
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:Conn_01x02_Female-Connector J3
U 1 1 604C40D7
P 5900 4400
F 0 "J3" H 5928 4376 50  0000 L CNN
F 1 "Temp Sensor (10k Thermistor)" H 5928 4285 50  0000 L CNN
F 2 "" H 5900 4400 50  0001 C CNN
F 3 "~" H 5900 4400 50  0001 C CNN
	1    5900 4400
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:R_Small-Device R2
U 1 1 604C8F5D
P 5700 3750
F 0 "R2" H 5759 3796 50  0000 L CNN
F 1 "10k Ω" H 5759 3705 50  0000 L CNN
F 2 "" H 5700 3750 50  0001 C CNN
F 3 "~" H 5700 3750 50  0001 C CNN
	1    5700 3750
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:Conn_01x02_Female-Connector J4
U 1 1 604C8F64
P 5900 3550
F 0 "J4" H 5928 3526 50  0000 L CNN
F 1 "Temp Sensor (10k Thermistor)" H 5928 3435 50  0000 L CNN
F 2 "" H 5900 3550 50  0001 C CNN
F 3 "~" H 5900 3550 50  0001 C CNN
	1    5900 3550
	1    0    0    -1  
$EndComp
Text GLabel 5600 4500 0    50   Input ~ 0
GP26
Text GLabel 5600 3650 0    50   Input ~ 0
GP27
Text GLabel 4650 4250 2    50   Input ~ 0
GP27
Text GLabel 4650 4350 2    50   Input ~ 0
GP26
$Comp
L flowcontrol-v0.1-rescue:Conn_01x04_Male-Connector J1
U 1 1 604CC3B7
P 1250 3650
F 0 "J1" H 1358 3931 50  0000 C CNN
F 1 "Fan 1" H 1358 3840 50  0000 C CNN
F 2 "" H 1250 3650 50  0001 C CNN
F 3 "~" H 1250 3650 50  0001 C CNN
	1    1250 3650
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:Conn_01x04_Male-Connector J2
U 1 1 604CDDAF
P 1250 4300
F 0 "J2" H 1358 4581 50  0000 C CNN
F 1 "Fan 2" H 1358 4490 50  0000 C CNN
F 2 "" H 1250 4300 50  0001 C CNN
F 3 "~" H 1250 4300 50  0001 C CNN
	1    1250 4300
	1    0    0    -1  
$EndComp
Text GLabel 1450 3550 2    50   Input ~ 0
GND
Text GLabel 1450 4200 2    50   Input ~ 0
GND
Text GLabel 1450 3850 2    50   Input ~ 0
GP6
Text GLabel 1450 4500 2    50   Input ~ 0
GP7
Text GLabel 1450 3650 2    50   Input ~ 0
12v
Text GLabel 1450 4300 2    50   Input ~ 0
12v
Text GLabel 3400 4250 0    50   Input ~ 0
GP6
Text GLabel 3400 4350 0    50   Input ~ 0
GP7
Text GLabel 3400 3450 0    50   Input ~ 0
GP0
Text GLabel 3400 3550 0    50   Input ~ 0
GP1
$Comp
L flowcontrol-v0.1-rescue:Conn_01x04_Female-Connector J6
U 1 1 604C8CFB
P 6300 5650
F 0 "J6" H 6328 5626 50  0000 L CNN
F 1 "Molex 4 Pin" H 6328 5535 50  0000 L CNN
F 2 "" H 6300 5650 50  0001 C CNN
F 3 "~" H 6300 5650 50  0001 C CNN
	1    6300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3650 5700 3650
Connection ~ 5700 3650
Wire Wire Line
	5600 4500 5700 4500
Connection ~ 5700 4500
$Comp
L flowcontrol-v0.1-rescue:Conn_01x04_Male-Connector J7
U 1 1 604E42AE
P 1750 6000
F 0 "J7" H 1858 6281 50  0000 C CNN
F 1 "4 Pin DRGB LED" H 1858 6190 50  0000 C CNN
F 2 "" H 1750 6000 50  0001 C CNN
F 3 "~" H 1750 6000 50  0001 C CNN
	1    1750 6000
	1    0    0    -1  
$EndComp
Text GLabel 1950 5900 2    50   Input ~ 0
GND
Text GLabel 1950 6000 2    50   Input ~ 0
DIN
Text GLabel 1950 6100 2    50   Input ~ 0
5v
Text GLabel 4650 4550 2    50   Input ~ 0
DIN
$Comp
L flowcontrol-v0.1-rescue:R-Device R3
U 1 1 604F5C88
P 1800 3600
F 0 "R3" H 1870 3646 50  0000 L CNN
F 1 "10k Ω" H 1870 3555 50  0000 L CNN
F 2 "" V 1730 3600 50  0001 C CNN
F 3 "~" H 1800 3600 50  0001 C CNN
	1    1800 3600
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:R-Device R4
U 1 1 604F6B2F
P 1800 4250
F 0 "R4" H 1870 4296 50  0000 L CNN
F 1 "10k Ω" H 1870 4205 50  0000 L CNN
F 2 "" V 1730 4250 50  0001 C CNN
F 3 "~" H 1800 4250 50  0001 C CNN
	1    1800 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3750 1800 3750
Wire Wire Line
	1450 4400 1800 4400
Text GLabel 2100 3750 2    50   Input ~ 0
GP10
Text GLabel 2100 4400 2    50   Input ~ 0
GP11
Connection ~ 1800 4400
Wire Wire Line
	1800 4400 2100 4400
Wire Wire Line
	2100 3750 1800 3750
Connection ~ 1800 3750
Text GLabel 1800 3450 1    50   Input ~ 0
5v
Text GLabel 1800 4100 1    50   Input ~ 0
5v
Text GLabel 3400 4750 0    50   Input ~ 0
GP10
Text GLabel 3400 4850 0    50   Input ~ 0
GP11
$Comp
L CH340G_D-SUN-V3.0-rescue:CH340G U?
U 1 1 60C66611
P 4450 1350
F 0 "U?" H 4450 1910 60  0000 C CNN
F 1 "CH340G" H 4450 890 60  0000 C CNN
F 2 "SOIC-16_N" H 4450 800 40  0001 C CNN
F 3 "" H 4450 1350 60  0000 C CNN
	1    4450 1350
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:diode D?
U 1 1 60C66617
P 6250 950
F 0 "D?" V 6350 950 60  0000 L CNN
F 1 "LL4148" V 6150 750 60  0000 L CNN
F 2 "SMA_N" H 6325 800 40  0001 L CNN
F 3 "" H 6250 950 60  0000 C CNN
	1    6250 950 
	0    -1   -1   0   
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:C C?
U 1 1 60C6661D
P 2250 1650
F 0 "C?" H 2270 1750 60  0000 L CNN
F 1 "100n?" H 2270 1550 60  0000 L CNN
F 2 "0603_N" H 2270 1460 40  0001 L CNN
F 3 "" H 2250 1650 60  0000 C CNN
	1    2250 1650
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:XT_2pin Q?
U 1 1 60C66623
P 3350 1850
F 0 "Q?" H 3350 2080 60  0000 C CNN
F 1 "12MHz" H 3350 2000 60  0000 C CNN
F 2 "" H 3350 1910 40  0001 C CNN
F 3 "" H 3350 1850 60  0000 C CNN
	1    3350 1850
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:R R?
U 1 1 60C66629
P 5350 1950
F 0 "R?" H 5350 2030 60  0000 C CNN
F 1 "1k5" H 5350 1950 40  0000 C CNN
F 2 "0603_N" H 5350 1890 40  0001 C CNN
F 3 "" H 5350 1950 60  0000 C CNN
	1    5350 1950
	0    1    1    0   
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:diode_LED D?
U 1 1 60C6662F
P 5350 1550
F 0 "D?" H 5425 1610 60  0000 L CNN
F 1 "LED" H 5425 1490 60  0000 L CNN
F 2 "SMA_N" H 5425 1400 40  0001 L CNN
F 3 "" H 5350 1550 60  0000 C CNN
	1    5350 1550
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:C C?
U 1 1 60C66635
P 1850 1650
F 0 "C?" H 1870 1750 60  0000 L CNN
F 1 "10u?" H 1870 1550 60  0000 L CNN
F 2 "0603_N" H 1870 1460 40  0001 L CNN
F 3 "" H 1850 1650 60  0000 C CNN
	1    1850 1650
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:connUsb CON?
U 1 1 60C6663B
P 1050 1450
F 0 "CON?" H 1050 1810 60  0000 C CNN
F 1 "USB" H 1050 1090 60  0000 C CNN
F 2 "" H 1050 1000 40  0001 C CNN
F 3 "" H 1050 1450 60  0000 C CNN
	1    1050 1450
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:GND #PWR?
U 1 1 60C66641
P 1550 1850
F 0 "#PWR?" H 1550 1600 50  0001 C CNN
F 1 "GND" H 1550 1700 50  0000 C CNN
F 2 "" H 1550 1850 60  0000 C CNN
F 3 "" H 1550 1850 60  0000 C CNN
	1    1550 1850
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:GND #PWR?
U 1 1 60C66647
P 1850 1850
F 0 "#PWR?" H 1850 1600 50  0001 C CNN
F 1 "GND" H 1850 1700 50  0000 C CNN
F 2 "" H 1850 1850 60  0000 C CNN
F 3 "" H 1850 1850 60  0000 C CNN
	1    1850 1850
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:GND #PWR?
U 1 1 60C6664D
P 2250 1850
F 0 "#PWR?" H 2250 1600 50  0001 C CNN
F 1 "GND" H 2250 1700 50  0000 C CNN
F 2 "" H 2250 1850 60  0000 C CNN
F 3 "" H 2250 1850 60  0000 C CNN
	1    2250 1850
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:C C?
U 1 1 60C66653
P 3050 2050
F 0 "C?" H 3070 2150 60  0000 L CNN
F 1 "22p?" H 3070 1950 60  0000 L CNN
F 2 "0603_N" H 3070 1860 40  0001 L CNN
F 3 "" H 3050 2050 60  0000 C CNN
	1    3050 2050
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:C C?
U 1 1 60C66659
P 3650 2050
F 0 "C?" H 3670 2150 60  0000 L CNN
F 1 "22p?" H 3670 1950 60  0000 L CNN
F 2 "0603_N" H 3670 1860 40  0001 L CNN
F 3 "" H 3650 2050 60  0000 C CNN
	1    3650 2050
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:GND #PWR?
U 1 1 60C6665F
P 3050 2250
F 0 "#PWR?" H 3050 2000 50  0001 C CNN
F 1 "GND" H 3050 2100 50  0000 C CNN
F 2 "" H 3050 2250 60  0000 C CNN
F 3 "" H 3050 2250 60  0000 C CNN
	1    3050 2250
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:GND #PWR?
U 1 1 60C66665
P 3650 2250
F 0 "#PWR?" H 3650 2000 50  0001 C CNN
F 1 "GND" H 3650 2100 50  0000 C CNN
F 2 "" H 3650 2250 60  0000 C CNN
F 3 "" H 3650 2250 60  0000 C CNN
	1    3650 2250
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:diode D?
U 1 1 60C6666B
P 6650 950
F 0 "D?" V 6750 950 60  0000 L CNN
F 1 "LL4148" V 6550 750 60  0000 L CNN
F 2 "SMA_N" H 6725 800 40  0001 L CNN
F 3 "" H 6650 950 60  0000 C CNN
	1    6650 950 
	0    -1   -1   0   
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:+5V #PWR?
U 1 1 60C66671
P 2250 1150
F 0 "#PWR?" H 2250 1000 50  0001 C CNN
F 1 "+5V" H 2250 1290 50  0000 C CNN
F 2 "" H 2250 1150 60  0000 C CNN
F 3 "" H 2250 1150 60  0000 C CNN
	1    2250 1150
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:+5V #PWR?
U 1 1 60C66677
P 5850 950
F 0 "#PWR?" H 5850 800 50  0001 C CNN
F 1 "+5V" H 5850 1090 50  0000 C CNN
F 2 "" H 5850 950 60  0000 C CNN
F 3 "" H 5850 950 60  0000 C CNN
	1    5850 950 
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:R R?
U 1 1 60C66689
P 6250 1450
F 0 "R?" H 6250 1530 60  0000 C CNN
F 1 "1k5" H 6250 1450 40  0000 C CNN
F 2 "0603_N" H 6250 1390 40  0001 C CNN
F 3 "" H 6250 1450 60  0000 C CNN
	1    6250 1450
	0    1    1    0   
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:diode_LED D?
U 1 1 60C6668F
P 6250 1750
F 0 "D?" H 6325 1810 60  0000 L CNN
F 1 "LED" H 6325 1690 60  0000 L CNN
F 2 "SMA_N" H 6325 1600 40  0001 L CNN
F 3 "" H 6250 1750 60  0000 C CNN
	1    6250 1750
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:R R?
U 1 1 60C66695
P 6650 1450
F 0 "R?" H 6650 1530 60  0000 C CNN
F 1 "1k5" H 6650 1450 40  0000 C CNN
F 2 "0603_N" H 6650 1390 40  0001 C CNN
F 3 "" H 6650 1450 60  0000 C CNN
	1    6650 1450
	0    1    1    0   
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:diode_LED D?
U 1 1 60C6669B
P 6650 1750
F 0 "D?" H 6725 1810 60  0000 L CNN
F 1 "LED" H 6725 1690 60  0000 L CNN
F 2 "SMA_N" H 6725 1600 40  0001 L CNN
F 3 "" H 6650 1750 60  0000 C CNN
	1    6650 1750
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:+3V3 #PWR?
U 1 1 60C666A1
P 2650 1150
F 0 "#PWR?" H 2650 1000 50  0001 C CNN
F 1 "+3V3" H 2650 1290 50  0000 C CNN
F 2 "" H 2650 1150 60  0000 C CNN
F 3 "" H 2650 1150 60  0000 C CNN
	1    2650 1150
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:+3V3 #PWR?
U 1 1 60C666A7
P 7650 1750
F 0 "#PWR?" H 7650 1600 50  0001 C CNN
F 1 "+3V3" H 7650 1890 50  0000 C CNN
F 2 "" H 7650 1750 60  0000 C CNN
F 3 "" H 7650 1750 60  0000 C CNN
	1    7650 1750
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:GND #PWR?
U 1 1 60C666AD
P 5350 2250
F 0 "#PWR?" H 5350 2000 50  0001 C CNN
F 1 "GND" H 5350 2100 50  0000 C CNN
F 2 "" H 5350 2250 60  0000 C CNN
F 3 "" H 5350 2250 60  0000 C CNN
	1    5350 2250
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:GND #PWR?
U 1 1 60C666B3
P 5050 3750
F 0 "#PWR?" H 5050 3500 50  0001 C CNN
F 1 "GND" H 5050 3600 50  0000 C CNN
F 2 "" H 5050 3750 60  0000 C CNN
F 3 "" H 5050 3750 60  0000 C CNN
	1    5050 3750
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:R R?
U 1 1 60C666B9
P 7150 1950
F 0 "R?" H 7150 2030 60  0000 C CNN
F 1 "1k5" H 7150 1950 40  0000 C CNN
F 2 "0603_N" H 7150 1890 40  0001 C CNN
F 3 "" H 7150 1950 60  0000 C CNN
	1    7150 1950
	1    0    0    -1  
$EndComp
NoConn ~ 5150 1050
NoConn ~ 5150 1150
NoConn ~ 5150 1250
NoConn ~ 5150 1350
NoConn ~ 5150 1450
NoConn ~ 5150 1550
NoConn ~ 5150 1650
$Comp
L CH340G_D-SUN-V3.0-rescue:C C?
U 1 1 60C666C6
P 2650 1650
F 0 "C?" H 2670 1750 60  0000 L CNN
F 1 "100n?" H 2670 1550 60  0000 L CNN
F 2 "0603_N" H 2670 1460 40  0001 L CNN
F 3 "" H 2650 1650 60  0000 C CNN
	1    2650 1650
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:GND #PWR?
U 1 1 60C666CC
P 2650 1850
F 0 "#PWR?" H 2650 1600 50  0001 C CNN
F 1 "GND" H 2650 1700 50  0000 C CNN
F 2 "" H 2650 1850 60  0000 C CNN
F 3 "" H 2650 1850 60  0000 C CNN
	1    2650 1850
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:GND #PWR?
U 1 1 60C666D2
P 3650 950
F 0 "#PWR?" H 3650 700 50  0001 C CNN
F 1 "GND" H 3650 800 50  0000 C CNN
F 2 "" H 3650 950 60  0000 C CNN
F 3 "" H 3650 950 60  0000 C CNN
	1    3650 950 
	0    1    1    0   
$EndComp
Text GLabel 3350 1050 0    50   Output ~ 0
TxD
Text GLabel 5950 2050 0    50   Output ~ 0
RxD
Text GLabel 5950 1950 0    50   Input ~ 0
TxD
Text GLabel 3350 1150 0    50   Input ~ 0
RxD
$Comp
L CH340G_D-SUN-V3.0-rescue:C C?
U 1 1 60C666DC
P 5850 1350
F 0 "C?" H 5870 1450 60  0000 L CNN
F 1 "100n?" H 5870 1250 60  0000 L CNN
F 2 "0603_N" H 5870 1160 40  0001 L CNN
F 3 "" H 5850 1350 60  0000 C CNN
	1    5850 1350
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:GND #PWR?
U 1 1 60C666E2
P 5850 1550
F 0 "#PWR?" H 5850 1300 50  0001 C CNN
F 1 "GND" H 5850 1400 50  0000 C CNN
F 2 "" H 5850 1550 60  0000 C CNN
F 3 "" H 5850 1550 60  0000 C CNN
	1    5850 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1550 1550 1550
Wire Wire Line
	1550 1550 1550 1650
Wire Wire Line
	1450 1650 1550 1650
Connection ~ 1550 1650
Wire Wire Line
	1450 1250 1850 1250
Wire Wire Line
	2250 1150 2250 1250
Wire Wire Line
	1850 1550 1850 1250
Connection ~ 1850 1250
Wire Wire Line
	2250 1850 2250 1750
Wire Wire Line
	1850 1850 1850 1750
Wire Wire Line
	1450 1350 3350 1350
Wire Wire Line
	1450 1450 3350 1450
Wire Wire Line
	3350 1450 3450 1350
Wire Wire Line
	3350 1350 3450 1450
Wire Wire Line
	3450 1350 3750 1350
Wire Wire Line
	3450 1450 3750 1450
Wire Wire Line
	3750 1650 3650 1650
Wire Wire Line
	3650 1650 3650 1850
Wire Wire Line
	3050 1550 3050 1850
Wire Wire Line
	3050 1550 3750 1550
Wire Wire Line
	3650 1850 3550 1850
Wire Wire Line
	3150 1850 3050 1850
Connection ~ 3650 1850
Connection ~ 3050 1850
Wire Wire Line
	3050 2150 3050 2250
Wire Wire Line
	3650 2150 3650 2250
Wire Wire Line
	6350 950  6550 950 
Wire Wire Line
	5850 950  6150 950 
Wire Wire Line
	6750 950  7050 950 
Wire Wire Line
	5350 1150 5850 1150
Wire Wire Line
	5350 950  5350 1150
Wire Wire Line
	5350 950  5150 950 
Wire Wire Line
	5350 1750 5350 1650
Wire Wire Line
	6650 1150 6650 1250
Wire Wire Line
	6250 1250 6250 1150
Connection ~ 6250 1150
Wire Wire Line
	6250 1850 6250 1950
Wire Wire Line
	6650 1850 6650 2050
Wire Wire Line
	2650 1250 3750 1250
Wire Wire Line
	2650 1150 2650 1250
Wire Wire Line
	7050 1750 7650 1750
Wire Wire Line
	7050 950  7050 1150
Connection ~ 6650 1150
Wire Wire Line
	5050 3650 5050 3750
Wire Wire Line
	5350 2250 5350 2150
Wire Wire Line
	5950 2050 6650 2050
Wire Wire Line
	7650 1950 7350 1950
Wire Wire Line
	5950 1950 6250 1950
Connection ~ 6250 1950
Connection ~ 6650 2050
Connection ~ 2250 1250
Wire Wire Line
	2650 1850 2650 1750
Connection ~ 2650 1250
Wire Wire Line
	3650 950  3750 950 
Wire Wire Line
	3750 1050 3350 1050
Wire Wire Line
	3750 1150 3350 1150
Connection ~ 5350 1150
Connection ~ 7050 1150
Wire Wire Line
	5850 1550 5850 1450
Wire Wire Line
	5850 1250 5850 1150
Connection ~ 5850 1150
Wire Wire Line
	1550 1650 1550 1850
Wire Wire Line
	1850 1250 2250 1250
Wire Wire Line
	3650 1850 3650 1950
Wire Wire Line
	3050 1850 3050 1950
Wire Wire Line
	6250 1150 6650 1150
Wire Wire Line
	6650 1150 7050 1150
Wire Wire Line
	6250 1950 6950 1950
Wire Wire Line
	6650 2050 7650 2050
Wire Wire Line
	2250 1250 2250 1550
Wire Wire Line
	2650 1250 2650 1550
Wire Wire Line
	5350 1150 5350 1450
Wire Wire Line
	7050 1150 7050 1750
Wire Wire Line
	5850 1150 6250 1150
Wire Wire Line
	4650 3650 5050 3650
Text GLabel 7650 1950 2    50   Input ~ 0
GP0
Text GLabel 7650 2050 2    50   Input ~ 0
GP1
$Comp
L CH340G_D-SUN-V3.0-rescue:+5V #PWR?
U 1 1 60D341CE
P 4900 3550
F 0 "#PWR?" H 4900 3400 50  0001 C CNN
F 1 "+5V" H 4900 3690 50  0000 C CNN
F 2 "" H 4900 3550 60  0000 C CNN
F 3 "" H 4900 3550 60  0000 C CNN
	1    4900 3550
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:+3V3 #PWR?
U 1 1 60D37EDE
P 4850 3850
F 0 "#PWR?" H 4850 3700 50  0001 C CNN
F 1 "+3V3" H 4850 3990 50  0000 C CNN
F 2 "" H 4850 3850 60  0000 C CNN
F 3 "" H 4850 3850 60  0000 C CNN
	1    4850 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3850 4850 3850
Wire Wire Line
	4650 3550 4900 3550
$Comp
L CH340G_D-SUN-V3.0-rescue:+3V3 #PWR?
U 1 1 60D50FA8
P 5700 3550
F 0 "#PWR?" H 5700 3400 50  0001 C CNN
F 1 "+3V3" H 5700 3690 50  0000 C CNN
F 2 "" H 5700 3550 60  0000 C CNN
F 3 "" H 5700 3550 60  0000 C CNN
	1    5700 3550
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:+3V3 #PWR?
U 1 1 60D7438E
P 5700 4400
F 0 "#PWR?" H 5700 4250 50  0001 C CNN
F 1 "+3V3" H 5700 4540 50  0000 C CNN
F 2 "" H 5700 4400 60  0000 C CNN
F 3 "" H 5700 4400 60  0000 C CNN
	1    5700 4400
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:GND #PWR?
U 1 1 60D7C646
P 5700 3850
F 0 "#PWR?" H 5700 3600 50  0001 C CNN
F 1 "GND" H 5700 3700 50  0000 C CNN
F 2 "" H 5700 3850 60  0000 C CNN
F 3 "" H 5700 3850 60  0000 C CNN
	1    5700 3850
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:GND #PWR?
U 1 1 60D7F0CD
P 5700 4700
F 0 "#PWR?" H 5700 4450 50  0001 C CNN
F 1 "GND" H 5700 4550 50  0000 C CNN
F 2 "" H 5700 4700 60  0000 C CNN
F 3 "" H 5700 4700 60  0000 C CNN
	1    5700 4700
	1    0    0    -1  
$EndComp
$Comp
L CH340G_D-SUN-V3.0-rescue:GND #PWR?
U 1 1 60D84020
P 5650 5650
F 0 "#PWR?" H 5650 5400 50  0001 C CNN
F 1 "GND" H 5650 5500 50  0000 C CNN
F 2 "" H 5650 5650 60  0000 C CNN
F 3 "" H 5650 5650 60  0000 C CNN
	1    5650 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5750 6100 5650
$Comp
L CH340G_D-SUN-V3.0-rescue:+5V #PWR?
U 1 1 60D932E4
P 6100 5550
F 0 "#PWR?" H 6100 5400 50  0001 C CNN
F 1 "+5V" H 6100 5690 50  0000 C CNN
F 2 "" H 6100 5550 60  0000 C CNN
F 3 "" H 6100 5550 60  0000 C CNN
	1    6100 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5650 6100 5650
Connection ~ 6100 5650
Wire Wire Line
	6000 5850 6100 5850
$EndSCHEMATC
