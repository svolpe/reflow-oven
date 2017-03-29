EESchema Schematic File Version 2
LIBS:reflowoven-rescue
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
LIBS:pspice
LIBS:analog_devices
LIBS:svolpe-custom
LIBS:reflowoven-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 2
Title ""
Date "3 mar 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MSP430G2553IPW20 U1
U 1 1 50F7583A
P 3600 4100
F 0 "U1" H 6050 4200 60  0000 C CNN
F 1 "MSP430G2553IPW20" H 4900 2800 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-20_4.4x6.5mm_Pitch0.65mm" H 3600 4100 60  0001 C CNN
F 3 "" H 3600 4100 60  0001 C CNN
	1    3600 4100
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-reflowoven #PWR01
U 1 1 50F87C99
P 4900 6150
F 0 "#PWR01" H 4900 6150 30  0001 C CNN
F 1 "GND" H 4900 6080 30  0001 C CNN
F 2 "" H 4900 6150 60  0001 C CNN
F 3 "" H 4900 6150 60  0001 C CNN
	1    4900 6150
	1    0    0    -1  
$EndComp
Text Label 3100 4500 0    60   ~ 0
RX
Text Label 3100 4600 0    60   ~ 0
TX
Text Label 2950 4800 0    60   ~ 0
TEMP_1
$Comp
L CONN_6 P2
U 1 1 50FB8525
P 1450 5250
F 0 "P2" V 1400 5250 60  0000 C CNN
F 1 "CONN_6" V 1500 5250 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 1450 5250 60  0001 C CNN
F 3 "" H 1450 5250 60  0001 C CNN
	1    1450 5250
	-1   0    0    -1  
$EndComp
$Comp
L GND-RESCUE-reflowoven #PWR02
U 1 1 50FB89AB
P 2200 5900
F 0 "#PWR02" H 2200 5900 30  0001 C CNN
F 1 "GND" H 2200 5830 30  0001 C CNN
F 2 "" H 2200 5900 60  0001 C CNN
F 3 "" H 2200 5900 60  0001 C CNN
	1    2200 5900
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 50FB89E1
P 2450 5000
F 0 "R4" V 2530 5000 50  0000 C CNN
F 1 "47K" V 2450 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2450 5000 60  0001 C CNN
F 3 "" H 2450 5000 60  0001 C CNN
	1    2450 5000
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-reflowoven C2
U 1 1 50FB8DFC
P 2450 5650
F 0 "C2" H 2500 5750 50  0000 L CNN
F 1 "1nF" H 2500 5550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2450 5650 60  0001 C CNN
F 3 "" H 2450 5650 60  0001 C CNN
	1    2450 5650
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X1
U 1 1 50FB9344
P 3850 6350
F 0 "X1" H 3850 6500 60  0000 C CNN
F 1 "CRYSTAL" H 3850 6200 60  0000 C CNN
F 2 "Crystals:Crystal_Round_d1.0mm_Vertical" H 3850 6350 60  0001 C CNN
F 3 "" H 3850 6350 60  0001 C CNN
	1    3850 6350
	-1   0    0    1   
$EndComp
$Comp
L C-RESCUE-reflowoven C3
U 1 1 50FB9351
P 3550 6650
F 0 "C3" H 3600 6750 50  0000 L CNN
F 1 "12pF" H 3600 6550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3550 6650 60  0001 C CNN
F 3 "" H 3550 6650 60  0001 C CNN
	1    3550 6650
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-reflowoven C4
U 1 1 50FB9357
P 4150 6650
F 0 "C4" H 4200 6750 50  0000 L CNN
F 1 "12pF" H 4200 6550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4150 6650 60  0001 C CNN
F 3 "" H 4150 6650 60  0001 C CNN
	1    4150 6650
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-reflowoven #PWR03
U 1 1 50FB94DA
P 3850 6950
F 0 "#PWR03" H 3850 6950 30  0001 C CNN
F 1 "GND" H 3850 6880 30  0001 C CNN
F 2 "" H 3850 6950 60  0001 C CNN
F 3 "" H 3850 6950 60  0001 C CNN
	1    3850 6950
	1    0    0    -1  
$EndComp
Text Label 2050 5300 0    60   ~ 0
TDIO
Text Label 2050 5200 0    60   ~ 0
TCK
$Comp
L LED-RESCUE-reflowoven D1
U 1 1 50FC1D40
P 1450 4000
F 0 "D1" H 1450 4100 50  0000 C CNN
F 1 "LED" H 1450 3900 50  0000 C CNN
F 2 "LEDs:LED_D4.0mm" H 1450 4000 60  0001 C CNN
F 3 "" H 1450 4000 60  0001 C CNN
	1    1450 4000
	-1   0    0    1   
$EndComp
$Comp
L LED-RESCUE-reflowoven D2
U 1 1 50FC1D4F
P 1450 4450
F 0 "D2" H 1450 4550 50  0000 C CNN
F 1 "LED" H 1450 4350 50  0000 C CNN
F 2 "LEDs:LED_D4.0mm" H 1450 4450 60  0001 C CNN
F 3 "" H 1450 4450 60  0001 C CNN
	1    1450 4450
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 50FC1D77
P 2050 4000
F 0 "R2" V 2130 4000 50  0000 C CNN
F 1 "270" V 2050 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2050 4000 60  0001 C CNN
F 3 "" H 2050 4000 60  0001 C CNN
	1    2050 4000
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 50FC1D9D
P 2050 4450
F 0 "R3" V 2130 4450 50  0000 C CNN
F 1 "270" V 2050 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2050 4450 60  0001 C CNN
F 3 "" H 2050 4450 60  0001 C CNN
	1    2050 4450
	0    1    1    0   
$EndComp
$Comp
L GND-RESCUE-reflowoven #PWR04
U 1 1 50FC20B8
P 1100 4600
F 0 "#PWR04" H 1100 4600 30  0001 C CNN
F 1 "GND" H 1100 4530 30  0001 C CNN
F 2 "" H 1100 4600 60  0001 C CNN
F 3 "" H 1100 4600 60  0001 C CNN
	1    1100 4600
	1    0    0    -1  
$EndComp
Text Label 4150 6350 0    60   ~ 0
XOUT
Text Label 3550 6350 0    60   ~ 0
XIN
Text Label 3050 5600 0    60   ~ 0
XIN
Text Label 3050 5700 0    60   ~ 0
XOUT
$Comp
L C-RESCUE-reflowoven C6
U 1 1 51008664
P 5650 3750
F 0 "C6" H 5700 3850 50  0000 L CNN
F 1 "100nF" H 5700 3650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5650 3750 60  0001 C CNN
F 3 "" H 5650 3750 60  0001 C CNN
	1    5650 3750
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-reflowoven #PWR05
U 1 1 51008987
P 5500 4000
F 0 "#PWR05" H 5500 4000 30  0001 C CNN
F 1 "GND" H 5500 3930 30  0001 C CNN
F 2 "" H 5500 4000 60  0001 C CNN
F 3 "" H 5500 4000 60  0001 C CNN
	1    5500 4000
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 51008DD5
P 5300 3750
F 0 "C5" H 5350 3850 50  0000 L CNN
F 1 "10uF" H 5350 3650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5300 3750 60  0001 C CNN
F 3 "" H 5300 3750 60  0001 C CNN
	1    5300 3750
	1    0    0    -1  
$EndComp
Text Label 2300 4000 0    60   ~ 0
P1.0
Text Label 2300 4450 0    60   ~ 0
P1.6
NoConn ~ 3300 4700
NoConn ~ 1800 5000
NoConn ~ 1800 5500
$Comp
L CONN_01X08 P5
U 1 1 58B21E23
P 9850 4650
F 0 "P5" H 9928 4691 50  0000 L CNN
F 1 "CONN_01X08" H 9928 4600 50  0000 L CNN
F 2 "svolpe-custom-mod:1935226" H 1850 850 50  0001 C CNN
F 3 "" H 1850 850 50  0001 C CNN
	1    9850 4650
	1    0    0    -1  
$EndComp
$Sheet
S 6950 2900 2150 2500
U 58BC1D4B
F0 "Relays and Themocouples" 60
F1 "Relays and Themocouples.sch" 60
F2 "Thermocouple_1+" I R 9100 3000 60 
F3 "Thermocouple_1-" I R 9100 3200 60 
F4 "Thermocouple_2+" I R 9100 3500 60 
F5 "Thermocouple_2-" I R 9100 3700 60 
F6 "RelayDrive" I L 6950 3600 60 
F7 "RelayCTRL_1" I L 6950 3750 60 
F8 "RelayCTRL_2" I L 6950 3900 60 
F9 "RelayCTRL_3" I L 6950 4050 60 
F10 "RelayCTRL_4" I L 6950 4200 60 
F11 "Relay_1_Term_A" O R 9100 3950 60 
F12 "Relay_1_Term_B" O R 9100 4100 60 
F13 "Relay_2_Term_A" O R 9100 4350 60 
F14 "Relay_3_Term_A" O R 9100 4750 60 
F15 "Relay_3_Term_B" O R 9100 4900 60 
F16 "Relay_4_Term_A" O R 9100 5150 60 
F17 "Relay_4_Term_B" O R 9100 5300 60 
F18 "Thermocouple_Out_1" O L 6950 3050 60 
F19 "Relay_2_Term_B" O R 9100 4500 60 
F20 "Thermocouple_Out_2" O L 6950 3200 60 
$EndSheet
$Comp
L CONN_2 P4
U 1 1 58BC2BD7
P 9800 3600
F 0 "P4" V 9750 3600 40  0000 C CNN
F 1 "CONN_2" V 9850 3600 40  0000 C CNN
F 2 "svolpe-custom-mod:1751248" H 9800 3600 60  0001 C CNN
F 3 "" H 9800 3600 60  0001 C CNN
	1    9800 3600
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P3
U 1 1 58BC2BDE
P 9800 3100
F 0 "P3" V 9750 3100 40  0000 C CNN
F 1 "CONN_2" V 9850 3100 40  0000 C CNN
F 2 "svolpe-custom-mod:1751248" H 9800 3100 60  0001 C CNN
F 3 "" H 9800 3100 60  0001 C CNN
	1    9800 3100
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-reflowoven #PWR06
U 1 1 58BC3A9D
P 1950 2500
F 0 "#PWR06" H 1950 2500 30  0001 C CNN
F 1 "GND" H 1950 2430 30  0001 C CNN
F 2 "" H 1950 2500 60  0001 C CNN
F 3 "" H 1950 2500 60  0001 C CNN
	1    1950 2500
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 58BC3AA3
P 1650 2400
F 0 "R1" V 1730 2400 50  0000 C CNN
F 1 "0" V 1650 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" H 1650 2400 60  0001 C CNN
F 3 "" H 1650 2400 60  0001 C CNN
	1    1650 2400
	0    -1   -1   0   
$EndComp
$Comp
L USB-A-SHLD P1
U 1 1 58BC3AAA
P 1550 1700
F 0 "P1" H 1550 2150 60  0000 C CNN
F 1 "USB-A-SHLD" H 1686 2332 60  0000 C CNN
F 2 "Connectors:USB_B" H 1550 1700 60  0001 C CNN
F 3 "" H 1550 1700 60  0001 C CNN
	1    1550 1700
	-1   0    0    -1  
$EndComp
Text Label 1350 2400 3    60   ~ 0
ESD_RING
$Comp
L FT232RL U2
U 1 1 58BD090E
P 3800 2050
F 0 "U2" H 3800 2950 60  0000 C CNN
F 1 "FT232RL" H 4200 1050 60  0000 L CNN
F 2 "Housings_SSOP:SSOP-28_5.3x10.2mm_Pitch0.65mm" H 3800 2050 60  0001 C CNN
F 3 "" H 3800 2050 60  0001 C CNN
	1    3800 2050
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-reflowoven #PWR07
U 1 1 58BD0915
P 3800 3350
F 0 "#PWR07" H 3800 3350 30  0001 C CNN
F 1 "GND" H 3800 3280 30  0001 C CNN
F 2 "" H 3800 3350 60  0001 C CNN
F 3 "" H 3800 3350 60  0001 C CNN
	1    3800 3350
	1    0    0    -1  
$EndComp
Text Label 4750 1350 0    60   ~ 0
RX
Text Label 4750 1450 0    60   ~ 0
TX
Text Label 2200 1650 0    60   ~ 0
USB_DM
Text Label 2200 1750 0    60   ~ 0
USB_DP
Text Label 2200 1400 0    60   ~ 0
VBUS
$Comp
L GND-RESCUE-reflowoven #PWR08
U 1 1 58BD0926
P 6600 2200
F 0 "#PWR08" H 6600 2200 30  0001 C CNN
F 1 "GND" H 6600 2130 30  0001 C CNN
F 2 "" H 6600 2200 60  0001 C CNN
F 3 "" H 6600 2200 60  0001 C CNN
	1    6600 2200
	1    0    0    -1  
$EndComp
$Comp
L LM317 U3
U 1 1 58BD092C
P 5800 1100
F 0 "U3" H 5800 1400 60  0000 C CNN
F 1 "LM317" H 5850 850 60  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 5800 1100 60  0001 C CNN
F 3 "" H 5800 1100 60  0001 C CNN
	1    5800 1100
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-reflowoven R5
U 1 1 58BD0933
P 6450 1200
F 0 "R5" V 6530 1200 50  0000 C CNN
F 1 "750" V 6450 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6450 1200 60  0001 C CNN
F 3 "" H 6450 1200 60  0001 C CNN
	1    6450 1200
	-1   0    0    1   
$EndComp
$Comp
L R-RESCUE-reflowoven R6
U 1 1 58BD093A
P 6450 1800
F 0 "R6" V 6530 1800 50  0000 C CNN
F 1 "2K" V 6450 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6450 1800 60  0001 C CNN
F 3 "" H 6450 1800 60  0001 C CNN
	1    6450 1800
	-1   0    0    1   
$EndComp
Text Label 5150 950  0    60   ~ 0
VBUS
NoConn ~ 4700 1550
NoConn ~ 4700 1650
NoConn ~ 4700 1750
NoConn ~ 4700 1850
NoConn ~ 4700 1950
NoConn ~ 4700 2050
NoConn ~ 4700 2150
NoConn ~ 4700 2250
NoConn ~ 4700 2350
NoConn ~ 4700 2450
NoConn ~ 4700 2550
NoConn ~ 2850 2350
NoConn ~ 2850 2250
NoConn ~ 2850 2050
Text Label 6550 3050 0    60   ~ 0
TEMP_1
Text Label 2950 4900 0    60   ~ 0
TEMP_2
Text Label 6550 3200 0    60   ~ 0
TEMP_2
$Comp
L +5V #PWR09
U 1 1 58BE4EB3
P 2100 1050
F 0 "#PWR09" H 50  -50 50  0001 C CNN
F 1 "+5V" H 2115 1223 50  0000 C CNN
F 2 "" H 50  100 50  0001 C CNN
F 3 "" H 50  100 50  0001 C CNN
	1    2100 1050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR010
U 1 1 58BE558A
P 6250 3450
F 0 "#PWR010" H 0   0   50  0001 C CNN
F 1 "+5V" H 6265 3623 50  0000 C CNN
F 2 "" H 0   150 50  0001 C CNN
F 3 "" H 0   150 50  0001 C CNN
	1    6250 3450
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-reflowoven C1
U 1 1 58BD0941
P 2650 2800
F 0 "C1" H 2700 2900 50  0000 L CNN
F 1 "100nF" H 2700 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2650 2800 60  0001 C CNN
F 3 "" H 2650 2800 60  0001 C CNN
	1    2650 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4500 3100 4500
Wire Wire Line
	3300 4600 3100 4600
Wire Wire Line
	3300 4800 2950 4800
Wire Wire Line
	2050 5100 1800 5100
Wire Wire Line
	1800 5300 3300 5300
Wire Wire Line
	1800 5400 2050 5400
Wire Wire Line
	2050 4750 2050 5100
Wire Wire Line
	2350 5400 3300 5400
Wire Wire Line
	2050 5400 2050 5850
Wire Wire Line
	2350 5400 2350 5200
Wire Wire Line
	2350 5200 1800 5200
Wire Wire Line
	2450 5150 2450 5450
Connection ~ 2450 5300
Wire Wire Line
	2450 4750 2050 4750
Wire Wire Line
	2050 5850 2450 5850
Wire Wire Line
	2200 5900 2200 5850
Connection ~ 2200 5850
Wire Wire Line
	4150 6450 4150 6350
Wire Wire Line
	3550 6450 3550 6350
Wire Wire Line
	3550 6850 4150 6850
Wire Wire Line
	3850 6950 3850 6850
Connection ~ 3850 6850
Wire Wire Line
	1650 4000 1900 4000
Wire Wire Line
	1650 4450 1900 4450
Wire Wire Line
	1250 4000 1100 4000
Wire Wire Line
	1100 4000 1100 4600
Wire Wire Line
	1100 4450 1250 4450
Connection ~ 1100 4450
Wire Wire Line
	2200 4000 3200 4000
Wire Wire Line
	3300 5600 3050 5600
Wire Wire Line
	3300 5700 3050 5700
Wire Wire Line
	4900 3450 4900 3800
Wire Wire Line
	4900 3550 5650 3550
Connection ~ 4900 3550
Connection ~ 5300 3550
Wire Wire Line
	5300 3950 5650 3950
Wire Wire Line
	5500 4000 5500 3950
Connection ~ 5500 3950
Wire Wire Line
	2200 4450 2700 4450
Wire Wire Line
	3300 4400 3200 4400
Wire Wire Line
	3200 4400 3200 4000
Wire Wire Line
	2700 5000 3300 5000
Wire Wire Line
	2450 4750 2450 4850
Wire Wire Line
	1950 1400 2850 1400
Wire Wire Line
	2200 1800 1950 1800
Wire Wire Line
	2200 1600 1950 1600
Wire Wire Line
	1950 2000 1950 2500
Wire Wire Line
	1800 2400 1950 2400
Connection ~ 1950 2400
Wire Wire Line
	1350 2400 1500 2400
Wire Wire Line
	1350 2400 1350 2350
Connection ~ 3800 3250
Wire Wire Line
	2850 1750 2200 1750
Wire Wire Line
	2200 1750 2200 1800
Wire Wire Line
	2200 1650 2850 1650
Wire Wire Line
	2200 1650 2200 1600
Wire Wire Line
	4700 1350 4900 1350
Wire Wire Line
	4700 1450 4900 1450
Wire Wire Line
	3800 3250 3800 3350
Wire Wire Line
	6200 950  6850 950 
Wire Wire Line
	6850 950  6850 900 
Connection ~ 6450 950 
Wire Wire Line
	6600 2050 6450 2050
Wire Wire Line
	6450 1450 6450 1550
Wire Wire Line
	6450 1500 5800 1500
Wire Wire Line
	5800 1500 5800 1450
Connection ~ 6450 1500
Wire Wire Line
	6600 2200 6600 2050
Wire Wire Line
	3500 3250 4100 3250
Connection ~ 3650 3250
Connection ~ 3950 3250
Wire Wire Line
	5400 950  5150 950 
Wire Wire Line
	2850 1300 2800 1300
Wire Wire Line
	2800 1300 2800 1150
Wire Wire Line
	9100 3950 9650 3950
Wire Wire Line
	9650 3950 9650 4300
Wire Wire Line
	9100 4100 9550 4100
Wire Wire Line
	9550 4100 9550 4400
Wire Wire Line
	9550 4400 9650 4400
Wire Wire Line
	9100 4350 9500 4350
Wire Wire Line
	9500 4350 9500 4500
Wire Wire Line
	9500 4500 9650 4500
Wire Wire Line
	9100 4500 9400 4500
Wire Wire Line
	9400 4500 9400 4600
Wire Wire Line
	9400 4600 9650 4600
Wire Wire Line
	9100 4750 9400 4750
Wire Wire Line
	9400 4750 9400 4700
Wire Wire Line
	9400 4700 9650 4700
Wire Wire Line
	9100 4900 9450 4900
Wire Wire Line
	9450 4900 9450 4800
Wire Wire Line
	9450 4800 9650 4800
Wire Wire Line
	9100 5150 9500 5150
Wire Wire Line
	9500 5150 9500 4900
Wire Wire Line
	9500 4900 9650 4900
Wire Wire Line
	9100 5300 9650 5300
Wire Wire Line
	9650 5300 9650 5000
Wire Wire Line
	9100 3000 9450 3000
Wire Wire Line
	9100 3200 9450 3200
Wire Wire Line
	9100 3500 9450 3500
Wire Wire Line
	9100 3700 9450 3700
Wire Wire Line
	6550 3050 6950 3050
Wire Wire Line
	2700 4450 2700 5000
Wire Wire Line
	3300 4900 2950 4900
Wire Wire Line
	6950 3200 6550 3200
Wire Wire Line
	5300 3600 5300 3550
Wire Wire Line
	5300 3900 5300 3950
Wire Wire Line
	6400 3750 6950 3750
Wire Wire Line
	6500 3900 6950 3900
Wire Wire Line
	6400 5250 6400 3750
Wire Wire Line
	6400 5350 6500 5350
Wire Wire Line
	6500 5350 6500 3900
Wire Wire Line
	6400 5450 6600 5450
Wire Wire Line
	6600 5450 6600 4050
Wire Wire Line
	6600 4050 6950 4050
Wire Wire Line
	6400 5550 6700 5550
Wire Wire Line
	6700 5550 6700 4200
Wire Wire Line
	6700 4200 6950 4200
Wire Wire Line
	2100 1400 2100 1050
Connection ~ 2100 1400
Wire Wire Line
	6950 3600 6250 3600
Wire Wire Line
	6250 3600 6250 3450
Wire Wire Line
	2850 2550 2650 2550
Wire Wire Line
	2650 2550 2650 2600
$Comp
L GND #PWR011
U 1 1 58BE58A9
P 2650 3000
F 0 "#PWR011" H 0   -350 50  0001 C CNN
F 1 "GND" H 2655 2827 50  0000 C CNN
F 2 "" H 0   -100 50  0001 C CNN
F 3 "" H 0   -100 50  0001 C CNN
	1    2650 3000
	1    0    0    -1  
$EndComp
Text Notes 7680 930  0    60   ~ 0
R6
Text Notes 7580 1030 0    60   ~ 0
R5 + 1
Wire Notes Line
	7580 930  7880 930 
Text Notes 6930 960  0    60   ~ 0
Vo = 1.25V x 
$Comp
L +3.3V #PWR012
U 1 1 58D854D1
P 2800 1150
F 0 "#PWR012" H -150 200 50  0001 C CNN
F 1 "+3.3V" H 2815 1323 50  0000 C CNN
F 2 "" H -150 350 50  0001 C CNN
F 3 "" H -150 350 50  0001 C CNN
	1    2800 1150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR013
U 1 1 58D85715
P 6850 900
F 0 "#PWR013" H 0   -50 50  0001 C CNN
F 1 "+3.3V" H 6865 1073 50  0000 C CNN
F 2 "" H 0   100 50  0001 C CNN
F 3 "" H 0   100 50  0001 C CNN
	1    6850 900 
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR014
U 1 1 58D86E74
P 2050 4750
F 0 "#PWR014" H -550 350 50  0001 C CNN
F 1 "+3.3V" H 2065 4923 50  0000 C CNN
F 2 "" H -550 500 50  0001 C CNN
F 3 "" H -550 500 50  0001 C CNN
	1    2050 4750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR015
U 1 1 58D86F28
P 4900 3450
F 0 "#PWR015" H -50 -150 50  0001 C CNN
F 1 "+3.3V" H 4915 3623 50  0000 C CNN
F 2 "" H -50 0   50  0001 C CNN
F 3 "" H -50 0   50  0001 C CNN
	1    4900 3450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
