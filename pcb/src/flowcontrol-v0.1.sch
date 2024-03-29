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
P 5050 4400
F 0 "U1" H 5025 5765 50  0000 C CNN
F 1 "PICO_RP2040" H 5025 5674 50  0000 C CNN
F 2 "Pico:RPi_Pico_SMD_TH" H 4950 5850 50  0001 C CNN
F 3 "" H 4950 5850 50  0001 C CNN
	1    5050 4400
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:R_Small-Device R1
U 1 1 604B1754
P 7100 4900
F 0 "R1" H 7159 4946 50  0000 L CNN
F 1 "10k Ω" H 7159 4855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7100 4900 50  0001 C CNN
F 3 "~" H 7100 4900 50  0001 C CNN
	1    7100 4900
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:Conn_01x02_Female-Connector J3
U 1 1 604C40D7
P 7300 4700
F 0 "J3" H 7328 4676 50  0000 L CNN
F 1 "Temp Sensor (10k Thermistor)" H 7328 4585 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 7300 4700 50  0001 C CNN
F 3 "~" H 7300 4700 50  0001 C CNN
	1    7300 4700
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:R_Small-Device R2
U 1 1 604C8F5D
P 7100 4050
F 0 "R2" H 7159 4096 50  0000 L CNN
F 1 "10k Ω" H 7159 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7100 4050 50  0001 C CNN
F 3 "~" H 7100 4050 50  0001 C CNN
	1    7100 4050
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:Conn_01x02_Female-Connector J4
U 1 1 604C8F64
P 7300 3850
F 0 "J4" H 7328 3826 50  0000 L CNN
F 1 "Temp Sensor (10k Thermistor)" H 7328 3735 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 7300 3850 50  0001 C CNN
F 3 "~" H 7300 3850 50  0001 C CNN
	1    7300 3850
	1    0    0    -1  
$EndComp
Text GLabel 7000 4800 0    50   Input ~ 0
GP26
Text GLabel 7000 3950 0    50   Input ~ 0
GP27
Text GLabel 5650 4250 2    50   Input ~ 0
GP27
Text GLabel 5650 4350 2    50   Input ~ 0
GP26
$Comp
L flowcontrol-v0.1-rescue:Conn_01x04_Male-Connector J1
U 1 1 604CC3B7
P 2550 3950
F 0 "J1" H 2658 4231 50  0000 C CNN
F 1 "Fan 1" H 2658 4140 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 2550 3950 50  0001 C CNN
F 3 "~" H 2550 3950 50  0001 C CNN
	1    2550 3950
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:Conn_01x04_Male-Connector J2
U 1 1 604CDDAF
P 2550 4700
F 0 "J2" H 2658 4981 50  0000 C CNN
F 1 "Fan 2" H 2658 4890 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 2550 4700 50  0001 C CNN
F 3 "~" H 2550 4700 50  0001 C CNN
	1    2550 4700
	1    0    0    -1  
$EndComp
Text GLabel 2750 4150 2    50   Input ~ 0
GND
Text GLabel 2750 4900 2    50   Input ~ 0
GND
Text GLabel 2750 3850 2    50   Input ~ 0
GP6
Text GLabel 2750 4600 2    50   Input ~ 0
GP7
Text GLabel 4400 4250 0    50   Input ~ 0
GP6
Text GLabel 4400 4350 0    50   Input ~ 0
GP7
Text GLabel 4400 3450 0    50   Input ~ 0
GP0
Text GLabel 4400 3550 0    50   Input ~ 0
GP1
$Comp
L flowcontrol-v0.1-rescue:Conn_01x04_Female-Connector J6
U 1 1 604C8CFB
P 4700 6050
F 0 "J6" H 4728 6026 50  0000 L CNN
F 1 "Molex 4 Pin" H 4728 5935 50  0000 L CNN
F 2 "Connector_TE-Connectivity:TE_MATE-N-LOK_350211-1_1x04_P5.08mm_Vertical" H 4700 6050 50  0001 C CNN
F 3 "~" H 4700 6050 50  0001 C CNN
	1    4700 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3950 7100 3950
Connection ~ 7100 3950
Wire Wire Line
	7000 4800 7100 4800
Connection ~ 7100 4800
$Comp
L flowcontrol-v0.1-rescue:Conn_01x04_Male-Connector J7
U 1 1 604E42AE
P 3150 6050
F 0 "J7" H 3258 6331 50  0000 C CNN
F 1 "4 Pin DRGB LED" H 3258 6240 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3150 6050 50  0001 C CNN
F 3 "~" H 3150 6050 50  0001 C CNN
	1    3150 6050
	1    0    0    -1  
$EndComp
Text GLabel 3350 6150 2    50   Input ~ 0
DIN
Text GLabel 5650 4550 2    50   Input ~ 0
DIN
$Comp
L flowcontrol-v0.1-rescue:R-Device R3
U 1 1 604F5C88
P 3100 3800
F 0 "R3" H 3170 3846 50  0000 L CNN
F 1 "10k Ω" H 3170 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3030 3800 50  0001 C CNN
F 3 "~" H 3100 3800 50  0001 C CNN
	1    3100 3800
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:R-Device R4
U 1 1 604F6B2F
P 3100 4550
F 0 "R4" H 3170 4596 50  0000 L CNN
F 1 "10k Ω" H 3170 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3030 4550 50  0001 C CNN
F 3 "~" H 3100 4550 50  0001 C CNN
	1    3100 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3950 3100 3950
Wire Wire Line
	2750 4700 3100 4700
Text GLabel 3400 3950 2    50   Input ~ 0
GP10
Text GLabel 3400 4700 2    50   Input ~ 0
GP11
Connection ~ 3100 4700
Wire Wire Line
	3100 4700 3400 4700
Wire Wire Line
	3400 3950 3100 3950
Connection ~ 3100 3950
Text GLabel 4400 4750 0    50   Input ~ 0
GP10
Text GLabel 4400 4850 0    50   Input ~ 0
GP11
$Comp
L flowcontrol-v0.1-rescue:CH340G-CH340G_D-SUN-V3.0-rescue U2
U 1 1 60C66611
P 5800 1800
F 0 "U2" H 5800 2360 60  0000 C CNN
F 1 "CH340G" H 5800 1340 60  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5800 1250 40  0001 C CNN
F 3 "" H 5800 1800 60  0000 C CNN
	1    5800 1800
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:diode-CH340G_D-SUN-V3.0-rescue D1
U 1 1 60C66617
P 7600 1400
F 0 "D1" V 7700 1400 60  0000 L CNN
F 1 "LL4148" V 7500 1200 60  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 7675 1250 40  0001 L CNN
F 3 "" H 7600 1400 60  0000 C CNN
	1    7600 1400
	0    -1   -1   0   
$EndComp
$Comp
L flowcontrol-v0.1-rescue:C-CH340G_D-SUN-V3.0-rescue C2
U 1 1 60C6661D
P 3600 2100
F 0 "C2" H 3620 2200 60  0000 L CNN
F 1 "100nF" H 3620 2000 60  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3620 1910 40  0001 L CNN
F 3 "" H 3600 2100 60  0000 C CNN
	1    3600 2100
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:R-CH340G_D-SUN-V3.0-rescue R6
U 1 1 60C66629
P 6700 2400
F 0 "R6" H 6700 2480 60  0000 C CNN
F 1 "1k5" H 6700 2400 40  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6700 2340 40  0001 C CNN
F 3 "" H 6700 2400 60  0000 C CNN
	1    6700 2400
	0    1    1    0   
$EndComp
$Comp
L flowcontrol-v0.1-rescue:diode_LED-CH340G_D-SUN-V3.0-rescue D5
U 1 1 60C6662F
P 6700 2000
F 0 "D5" H 6775 2060 60  0000 L CNN
F 1 "LED" H 6775 1940 60  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 6775 1850 40  0001 L CNN
F 3 "" H 6700 2000 60  0000 C CNN
	1    6700 2000
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:C-CH340G_D-SUN-V3.0-rescue C1
U 1 1 60C66635
P 3200 2100
F 0 "C1" H 3220 2200 60  0000 L CNN
F 1 "10uF" H 3220 2000 60  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3220 1910 40  0001 L CNN
F 3 "" H 3200 2100 60  0000 C CNN
	1    3200 2100
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:GND-CH340G_D-SUN-V3.0-rescue #PWR0101
U 1 1 60C66641
P 2900 2300
F 0 "#PWR0101" H 2900 2050 50  0001 C CNN
F 1 "GND" H 2900 2150 50  0000 C CNN
F 2 "" H 2900 2300 60  0000 C CNN
F 3 "" H 2900 2300 60  0000 C CNN
	1    2900 2300
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:GND-CH340G_D-SUN-V3.0-rescue #PWR0102
U 1 1 60C66647
P 3200 2300
F 0 "#PWR0102" H 3200 2050 50  0001 C CNN
F 1 "GND" H 3200 2150 50  0000 C CNN
F 2 "" H 3200 2300 60  0000 C CNN
F 3 "" H 3200 2300 60  0000 C CNN
	1    3200 2300
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:GND-CH340G_D-SUN-V3.0-rescue #PWR0103
U 1 1 60C6664D
P 3600 2300
F 0 "#PWR0103" H 3600 2050 50  0001 C CNN
F 1 "GND" H 3600 2150 50  0000 C CNN
F 2 "" H 3600 2300 60  0000 C CNN
F 3 "" H 3600 2300 60  0000 C CNN
	1    3600 2300
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:C-CH340G_D-SUN-V3.0-rescue C4
U 1 1 60C66653
P 4400 2500
F 0 "C4" H 4420 2600 60  0000 L CNN
F 1 "22pF" H 4420 2400 60  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4420 2310 40  0001 L CNN
F 3 "" H 4400 2500 60  0000 C CNN
	1    4400 2500
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:C-CH340G_D-SUN-V3.0-rescue C5
U 1 1 60C66659
P 5000 2500
F 0 "C5" H 5020 2600 60  0000 L CNN
F 1 "22pF" H 5020 2400 60  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5020 2310 40  0001 L CNN
F 3 "" H 5000 2500 60  0000 C CNN
	1    5000 2500
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:GND-CH340G_D-SUN-V3.0-rescue #PWR0104
U 1 1 60C6665F
P 4400 2700
F 0 "#PWR0104" H 4400 2450 50  0001 C CNN
F 1 "GND" H 4400 2550 50  0000 C CNN
F 2 "" H 4400 2700 60  0000 C CNN
F 3 "" H 4400 2700 60  0000 C CNN
	1    4400 2700
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:GND-CH340G_D-SUN-V3.0-rescue #PWR0105
U 1 1 60C66665
P 5000 2700
F 0 "#PWR0105" H 5000 2450 50  0001 C CNN
F 1 "GND" H 5000 2550 50  0000 C CNN
F 2 "" H 5000 2700 60  0000 C CNN
F 3 "" H 5000 2700 60  0000 C CNN
	1    5000 2700
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:diode-CH340G_D-SUN-V3.0-rescue D2
U 1 1 60C6666B
P 8000 1400
F 0 "D2" V 8100 1400 60  0000 L CNN
F 1 "LL4148" V 7900 1200 60  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 8075 1250 40  0001 L CNN
F 3 "" H 8000 1400 60  0000 C CNN
	1    8000 1400
	0    -1   -1   0   
$EndComp
$Comp
L flowcontrol-v0.1-rescue:+5V-CH340G_D-SUN-V3.0-rescue #PWR0106
U 1 1 60C66671
P 3600 1600
F 0 "#PWR0106" H 3600 1450 50  0001 C CNN
F 1 "+5V" H 3600 1740 50  0000 C CNN
F 2 "" H 3600 1600 60  0000 C CNN
F 3 "" H 3600 1600 60  0000 C CNN
	1    3600 1600
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:+5V-CH340G_D-SUN-V3.0-rescue #PWR0107
U 1 1 60C66677
P 7200 1400
F 0 "#PWR0107" H 7200 1250 50  0001 C CNN
F 1 "+5V" H 7200 1540 50  0000 C CNN
F 2 "" H 7200 1400 60  0000 C CNN
F 3 "" H 7200 1400 60  0000 C CNN
	1    7200 1400
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:R-CH340G_D-SUN-V3.0-rescue R7
U 1 1 60C66689
P 7600 1900
F 0 "R7" H 7600 1980 60  0000 C CNN
F 1 "1k5" H 7600 1900 40  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7600 1840 40  0001 C CNN
F 3 "" H 7600 1900 60  0000 C CNN
	1    7600 1900
	0    1    1    0   
$EndComp
$Comp
L flowcontrol-v0.1-rescue:diode_LED-CH340G_D-SUN-V3.0-rescue D3
U 1 1 60C6668F
P 7600 2200
F 0 "D3" H 7675 2260 60  0000 L CNN
F 1 "LED" H 7675 2140 60  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 7675 2050 40  0001 L CNN
F 3 "" H 7600 2200 60  0000 C CNN
	1    7600 2200
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:R-CH340G_D-SUN-V3.0-rescue R8
U 1 1 60C66695
P 8000 1900
F 0 "R8" H 8000 1980 60  0000 C CNN
F 1 "1k5" H 8000 1900 40  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8000 1840 40  0001 C CNN
F 3 "" H 8000 1900 60  0000 C CNN
	1    8000 1900
	0    1    1    0   
$EndComp
$Comp
L flowcontrol-v0.1-rescue:diode_LED-CH340G_D-SUN-V3.0-rescue D4
U 1 1 60C6669B
P 8000 2200
F 0 "D4" H 8075 2260 60  0000 L CNN
F 1 "LED" H 8075 2140 60  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 8075 2050 40  0001 L CNN
F 3 "" H 8000 2200 60  0000 C CNN
	1    8000 2200
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:+3V3-CH340G_D-SUN-V3.0-rescue #PWR0108
U 1 1 60C666A1
P 4000 1600
F 0 "#PWR0108" H 4000 1450 50  0001 C CNN
F 1 "+3V3" H 4000 1740 50  0000 C CNN
F 2 "" H 4000 1600 60  0000 C CNN
F 3 "" H 4000 1600 60  0000 C CNN
	1    4000 1600
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:+3V3-CH340G_D-SUN-V3.0-rescue #PWR0109
U 1 1 60C666A7
P 9000 2200
F 0 "#PWR0109" H 9000 2050 50  0001 C CNN
F 1 "+3V3" H 9000 2340 50  0000 C CNN
F 2 "" H 9000 2200 60  0000 C CNN
F 3 "" H 9000 2200 60  0000 C CNN
	1    9000 2200
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:GND-CH340G_D-SUN-V3.0-rescue #PWR0110
U 1 1 60C666AD
P 6700 2700
F 0 "#PWR0110" H 6700 2450 50  0001 C CNN
F 1 "GND" H 6700 2550 50  0000 C CNN
F 2 "" H 6700 2700 60  0000 C CNN
F 3 "" H 6700 2700 60  0000 C CNN
	1    6700 2700
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:GND-CH340G_D-SUN-V3.0-rescue #PWR0111
U 1 1 60C666B3
P 6050 3750
F 0 "#PWR0111" H 6050 3500 50  0001 C CNN
F 1 "GND" H 6050 3600 50  0000 C CNN
F 2 "" H 6050 3750 60  0000 C CNN
F 3 "" H 6050 3750 60  0000 C CNN
	1    6050 3750
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:R-CH340G_D-SUN-V3.0-rescue R5
U 1 1 60C666B9
P 8500 2400
F 0 "R5" H 8500 2480 60  0000 C CNN
F 1 "1k5" H 8500 2400 40  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8500 2340 40  0001 C CNN
F 3 "" H 8500 2400 60  0000 C CNN
	1    8500 2400
	1    0    0    -1  
$EndComp
NoConn ~ 6500 1500
NoConn ~ 6500 1600
NoConn ~ 6500 1700
NoConn ~ 6500 1800
NoConn ~ 6500 1900
NoConn ~ 6500 2000
NoConn ~ 6500 2100
$Comp
L flowcontrol-v0.1-rescue:C-CH340G_D-SUN-V3.0-rescue C3
U 1 1 60C666C6
P 4000 2100
F 0 "C3" H 4020 2200 60  0000 L CNN
F 1 "100nF" H 4020 2000 60  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4020 1910 40  0001 L CNN
F 3 "" H 4000 2100 60  0000 C CNN
	1    4000 2100
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:GND-CH340G_D-SUN-V3.0-rescue #PWR0112
U 1 1 60C666CC
P 4000 2300
F 0 "#PWR0112" H 4000 2050 50  0001 C CNN
F 1 "GND" H 4000 2150 50  0000 C CNN
F 2 "" H 4000 2300 60  0000 C CNN
F 3 "" H 4000 2300 60  0000 C CNN
	1    4000 2300
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:GND-CH340G_D-SUN-V3.0-rescue #PWR0113
U 1 1 60C666D2
P 5000 1400
F 0 "#PWR0113" H 5000 1150 50  0001 C CNN
F 1 "GND" H 5000 1250 50  0000 C CNN
F 2 "" H 5000 1400 60  0000 C CNN
F 3 "" H 5000 1400 60  0000 C CNN
	1    5000 1400
	0    1    1    0   
$EndComp
Text GLabel 4700 1500 0    50   Output ~ 0
TxD
Text GLabel 7300 2500 0    50   Output ~ 0
RxD
Text GLabel 7300 2400 0    50   Input ~ 0
TxD
Text GLabel 4700 1600 0    50   Input ~ 0
RxD
$Comp
L flowcontrol-v0.1-rescue:C-CH340G_D-SUN-V3.0-rescue C6
U 1 1 60C666DC
P 7200 1800
F 0 "C6" H 7220 1900 60  0000 L CNN
F 1 "100nF" H 7220 1700 60  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7220 1610 40  0001 L CNN
F 3 "" H 7200 1800 60  0000 C CNN
	1    7200 1800
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:GND-CH340G_D-SUN-V3.0-rescue #PWR0114
U 1 1 60C666E2
P 7200 2000
F 0 "#PWR0114" H 7200 1750 50  0001 C CNN
F 1 "GND" H 7200 1850 50  0000 C CNN
F 2 "" H 7200 2000 60  0000 C CNN
F 3 "" H 7200 2000 60  0000 C CNN
	1    7200 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1700 3200 1700
Wire Wire Line
	3600 1600 3600 1700
Wire Wire Line
	3200 2000 3200 1700
Connection ~ 3200 1700
Wire Wire Line
	3600 2300 3600 2200
Wire Wire Line
	3200 2300 3200 2200
Wire Wire Line
	2800 1800 4700 1800
Wire Wire Line
	2800 1900 4700 1900
Wire Wire Line
	4700 1900 4800 1800
Wire Wire Line
	4700 1800 4800 1900
Wire Wire Line
	4800 1800 5100 1800
Wire Wire Line
	4800 1900 5100 1900
Wire Wire Line
	5100 2100 5000 2100
Wire Wire Line
	4400 2000 4400 2300
Wire Wire Line
	4400 2000 5100 2000
Connection ~ 4400 2300
Wire Wire Line
	4400 2600 4400 2700
Wire Wire Line
	5000 2600 5000 2700
Wire Wire Line
	7700 1400 7900 1400
Wire Wire Line
	7200 1400 7500 1400
Wire Wire Line
	8100 1400 8400 1400
Wire Wire Line
	6700 1600 7200 1600
Wire Wire Line
	6700 1400 6700 1600
Wire Wire Line
	6700 1400 6500 1400
Wire Wire Line
	6700 2200 6700 2100
Wire Wire Line
	8000 1600 8000 1700
Wire Wire Line
	7600 1700 7600 1600
Connection ~ 7600 1600
Wire Wire Line
	7600 2300 7600 2400
Wire Wire Line
	8000 2300 8000 2500
Wire Wire Line
	4000 1700 5100 1700
Wire Wire Line
	4000 1600 4000 1700
Wire Wire Line
	8400 2200 9000 2200
Wire Wire Line
	8400 1400 8400 1600
Connection ~ 8000 1600
Wire Wire Line
	6050 3650 6050 3750
Wire Wire Line
	6700 2700 6700 2600
Wire Wire Line
	7300 2500 8000 2500
Wire Wire Line
	9000 2400 8700 2400
Wire Wire Line
	7300 2400 7600 2400
Connection ~ 7600 2400
Connection ~ 8000 2500
Connection ~ 3600 1700
Wire Wire Line
	4000 2300 4000 2200
Connection ~ 4000 1700
Wire Wire Line
	5000 1400 5100 1400
Wire Wire Line
	5100 1500 4700 1500
Wire Wire Line
	5100 1600 4700 1600
Connection ~ 6700 1600
Connection ~ 8400 1600
Wire Wire Line
	7200 2000 7200 1900
Wire Wire Line
	7200 1700 7200 1600
Connection ~ 7200 1600
Wire Wire Line
	3200 1700 3600 1700
Wire Wire Line
	4400 2300 4400 2400
Wire Wire Line
	7600 1600 8000 1600
Wire Wire Line
	8000 1600 8400 1600
Wire Wire Line
	7600 2400 8300 2400
Wire Wire Line
	8000 2500 9000 2500
Wire Wire Line
	3600 1700 3600 2000
Wire Wire Line
	4000 1700 4000 2000
Wire Wire Line
	6700 1600 6700 1900
Wire Wire Line
	8400 1600 8400 2200
Wire Wire Line
	7200 1600 7600 1600
Wire Wire Line
	5650 3650 6050 3650
Text GLabel 9000 2500 2    50   Input ~ 0
GP0
Text GLabel 9000 2400 2    50   Input ~ 0
GP1
$Comp
L flowcontrol-v0.1-rescue:+5V-CH340G_D-SUN-V3.0-rescue #PWR0115
U 1 1 60D341CE
P 5900 3550
F 0 "#PWR0115" H 5900 3400 50  0001 C CNN
F 1 "+5V" H 5900 3690 50  0000 C CNN
F 2 "" H 5900 3550 60  0000 C CNN
F 3 "" H 5900 3550 60  0000 C CNN
	1    5900 3550
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:+3V3-CH340G_D-SUN-V3.0-rescue #PWR0116
U 1 1 60D37EDE
P 5850 3850
F 0 "#PWR0116" H 5850 3700 50  0001 C CNN
F 1 "+3V3" H 5850 3990 50  0000 C CNN
F 2 "" H 5850 3850 60  0000 C CNN
F 3 "" H 5850 3850 60  0000 C CNN
	1    5850 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3850 5850 3850
Wire Wire Line
	5650 3550 5900 3550
$Comp
L flowcontrol-v0.1-rescue:+3V3-CH340G_D-SUN-V3.0-rescue #PWR0117
U 1 1 60D50FA8
P 7100 3850
F 0 "#PWR0117" H 7100 3700 50  0001 C CNN
F 1 "+3V3" H 7100 3990 50  0000 C CNN
F 2 "" H 7100 3850 60  0000 C CNN
F 3 "" H 7100 3850 60  0000 C CNN
	1    7100 3850
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:+3V3-CH340G_D-SUN-V3.0-rescue #PWR0118
U 1 1 60D7438E
P 7100 4700
F 0 "#PWR0118" H 7100 4550 50  0001 C CNN
F 1 "+3V3" H 7100 4840 50  0000 C CNN
F 2 "" H 7100 4700 60  0000 C CNN
F 3 "" H 7100 4700 60  0000 C CNN
	1    7100 4700
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:GND-CH340G_D-SUN-V3.0-rescue #PWR0119
U 1 1 60D7C646
P 7100 4150
F 0 "#PWR0119" H 7100 3900 50  0001 C CNN
F 1 "GND" H 7100 4000 50  0000 C CNN
F 2 "" H 7100 4150 60  0000 C CNN
F 3 "" H 7100 4150 60  0000 C CNN
	1    7100 4150
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:GND-CH340G_D-SUN-V3.0-rescue #PWR0120
U 1 1 60D7F0CD
P 7100 5000
F 0 "#PWR0120" H 7100 4750 50  0001 C CNN
F 1 "GND" H 7100 4850 50  0000 C CNN
F 2 "" H 7100 5000 60  0000 C CNN
F 3 "" H 7100 5000 60  0000 C CNN
	1    7100 5000
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-v0.1-rescue:GND-CH340G_D-SUN-V3.0-rescue #PWR0121
U 1 1 60D84020
P 4050 6050
F 0 "#PWR0121" H 4050 5800 50  0001 C CNN
F 1 "GND" H 4050 5900 50  0000 C CNN
F 2 "" H 4050 6050 60  0000 C CNN
F 3 "" H 4050 6050 60  0000 C CNN
	1    4050 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6150 4500 6050
$Comp
L flowcontrol-v0.1-rescue:+5V-CH340G_D-SUN-V3.0-rescue #PWR0122
U 1 1 60D932E4
P 4400 6250
F 0 "#PWR0122" H 4400 6100 50  0001 C CNN
F 1 "+5V" H 4400 6390 50  0000 C CNN
F 2 "" H 4400 6250 60  0000 C CNN
F 3 "" H 4400 6250 60  0000 C CNN
	1    4400 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 6050 4500 6050
Connection ~ 4500 6050
Wire Wire Line
	4400 6250 4500 6250
$Comp
L flowcontrol-v0.1-rescue:+5V-CH340G_D-SUN-V3.0-rescue #PWR0123
U 1 1 60C2CF92
P 3100 3650
F 0 "#PWR0123" H 3100 3500 50  0001 C CNN
F 1 "+5V" H 3100 3790 50  0000 C CNN
F 2 "" H 3100 3650 60  0000 C CNN
F 3 "" H 3100 3650 60  0000 C CNN
	1    3100 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3650 3100 3750
$Comp
L flowcontrol-v0.1-rescue:+5V-CH340G_D-SUN-V3.0-rescue #PWR0124
U 1 1 60C2FB92
P 3100 4400
F 0 "#PWR0124" H 3100 4250 50  0001 C CNN
F 1 "+5V" H 3100 4540 50  0000 C CNN
F 2 "" H 3100 4400 60  0000 C CNN
F 3 "" H 3100 4400 60  0000 C CNN
	1    3100 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4400 3100 4500
Connection ~ 3100 4400
Connection ~ 3100 3650
Text GLabel 5900 6100 0    50   Input ~ 0
RUN
$Comp
L flowcontrol-v0.1-rescue:GND-CH340G_D-SUN-V3.0-rescue #PWR0125
U 1 1 60C87607
P 6300 6100
F 0 "#PWR0125" H 6300 5850 50  0001 C CNN
F 1 "GND" H 6300 5950 50  0000 C CNN
F 2 "" H 6300 6100 60  0000 C CNN
F 3 "" H 6300 6100 60  0000 C CNN
	1    6300 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2000 2900 2000
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J5
U 1 1 60CAACD7
P 2500 1900
F 0 "J5" H 2550 2317 50  0000 C CNN
F 1 "Internal USB" H 2550 2226 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x05_P2.54mm_Vertical" H 2500 1900 50  0001 C CNN
F 3 "~" H 2500 1900 50  0001 C CNN
	1    2500 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2000 2900 2300
$Comp
L flowcontrol-v0.1-rescue:GND-CH340G_D-SUN-V3.0-rescue #PWR0126
U 1 1 60D55E35
P 3700 5950
F 0 "#PWR0126" H 3700 5700 50  0001 C CNN
F 1 "GND" H 3700 5800 50  0000 C CNN
F 2 "" H 3700 5950 60  0000 C CNN
F 3 "" H 3700 5950 60  0000 C CNN
	1    3700 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 5950 3700 5950
Text GLabel 5650 4450 2    50   Input ~ 0
RUN
Wire Wire Line
	5000 2300 5000 2400
Wire Wire Line
	5000 2300 5000 2100
Connection ~ 5000 2300
$Comp
L Device:Crystal Y1
U 1 1 60DB4593
P 4700 2300
F 0 "Y1" H 4700 2568 50  0000 C CNN
F 1 "12MHz Crystal" H 4700 2477 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_HC49-SD" H 4700 2300 50  0001 C CNN
F 3 "~" H 4700 2300 50  0001 C CNN
	1    4700 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2300 4550 2300
Wire Wire Line
	4850 2300 5000 2300
$Comp
L flowcontrol-v0.1-rescue:+5V-CH340G_D-SUN-V3.0-rescue #PWR0127
U 1 1 60D4DF4E
P 3850 6050
F 0 "#PWR0127" H 3850 5900 50  0001 C CNN
F 1 "+5V" H 3850 6190 50  0000 C CNN
F 2 "" H 3850 6050 60  0000 C CNN
F 3 "" H 3850 6050 60  0000 C CNN
	1    3850 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6250 3850 6250
Wire Wire Line
	3850 6250 3850 6050
$Comp
L power:+12V #PWR0128
U 1 1 60D5E24C
P 3800 4050
F 0 "#PWR0128" H 3800 3900 50  0001 C CNN
F 1 "+12V" H 3815 4223 50  0000 C CNN
F 2 "" H 3800 4050 50  0001 C CNN
F 3 "" H 3800 4050 50  0001 C CNN
	1    3800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4050 2750 4050
$Comp
L power:+12V #PWR0129
U 1 1 60D731FF
P 3800 4800
F 0 "#PWR0129" H 3800 4650 50  0001 C CNN
F 1 "+12V" H 3815 4973 50  0000 C CNN
F 2 "" H 3800 4800 50  0001 C CNN
F 3 "" H 3800 4800 50  0001 C CNN
	1    3800 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4800 2750 4800
$Comp
L power:+12V #PWR0130
U 1 1 60D76DB0
P 4500 5950
F 0 "#PWR0130" H 4500 5800 50  0001 C CNN
F 1 "+12V" H 4515 6123 50  0000 C CNN
F 2 "" H 4500 5950 50  0001 C CNN
F 3 "" H 4500 5950 50  0001 C CNN
	1    4500 5950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 60D92F9B
P 6100 6100
F 0 "SW1" H 6100 6385 50  0000 C CNN
F 1 "K2-1102SP-C4SC-04" H 6100 6294 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 6100 6300 50  0001 C CNN
F 3 "~" H 6100 6300 50  0001 C CNN
	1    6100 6100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
