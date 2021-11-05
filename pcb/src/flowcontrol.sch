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
L flowcontrol-rescue:PICO_RP2040-Pico_rp2040-flowcontrol-rescue U1
U 1 1 604A5D56
P 4200 4750
F 0 "U1" H 4175 6115 50  0000 C CNN
F 1 "PICO_RP2040" H 4175 6024 50  0000 C CNN
F 2 "Pico:RPi_Pico_SMD_TH" H 4100 6200 50  0001 C CNN
F 3 "" H 4100 6200 50  0001 C CNN
	1    4200 4750
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-rescue:R_Small-Device-flowcontrol-rescue R1
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
L flowcontrol-rescue:Conn_01x02_Female-Connector-flowcontrol-rescue J3
U 1 1 604C40D7
P 7300 4700
F 0 "J3" H 7328 4676 50  0000 L CNN
F 1 "Temp Sensor (10k Thermistor)" H 7328 4585 50  0000 L CNN
F 2 "Connector_JST:JST_XH_S2B-XH-A-1_1x02_P2.50mm_Horizontal" H 7300 4700 50  0001 C CNN
F 3 "~" H 7300 4700 50  0001 C CNN
	1    7300 4700
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-rescue:R_Small-Device-flowcontrol-rescue R2
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
L flowcontrol-rescue:Conn_01x02_Female-Connector-flowcontrol-rescue J4
U 1 1 604C8F64
P 7300 3850
F 0 "J4" H 7328 3826 50  0000 L CNN
F 1 "Temp Sensor (10k Thermistor)" H 7328 3735 50  0000 L CNN
F 2 "Connector_JST:JST_XH_S2B-XH-A-1_1x02_P2.50mm_Horizontal" H 7300 3850 50  0001 C CNN
F 3 "~" H 7300 3850 50  0001 C CNN
	1    7300 3850
	1    0    0    -1  
$EndComp
Text GLabel 7000 4800 0    50   Input ~ 0
GP26
Text GLabel 7000 3950 0    50   Input ~ 0
GP27
Text GLabel 4800 4600 2    50   Input ~ 0
GP27
Text GLabel 4800 4700 2    50   Input ~ 0
GP26
$Comp
L flowcontrol-rescue:Conn_01x04_Male-Connector-flowcontrol-rescue J1
U 1 1 604CC3B7
P 1000 4250
F 0 "J1" H 1108 4531 50  0000 C CNN
F 1 "Fan 3" H 1108 4440 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 1000 4250 50  0001 C CNN
F 3 "~" H 1000 4250 50  0001 C CNN
	1    1000 4250
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-rescue:Conn_01x04_Male-Connector-flowcontrol-rescue J2
U 1 1 604CDDAF
P 1000 5000
F 0 "J2" H 1108 5281 50  0000 C CNN
F 1 "Fan 4" H 1108 5190 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 1000 5000 50  0001 C CNN
F 3 "~" H 1000 5000 50  0001 C CNN
	1    1000 5000
	1    0    0    -1  
$EndComp
Text GLabel 1200 4450 2    50   Input ~ 0
GND
Text GLabel 1200 5200 2    50   Input ~ 0
GND
Text GLabel 1200 4150 2    50   Input ~ 0
GP6
Text GLabel 1200 4900 2    50   Input ~ 0
GP7
Text GLabel 3550 4600 0    50   Input ~ 0
GP6
Text GLabel 3550 4700 0    50   Input ~ 0
GP7
Text GLabel 3550 3800 0    50   Input ~ 0
GP0
Text GLabel 3550 3900 0    50   Input ~ 0
GP1
Wire Wire Line
	7000 3950 7100 3950
Connection ~ 7100 3950
Wire Wire Line
	7000 4800 7100 4800
Connection ~ 7100 4800
Text GLabel 3400 6750 2    50   Input ~ 0
DIN
Text GLabel 4800 4900 2    50   Input ~ 0
DIN
$Comp
L flowcontrol-rescue:R-Device-flowcontrol-rescue R3
U 1 1 604F5C88
P 1550 4100
F 0 "R3" H 1620 4146 50  0000 L CNN
F 1 "10k Ω" H 1620 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1480 4100 50  0001 C CNN
F 3 "~" H 1550 4100 50  0001 C CNN
	1    1550 4100
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-rescue:R-Device-flowcontrol-rescue R4
U 1 1 604F6B2F
P 1550 4850
F 0 "R4" H 1620 4896 50  0000 L CNN
F 1 "10k Ω" H 1620 4805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1480 4850 50  0001 C CNN
F 3 "~" H 1550 4850 50  0001 C CNN
	1    1550 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 4250 1550 4250
Wire Wire Line
	1200 5000 1550 5000
Text GLabel 1850 4250 2    50   Input ~ 0
GP23
Text GLabel 1850 5000 2    50   Input ~ 0
GP24
Connection ~ 1550 5000
Wire Wire Line
	1550 5000 1850 5000
Wire Wire Line
	1850 4250 1550 4250
Connection ~ 1550 4250
Text GLabel 4800 5700 2    50   Input ~ 0
GP26
Text GLabel 4800 5600 2    50   Input ~ 0
GP25
$Comp
L flowcontrol-rescue:CH340G-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue U2
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
L flowcontrol-rescue:diode-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue D1
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
L flowcontrol-rescue:C-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue C2
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
L flowcontrol-rescue:R-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue R6
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
L flowcontrol-rescue:diode_LED-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue D5
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
L flowcontrol-rescue:C-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue C1
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
L flowcontrol-rescue:GND-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0101
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
L flowcontrol-rescue:GND-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0102
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
L flowcontrol-rescue:GND-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0103
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
L flowcontrol-rescue:C-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue C4
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
L flowcontrol-rescue:C-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue C5
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
L flowcontrol-rescue:GND-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0104
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
L flowcontrol-rescue:GND-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0105
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
L flowcontrol-rescue:diode-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue D2
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
L flowcontrol-rescue:+5V-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0106
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
L flowcontrol-rescue:+5V-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0107
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
L flowcontrol-rescue:R-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue R7
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
L flowcontrol-rescue:diode_LED-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue D3
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
L flowcontrol-rescue:R-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue R8
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
L flowcontrol-rescue:diode_LED-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue D4
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
L flowcontrol-rescue:+3V3-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0108
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
L flowcontrol-rescue:+3V3-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0109
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
L flowcontrol-rescue:GND-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0110
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
L flowcontrol-rescue:GND-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0111
U 1 1 60C666B3
P 5200 4100
F 0 "#PWR0111" H 5200 3850 50  0001 C CNN
F 1 "GND" H 5200 3950 50  0000 C CNN
F 2 "" H 5200 4100 60  0000 C CNN
F 3 "" H 5200 4100 60  0000 C CNN
	1    5200 4100
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-rescue:R-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue R5
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
L flowcontrol-rescue:C-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue C3
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
L flowcontrol-rescue:GND-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0112
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
L flowcontrol-rescue:GND-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0113
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
L flowcontrol-rescue:C-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue C6
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
L flowcontrol-rescue:GND-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0114
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
	5200 4000 5200 4100
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
	4800 4000 5200 4000
Text GLabel 9000 2500 2    50   Input ~ 0
GP0
Text GLabel 9000 2400 2    50   Input ~ 0
GP1
$Comp
L flowcontrol-rescue:+5V-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0115
U 1 1 60D341CE
P 5050 3900
F 0 "#PWR0115" H 5050 3750 50  0001 C CNN
F 1 "+5V" H 5050 4040 50  0000 C CNN
F 2 "" H 5050 3900 60  0000 C CNN
F 3 "" H 5050 3900 60  0000 C CNN
	1    5050 3900
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-rescue:+3V3-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0116
U 1 1 60D37EDE
P 5000 4200
F 0 "#PWR0116" H 5000 4050 50  0001 C CNN
F 1 "+3V3" H 5000 4340 50  0000 C CNN
F 2 "" H 5000 4200 60  0000 C CNN
F 3 "" H 5000 4200 60  0000 C CNN
	1    5000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4200 5000 4200
Wire Wire Line
	4800 3900 5050 3900
$Comp
L flowcontrol-rescue:+3V3-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0117
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
L flowcontrol-rescue:+3V3-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0118
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
L flowcontrol-rescue:GND-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0119
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
L flowcontrol-rescue:GND-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0120
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
L flowcontrol-rescue:GND-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0121
U 1 1 60D84020
P 4950 6650
F 0 "#PWR0121" H 4950 6400 50  0001 C CNN
F 1 "GND" H 4950 6500 50  0000 C CNN
F 2 "" H 4950 6650 60  0000 C CNN
F 3 "" H 4950 6650 60  0000 C CNN
	1    4950 6650
	0    1    1    0   
$EndComp
$Comp
L flowcontrol-rescue:+5V-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0122
U 1 1 60D932E4
P 4950 6550
F 0 "#PWR0122" H 4950 6400 50  0001 C CNN
F 1 "+5V" H 4950 6690 50  0000 C CNN
F 2 "" H 4950 6550 60  0000 C CNN
F 3 "" H 4950 6550 60  0000 C CNN
	1    4950 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6850 4850 6850
Wire Wire Line
	1550 3950 1550 4050
Wire Wire Line
	1550 4700 1550 4800
$Comp
L flowcontrol-rescue:GND-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0125
U 1 1 60C87607
P 5750 4800
F 0 "#PWR0125" H 5750 4550 50  0001 C CNN
F 1 "GND" H 5750 4650 50  0000 C CNN
F 2 "" H 5750 4800 60  0000 C CNN
F 3 "" H 5750 4800 60  0000 C CNN
	1    5750 4800
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
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x05_P2.54mm_Horizontal" H 2500 1900 50  0001 C CNN
F 3 "~" H 2500 1900 50  0001 C CNN
	1    2500 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2000 2900 2300
$Comp
L flowcontrol-rescue:GND-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0126
U 1 1 60D55E35
P 3750 6550
F 0 "#PWR0126" H 3750 6300 50  0001 C CNN
F 1 "GND" H 3750 6400 50  0000 C CNN
F 2 "" H 3750 6550 60  0000 C CNN
F 3 "" H 3750 6550 60  0000 C CNN
	1    3750 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 6550 3750 6550
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
L flowcontrol-rescue:+5V-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0127
U 1 1 60D4DF4E
P 3900 6650
F 0 "#PWR0127" H 3900 6500 50  0001 C CNN
F 1 "+5V" H 3900 6790 50  0000 C CNN
F 2 "" H 3900 6650 60  0000 C CNN
F 3 "" H 3900 6650 60  0000 C CNN
	1    3900 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 6850 3900 6850
Wire Wire Line
	3900 6850 3900 6650
$Comp
L power:+12V #PWR0128
U 1 1 60D5E24C
P 2250 4350
F 0 "#PWR0128" H 2250 4200 50  0001 C CNN
F 1 "+12V" H 2265 4523 50  0000 C CNN
F 2 "" H 2250 4350 50  0001 C CNN
F 3 "" H 2250 4350 50  0001 C CNN
	1    2250 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4350 1200 4350
$Comp
L power:+12V #PWR0129
U 1 1 60D731FF
P 2250 5100
F 0 "#PWR0129" H 2250 4950 50  0001 C CNN
F 1 "+12V" H 2265 5273 50  0000 C CNN
F 2 "" H 2250 5100 50  0001 C CNN
F 3 "" H 2250 5100 50  0001 C CNN
	1    2250 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 5100 1200 5100
$Comp
L power:+12V #PWR0130
U 1 1 60D76DB0
P 4950 6850
F 0 "#PWR0130" H 4950 6700 50  0001 C CNN
F 1 "+12V" H 4965 7023 50  0000 C CNN
F 2 "" H 4950 6850 50  0001 C CNN
F 3 "" H 4950 6850 50  0001 C CNN
	1    4950 6850
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 60D92F9B
P 5550 4800
F 0 "SW1" H 5550 5085 50  0000 C CNN
F 1 "K2-1102SP-C4SC-04" H 5550 4994 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 5550 5000 50  0001 C CNN
F 3 "~" H 5550 5000 50  0001 C CNN
	1    5550 4800
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-rescue:Conn_01x04_Male-Connector-flowcontrol-rescue J8
U 1 1 617A7B91
P 1000 5800
F 0 "J8" H 1108 6081 50  0000 C CNN
F 1 "Fan 5" H 1108 5990 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 1000 5800 50  0001 C CNN
F 3 "~" H 1000 5800 50  0001 C CNN
	1    1000 5800
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-rescue:Conn_01x04_Male-Connector-flowcontrol-rescue J9
U 1 1 617A7B97
P 1000 6550
F 0 "J9" H 1108 6831 50  0000 C CNN
F 1 "Fan 6" H 1108 6740 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 1000 6550 50  0001 C CNN
F 3 "~" H 1000 6550 50  0001 C CNN
	1    1000 6550
	1    0    0    -1  
$EndComp
Text GLabel 1200 6000 2    50   Input ~ 0
GND
Text GLabel 1200 6750 2    50   Input ~ 0
GND
Text GLabel 1200 5700 2    50   Input ~ 0
GP8
Text GLabel 1200 6450 2    50   Input ~ 0
GP9
$Comp
L flowcontrol-rescue:R-Device-flowcontrol-rescue R11
U 1 1 617A7BA1
P 1550 5650
F 0 "R11" H 1620 5696 50  0000 L CNN
F 1 "10k Ω" H 1620 5605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1480 5650 50  0001 C CNN
F 3 "~" H 1550 5650 50  0001 C CNN
	1    1550 5650
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-rescue:R-Device-flowcontrol-rescue R12
U 1 1 617A7BA7
P 1550 6400
F 0 "R12" H 1620 6446 50  0000 L CNN
F 1 "10k Ω" H 1620 6355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1480 6400 50  0001 C CNN
F 3 "~" H 1550 6400 50  0001 C CNN
	1    1550 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 5800 1550 5800
Wire Wire Line
	1200 6550 1550 6550
Text GLabel 1850 5800 2    50   Input ~ 0
GP25
Text GLabel 1850 6550 2    50   Input ~ 0
GP26
Connection ~ 1550 6550
Wire Wire Line
	1550 6550 1850 6550
Wire Wire Line
	1850 5800 1550 5800
Connection ~ 1550 5800
Wire Wire Line
	1550 5500 1550 5600
Wire Wire Line
	1550 6250 1550 6350
$Comp
L power:+12V #PWR0123
U 1 1 617A7BC5
P 2250 5900
F 0 "#PWR0123" H 2250 5750 50  0001 C CNN
F 1 "+12V" H 2265 6073 50  0000 C CNN
F 2 "" H 2250 5900 50  0001 C CNN
F 3 "" H 2250 5900 50  0001 C CNN
	1    2250 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 5900 1200 5900
$Comp
L power:+12V #PWR0124
U 1 1 617A7BCC
P 2250 6650
F 0 "#PWR0124" H 2250 6500 50  0001 C CNN
F 1 "+12V" H 2265 6823 50  0000 C CNN
F 2 "" H 2250 6650 50  0001 C CNN
F 3 "" H 2250 6650 50  0001 C CNN
	1    2250 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 6650 1200 6650
$Comp
L flowcontrol-rescue:Conn_01x04_Male-Connector-flowcontrol-rescue J10
U 1 1 617AEB09
P 1000 2800
F 0 "J10" H 1108 3081 50  0000 C CNN
F 1 "Fan 1" H 1108 2990 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 1000 2800 50  0001 C CNN
F 3 "~" H 1000 2800 50  0001 C CNN
	1    1000 2800
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-rescue:Conn_01x04_Male-Connector-flowcontrol-rescue J11
U 1 1 617AEB0F
P 1000 3550
F 0 "J11" H 1108 3831 50  0000 C CNN
F 1 "Fan 2" H 1108 3740 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 1000 3550 50  0001 C CNN
F 3 "~" H 1000 3550 50  0001 C CNN
	1    1000 3550
	1    0    0    -1  
$EndComp
Text GLabel 1200 3000 2    50   Input ~ 0
GND
Text GLabel 1200 3750 2    50   Input ~ 0
GND
Text GLabel 1200 2700 2    50   Input ~ 0
GP5
Text GLabel 1200 3450 2    50   Input ~ 0
GP4
$Comp
L flowcontrol-rescue:R-Device-flowcontrol-rescue R9
U 1 1 617AEB19
P 1550 2650
F 0 "R9" H 1620 2696 50  0000 L CNN
F 1 "10k Ω" H 1620 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1480 2650 50  0001 C CNN
F 3 "~" H 1550 2650 50  0001 C CNN
	1    1550 2650
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-rescue:R-Device-flowcontrol-rescue R10
U 1 1 617AEB1F
P 1550 3400
F 0 "R10" H 1620 3446 50  0000 L CNN
F 1 "10k Ω" H 1620 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1480 3400 50  0001 C CNN
F 3 "~" H 1550 3400 50  0001 C CNN
	1    1550 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2800 1550 2800
Wire Wire Line
	1200 3550 1550 3550
Text GLabel 1850 2800 2    50   Input ~ 0
GP21
Text GLabel 1850 3550 2    50   Input ~ 0
GP22
Connection ~ 1550 3550
Wire Wire Line
	1550 3550 1850 3550
Wire Wire Line
	1850 2800 1550 2800
Connection ~ 1550 2800
Wire Wire Line
	1550 2500 1550 2600
Wire Wire Line
	1550 3250 1550 3350
$Comp
L power:+12V #PWR0131
U 1 1 617AEB3D
P 2250 2900
F 0 "#PWR0131" H 2250 2750 50  0001 C CNN
F 1 "+12V" H 2265 3073 50  0000 C CNN
F 2 "" H 2250 2900 50  0001 C CNN
F 3 "" H 2250 2900 50  0001 C CNN
	1    2250 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2900 1200 2900
$Comp
L power:+12V #PWR0132
U 1 1 617AEB44
P 2250 3650
F 0 "#PWR0132" H 2250 3500 50  0001 C CNN
F 1 "+12V" H 2265 3823 50  0000 C CNN
F 2 "" H 2250 3650 50  0001 C CNN
F 3 "" H 2250 3650 50  0001 C CNN
	1    2250 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3650 1200 3650
Text GLabel 3550 4800 0    50   Input ~ 0
GP8
Text GLabel 3550 4900 0    50   Input ~ 0
GP9
Text GLabel 3550 4400 0    50   Input ~ 0
GP5
Text GLabel 3550 4300 0    50   Input ~ 0
GP4
Text GLabel 4800 5400 2    50   Input ~ 0
GP24
Wire Wire Line
	4800 4800 5350 4800
$Comp
L flowcontrol-rescue:+3V3-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0133
U 1 1 6184A33E
P 1550 6250
F 0 "#PWR0133" H 1550 6100 50  0001 C CNN
F 1 "+3V3" H 1550 6390 50  0000 C CNN
F 2 "" H 1550 6250 60  0000 C CNN
F 3 "" H 1550 6250 60  0000 C CNN
	1    1550 6250
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-rescue:+3V3-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0134
U 1 1 6184D192
P 1550 5500
F 0 "#PWR0134" H 1550 5350 50  0001 C CNN
F 1 "+3V3" H 1550 5640 50  0000 C CNN
F 2 "" H 1550 5500 60  0000 C CNN
F 3 "" H 1550 5500 60  0000 C CNN
	1    1550 5500
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-rescue:+3V3-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0135
U 1 1 6184FFEB
P 1550 4700
F 0 "#PWR0135" H 1550 4550 50  0001 C CNN
F 1 "+3V3" H 1550 4840 50  0000 C CNN
F 2 "" H 1550 4700 60  0000 C CNN
F 3 "" H 1550 4700 60  0000 C CNN
	1    1550 4700
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-rescue:+3V3-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0136
U 1 1 61852F26
P 1550 3950
F 0 "#PWR0136" H 1550 3800 50  0001 C CNN
F 1 "+3V3" H 1550 4090 50  0000 C CNN
F 2 "" H 1550 3950 60  0000 C CNN
F 3 "" H 1550 3950 60  0000 C CNN
	1    1550 3950
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-rescue:+3V3-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0137
U 1 1 61855EFA
P 1550 3250
F 0 "#PWR0137" H 1550 3100 50  0001 C CNN
F 1 "+3V3" H 1550 3390 50  0000 C CNN
F 2 "" H 1550 3250 60  0000 C CNN
F 3 "" H 1550 3250 60  0000 C CNN
	1    1550 3250
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-rescue:+3V3-CH340G_D-SUN-V3.0-rescue-flowcontrol-rescue #PWR0138
U 1 1 61859099
P 1550 2500
F 0 "#PWR0138" H 1550 2350 50  0001 C CNN
F 1 "+3V3" H 1550 2640 50  0000 C CNN
F 2 "" H 1550 2500 60  0000 C CNN
F 3 "" H 1550 2500 60  0000 C CNN
	1    1550 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 6650 4950 6750
Text GLabel 4800 5300 2    50   Input ~ 0
GP23
Text GLabel 4800 5200 2    50   Input ~ 0
GP22
Text GLabel 4800 5100 2    50   Input ~ 0
GP21
Connection ~ 4950 6650
$Comp
L SamacSys_Parts:641737-1 J6
U 1 1 604C8CFB
P 4950 6550
F 0 "J6" H 4978 6526 50  0000 L CNN
F 1 "Molex 4 Pin" H 4978 6041 50  0000 L BNN
F 2 "LibraryLoader:641737-1" H 4950 6550 50  0001 C CNN
F 3 "~" H 4950 6550 50  0001 C CNN
	1    4950 6550
	1    0    0    -1  
$EndComp
$Comp
L flowcontrol-rescue:Conn_01x04_Male-Connector-flowcontrol-rescue J7
U 1 1 604E42AE
P 3200 6650
F 0 "J7" H 3308 6931 50  0000 C CNN
F 1 "4 Pin DRGB LED" H 3308 6840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 3200 6650 50  0001 C CNN
F 3 "~" H 3200 6650 50  0001 C CNN
	1    3200 6650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
