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
L Pico_rp2040:PICO_RP2040 U1
U 1 1 604A5D56
P 5600 4050
F 0 "U1" H 5575 5415 50  0000 C CNN
F 1 "PICO_RP2040" H 5575 5324 50  0000 C CNN
F 2 "" H 5500 5500 50  0001 C CNN
F 3 "" H 5500 5500 50  0001 C CNN
	1    5600 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 604B1754
P 7450 4200
F 0 "R1" H 7509 4246 50  0000 L CNN
F 1 "10k Ω" H 7509 4155 50  0000 L CNN
F 2 "" H 7450 4200 50  0001 C CNN
F 3 "~" H 7450 4200 50  0001 C CNN
	1    7450 4200
	1    0    0    -1  
$EndComp
Text GLabel 6200 3200 2    50   Input ~ 0
5v
Text GLabel 6200 3300 2    50   Input ~ 0
GND
Text GLabel 7450 4300 3    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 604C40D7
P 7650 4000
F 0 "J3" H 7678 3976 50  0000 L CNN
F 1 "Temp Sensor (10k Thermistor)" H 7678 3885 50  0000 L CNN
F 2 "" H 7650 4000 50  0001 C CNN
F 3 "~" H 7650 4000 50  0001 C CNN
	1    7650 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 604C8F5D
P 7450 3550
F 0 "R2" H 7509 3596 50  0000 L CNN
F 1 "10k Ω" H 7509 3505 50  0000 L CNN
F 2 "" H 7450 3550 50  0001 C CNN
F 3 "~" H 7450 3550 50  0001 C CNN
	1    7450 3550
	1    0    0    -1  
$EndComp
Text GLabel 7450 3650 3    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x02_Female J4
U 1 1 604C8F64
P 7650 3350
F 0 "J4" H 7678 3326 50  0000 L CNN
F 1 "Temp Sensor (10k Thermistor)" H 7678 3235 50  0000 L CNN
F 2 "" H 7650 3350 50  0001 C CNN
F 3 "~" H 7650 3350 50  0001 C CNN
	1    7650 3350
	1    0    0    -1  
$EndComp
Text GLabel 7350 4100 0    50   Input ~ 0
GP26
Text GLabel 7350 3450 0    50   Input ~ 0
GP27
Text GLabel 6200 3900 2    50   Input ~ 0
GP27
Text GLabel 6200 4000 2    50   Input ~ 0
GP26
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 604CC3B7
P 3000 4700
F 0 "J1" H 3108 4981 50  0000 C CNN
F 1 "Fan 1" H 3108 4890 50  0000 C CNN
F 2 "" H 3000 4700 50  0001 C CNN
F 3 "~" H 3000 4700 50  0001 C CNN
	1    3000 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 604CDDAF
P 3000 5350
F 0 "J2" H 3108 5631 50  0000 C CNN
F 1 "Fan 2" H 3108 5540 50  0000 C CNN
F 2 "" H 3000 5350 50  0001 C CNN
F 3 "~" H 3000 5350 50  0001 C CNN
	1    3000 5350
	1    0    0    -1  
$EndComp
Text GLabel 3200 4600 2    50   Input ~ 0
GND
Text GLabel 3200 5250 2    50   Input ~ 0
GND
Text GLabel 3200 4900 2    50   Input ~ 0
GP6
Text GLabel 3200 5550 2    50   Input ~ 0
GP7
Text GLabel 3200 4700 2    50   Input ~ 0
12v
Text GLabel 3200 5350 2    50   Input ~ 0
12v
Text GLabel 4950 3900 0    50   Input ~ 0
GP6
Text GLabel 4950 4000 0    50   Input ~ 0
GP7
$Comp
L ch34x:CH340G U2
U 1 1 604D18DE
P 3200 2800
F 0 "U2" H 3200 3397 60  0000 C CNN
F 1 "CH340G" H 3200 3291 60  0000 C CNN
F 2 "" H 3300 2600 60  0000 C CNN
F 3 "" H 3300 2600 60  0000 C CNN
	1    3200 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J5
U 1 1 604D43D7
P 1900 2850
F 0 "J5" H 2008 3131 50  0000 C CNN
F 1 "Internal USB" H 2008 3040 50  0000 C CNN
F 2 "" H 1900 2850 50  0001 C CNN
F 3 "~" H 1900 2850 50  0001 C CNN
	1    1900 2850
	1    0    0    -1  
$EndComp
Text GLabel 3650 2450 2    50   Input ~ 0
5v
Text GLabel 2750 2550 0    50   Input ~ 0
GPO
Text GLabel 2750 2650 0    50   Input ~ 0
GP1
Text GLabel 4950 3100 0    50   Input ~ 0
GP0
Text GLabel 4950 3200 0    50   Input ~ 0
GP1
Text GLabel 2100 2850 2    50   Input ~ 0
D-
Text GLabel 2100 2950 2    50   Input ~ 0
D+
Text GLabel 2100 3050 2    50   Input ~ 0
GND
Text GLabel 2750 2950 0    50   Input ~ 0
D-
Text GLabel 2750 2850 0    50   Input ~ 0
D+
$Comp
L Device:Crystal Y1
U 1 1 604AC77B
P 2550 3450
F 0 "Y1" H 2550 3718 50  0000 C CNN
F 1 "12Mhz Crystal" H 2550 3627 50  0000 C CNN
F 2 "" H 2550 3450 50  0001 C CNN
F 3 "~" H 2550 3450 50  0001 C CNN
	1    2550 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 3150 2750 3150
Wire Wire Line
	2700 3150 2700 3450
Wire Wire Line
	2750 3050 2400 3050
Wire Wire Line
	2400 3050 2400 3450
$Comp
L Device:C C1
U 1 1 604B206F
P 2850 3650
F 0 "C1" H 2965 3696 50  0000 L CNN
F 1 "22pF" H 2965 3605 50  0000 L CNN
F 2 "" H 2888 3500 50  0001 C CNN
F 3 "~" H 2850 3650 50  0001 C CNN
	1    2850 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 604B2BC2
P 2250 3650
F 0 "C2" H 2365 3696 50  0000 L CNN
F 1 "22pF" H 2365 3605 50  0000 L CNN
F 2 "" H 2288 3500 50  0001 C CNN
F 3 "~" H 2250 3650 50  0001 C CNN
	1    2250 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3500 2400 3500
Wire Wire Line
	2400 3500 2400 3450
Connection ~ 2400 3450
Wire Wire Line
	2850 3500 2700 3500
Wire Wire Line
	2700 3500 2700 3450
Connection ~ 2700 3450
Text GLabel 2550 3900 3    50   Input ~ 0
GND
Text GLabel 6200 3500 2    50   Input ~ 0
3.3v
Text GLabel 2750 2450 0    50   Input ~ 0
GND
Wire Wire Line
	2250 3800 2550 3800
Wire Wire Line
	2550 3900 2550 3800
Connection ~ 2550 3800
Wire Wire Line
	2550 3800 2850 3800
$Comp
L Device:C C3
U 1 1 604C147A
P 2350 2250
F 0 "C3" H 2465 2296 50  0000 L CNN
F 1 "22pF" H 2465 2205 50  0000 L CNN
F 2 "" H 2388 2100 50  0001 C CNN
F 3 "~" H 2350 2250 50  0001 C CNN
	1    2350 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2400 2350 2750
Wire Wire Line
	2350 2750 2750 2750
Text GLabel 2350 2100 1    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x04_Female J6
U 1 1 604C8CFB
P 8000 5050
F 0 "J6" H 8028 5026 50  0000 L CNN
F 1 "Molex 4 Pin" H 8028 4935 50  0000 L CNN
F 2 "" H 8000 5050 50  0001 C CNN
F 3 "~" H 8000 5050 50  0001 C CNN
	1    8000 5050
	1    0    0    -1  
$EndComp
Text GLabel 7800 4950 0    50   Input ~ 0
5v
Text GLabel 7800 5050 0    50   Input ~ 0
GND
Text GLabel 7800 5150 0    50   Input ~ 0
GND
Text GLabel 7800 5250 0    50   Input ~ 0
12v
Wire Wire Line
	7350 3450 7450 3450
Connection ~ 7450 3450
Wire Wire Line
	7350 4100 7450 4100
Connection ~ 7450 4100
Text GLabel 7450 4000 0    50   Input ~ 0
3.3v
Text GLabel 7450 3350 0    50   Input ~ 0
3.3v
$Comp
L Connector:Conn_01x04_Male J7
U 1 1 604E42AE
P 7700 2800
F 0 "J7" H 7808 3081 50  0000 C CNN
F 1 "4 Pin DRGB LED" H 7808 2990 50  0000 C CNN
F 2 "" H 7700 2800 50  0001 C CNN
F 3 "~" H 7700 2800 50  0001 C CNN
	1    7700 2800
	1    0    0    -1  
$EndComp
Text GLabel 7900 2700 2    50   Input ~ 0
GND
Text GLabel 7900 2800 2    50   Input ~ 0
DIN
Text GLabel 7900 2900 2    50   Input ~ 0
5v
Text GLabel 6200 4200 2    50   Input ~ 0
DIN
$Comp
L Device:R R3
U 1 1 604F5C88
P 3550 4650
F 0 "R3" H 3620 4696 50  0000 L CNN
F 1 "10k Ω" H 3620 4605 50  0000 L CNN
F 2 "" V 3480 4650 50  0001 C CNN
F 3 "~" H 3550 4650 50  0001 C CNN
	1    3550 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 604F6B2F
P 3550 5300
F 0 "R4" H 3620 5346 50  0000 L CNN
F 1 "10k Ω" H 3620 5255 50  0000 L CNN
F 2 "" V 3480 5300 50  0001 C CNN
F 3 "~" H 3550 5300 50  0001 C CNN
	1    3550 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4800 3550 4800
Wire Wire Line
	3200 5450 3550 5450
Text GLabel 3850 4800 2    50   Input ~ 0
GP10
Text GLabel 3850 5450 2    50   Input ~ 0
GP11
Connection ~ 3550 5450
Wire Wire Line
	3550 5450 3850 5450
Wire Wire Line
	3850 4800 3550 4800
Connection ~ 3550 4800
Text GLabel 3550 4500 1    50   Input ~ 0
5v
Text GLabel 3550 5150 1    50   Input ~ 0
5v
Text GLabel 4950 4400 0    50   Input ~ 0
GP10
Text GLabel 4950 4500 0    50   Input ~ 0
GP11
$EndSCHEMATC
