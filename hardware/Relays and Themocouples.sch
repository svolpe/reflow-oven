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
LIBS:diode
LIBS:reflowoven-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L AD8495 DA1
U 1 1 58BC20DB
P 4950 1350
F 0 "DA1" H 4950 1790 60  0000 C CNN
F 1 "AD8495" H 4950 1700 39  0000 C CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 4950 1715 60  0001 C CNN
F 3 "" H -3642 -2315 60  0000 C CNN
	1    4950 1350
	1    0    0    -1  
$EndComp
$Comp
L AD8495 DA2
U 1 1 58BC230C
P 4950 2450
F 0 "DA2" H 4950 2890 60  0000 C CNN
F 1 "AD8495" H 4950 2800 39  0000 C CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 4950 2815 60  0001 C CNN
F 3 "" H -3642 -1215 60  0000 C CNN
	1    4950 2450
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-reflowoven #PWR016
U 1 1 58BC28B4
P 5300 5600
F 0 "#PWR016" H 5300 5600 30  0001 C CNN
F 1 "GND" H 5300 5530 30  0001 C CNN
F 2 "" H 5300 5600 60  0001 C CNN
F 3 "" H 5300 5600 60  0001 C CNN
	1    5300 5600
	1    0    0    -1  
$EndComp
$Comp
L MCHRM3H U5
U 1 1 58BC28BA
P 6650 4050
F 0 "U5" H 6650 4447 60  0000 C CNN
F 1 "MCHRM3H" H 6650 4341 60  0000 C CNN
F 2 "svolpe-custom-mod:MCHRM3H" H -1451 -1670 60  0001 C CNN
F 3 "" H -1451 -1670 60  0001 C CNN
	1    6650 4050
	1    0    0    -1  
$EndComp
$Comp
L ULN2003A U4
U 1 1 58BC28C1
P 5300 4800
F 0 "U4" H 5300 5367 50  0000 C CNN
F 1 "ULN2003A" H 5300 5276 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H -1200 -100 50  0001 L CNN
F 3 "" H -1150 450 50  0001 C CNN
	1    5300 4800
	1    0    0    -1  
$EndComp
$Comp
L MCHRM3H U6
U 1 1 58BC28C8
P 6650 4700
F 0 "U6" H 6650 5097 60  0000 C CNN
F 1 "MCHRM3H" H 6650 4991 60  0000 C CNN
F 2 "svolpe-custom-mod:MCHRM3H" H -1451 -1020 60  0001 C CNN
F 3 "" H -1451 -1020 60  0001 C CNN
	1    6650 4700
	1    0    0    -1  
$EndComp
$Comp
L MCHRM3H U7
U 1 1 58BC28CF
P 6650 5400
F 0 "U7" H 6650 5797 60  0000 C CNN
F 1 "MCHRM3H" H 6650 5691 60  0000 C CNN
F 2 "svolpe-custom-mod:MCHRM3H" H -1451 -320 60  0001 C CNN
F 3 "" H -1451 -320 60  0001 C CNN
	1    6650 5400
	1    0    0    -1  
$EndComp
$Comp
L MCHRM3H U8
U 1 1 58BC28D6
P 6650 6000
F 0 "U8" H 6650 6397 60  0000 C CNN
F 1 "MCHRM3H" H 6650 6291 60  0000 C CNN
F 2 "svolpe-custom-mod:MCHRM3H" H -1451 280 60  0001 C CNN
F 3 "" H -1451 280 60  0001 C CNN
	1    6650 6000
	1    0    0    -1  
$EndComp
Text HLabel 9600 1500 2    60   Input ~ 0
Thermocouple_1+
Text HLabel 9600 1200 2    60   Input ~ 0
Thermocouple_1-
Text HLabel 9600 2800 2    60   Input ~ 0
Thermocouple_2+
Text HLabel 9600 2550 2    60   Input ~ 0
Thermocouple_2-
Text HLabel 1600 5850 0    60   Input ~ 0
RelayDrive
Text HLabel 1600 4500 0    60   Input ~ 0
RelayCTRL_1
Text HLabel 1600 4600 0    60   Input ~ 0
RelayCTRL_2
Text HLabel 1600 4700 0    60   Input ~ 0
RelayCTRL_3
Text HLabel 1600 4800 0    60   Input ~ 0
RelayCTRL_4
Text HLabel 9150 3900 2    60   Output ~ 0
Relay_1_Term_A
Text HLabel 9150 4150 2    60   Output ~ 0
Relay_1_Term_B
Text HLabel 9150 4550 2    60   Output ~ 0
Relay_2_Term_A
Text HLabel 9150 4800 2    60   Output ~ 0
Relay_2_Term_B
Text HLabel 9150 5250 2    60   Output ~ 0
Relay_3_Term_A
Text HLabel 9150 5500 2    60   Output ~ 0
Relay_3_Term_B
Text HLabel 9150 5850 2    60   Output ~ 0
Relay_4_Term_A
Text HLabel 9150 6100 2    60   Output ~ 0
Relay_4_Term_B
Text HLabel 1900 1300 0    60   Output ~ 0
Thermocouple_Out_1
Text HLabel 1900 2250 0    60   Output ~ 0
Thermocouple_Out_2
Wire Wire Line
	5700 4500 6050 4500
Wire Wire Line
	6050 4500 6050 4150
Wire Wire Line
	6050 4150 6400 4150
Wire Wire Line
	5700 4600 6100 4600
Wire Wire Line
	6100 4600 6100 4800
Wire Wire Line
	6100 4800 6400 4800
Wire Wire Line
	5700 4700 6050 4700
Wire Wire Line
	6050 4700 6050 5500
Wire Wire Line
	6050 5500 6400 5500
Wire Wire Line
	5700 4800 6000 4800
Wire Wire Line
	6000 4800 6000 6100
Wire Wire Line
	6000 6100 6400 6100
Wire Wire Line
	1600 5850 6400 5850
Wire Wire Line
	6250 5250 6400 5250
Wire Wire Line
	6400 4550 6250 4550
Wire Wire Line
	6400 3900 6250 3900
Wire Wire Line
	1600 4500 4900 4500
Wire Wire Line
	1600 4600 4900 4600
Wire Wire Line
	1600 4700 4900 4700
Wire Wire Line
	1600 4800 4900 4800
Wire Wire Line
	6900 3900 9150 3900
Wire Wire Line
	6900 4150 9150 4150
Wire Wire Line
	6900 4550 9150 4550
Wire Wire Line
	6900 4800 9150 4800
Wire Wire Line
	6900 5250 9150 5250
Wire Wire Line
	6900 5500 9150 5500
Wire Wire Line
	6900 5850 9150 5850
Wire Wire Line
	6900 6100 9150 6100
Wire Wire Line
	5300 5500 5300 5600
Wire Wire Line
	5700 5300 5850 5300
Wire Wire Line
	6250 3900 6250 5850
Connection ~ 6250 5850
Connection ~ 6250 4550
Connection ~ 6250 5250
Wire Wire Line
	5850 5300 5850 5850
Connection ~ 5850 5850
Wire Wire Line
	4400 1300 4400 750 
Wire Wire Line
	4400 750  7200 750 
Wire Wire Line
	4400 2400 4400 1900
Wire Wire Line
	5700 1800 2850 1800
Wire Wire Line
	2850 1800 2850 1300
Wire Wire Line
	2850 1300 1900 1300
Wire Wire Line
	5500 2600 5700 2600
Wire Wire Line
	5700 2600 5700 3000
Wire Wire Line
	5700 3000 2850 3000
Wire Wire Line
	2850 3000 2850 2250
Wire Wire Line
	2850 2250 1900 2250
Wire Wire Line
	5500 2700 5700 2700
Connection ~ 5700 2700
Wire Wire Line
	5500 1600 5700 1600
Connection ~ 5700 1600
$Comp
L R-RESCUE-reflowoven R8
U 1 1 58BCAC4C
P 8250 1550
F 0 "R8" V 8100 1350 50  0000 C CNN
F 1 "10K" V 8134 1550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 230 300 50  0001 C CNN
F 3 "" H 300 300 50  0001 C CNN
	1    8250 1550
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-reflowoven R7
U 1 1 58BCACA9
P 8250 1100
F 0 "R7" V 8150 900 50  0000 C CNN
F 1 "10K" V 8134 1100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V -20 -400 50  0001 C CNN
F 3 "" H 50  -400 50  0001 C CNN
	1    8250 1100
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-reflowoven R10
U 1 1 58BCAD1D
P 8250 3050
F 0 "R10" V 8050 2850 50  0000 C CNN
F 1 "10K" V 8134 3050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V -70 1050 50  0001 C CNN
F 3 "" H 0   1050 50  0001 C CNN
	1    8250 3050
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-reflowoven R9
U 1 1 58BCAD68
P 8250 2550
F 0 "R9" V 8050 2350 50  0000 C CNN
F 1 "10K" V 8134 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V -70 100 50  0001 C CNN
F 3 "" H 0   100 50  0001 C CNN
	1    8250 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 1200 9600 1200
Connection ~ 5700 2600
Wire Wire Line
	4400 1500 4050 1500
Wire Wire Line
	4050 1400 4050 3250
Wire Wire Line
	4400 2600 4050 2600
Connection ~ 4050 2600
$Comp
L GND-RESCUE-reflowoven #PWR017
U 1 1 58BCB7D2
P 4050 3250
F 0 "#PWR017" H 4050 3250 30  0001 C CNN
F 1 "GND" H 4050 3180 30  0001 C CNN
F 2 "" H 4050 3250 60  0001 C CNN
F 3 "" H 4050 3250 60  0001 C CNN
	1    4050 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2500 4050 2500
Connection ~ 4050 2500
Wire Wire Line
	4400 1400 4050 1400
Connection ~ 4050 1500
$Comp
L C-RESCUE-reflowoven C11
U 1 1 58BCBF33
P 8650 2850
F 0 "C11" H 8765 2896 50  0000 L CNN
F 1 "100nF" H 8765 2805 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1038 100 50  0001 C CNN
F 3 "" H 1000 250 50  0001 C CNN
	1    8650 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1900 7250 1900
$Comp
L C-RESCUE-reflowoven C7
U 1 1 58BCC573
P 8650 900
F 0 "C7" H 8765 946 50  0000 L CNN
F 1 "10nF" H 8765 855 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H -12 -600 50  0001 C CNN
F 3 "" H -50 -450 50  0001 C CNN
	1    8650 900 
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-reflowoven C9
U 1 1 58BCC5B9
P 8650 1800
F 0 "C9" H 8765 1846 50  0000 L CNN
F 1 "10nF" H 8765 1755 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H -12 300 50  0001 C CNN
F 3 "" H -50 450 50  0001 C CNN
	1    8650 1800
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-reflowoven C10
U 1 1 58BCC675
P 8650 2300
F 0 "C10" H 8765 2346 50  0000 L CNN
F 1 "10nF" H 8765 2255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H -12 800 50  0001 C CNN
F 3 "" H -50 950 50  0001 C CNN
	1    8650 2300
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-reflowoven C12
U 1 1 58BCC6DB
P 8650 3300
F 0 "C12" H 8765 3346 50  0000 L CNN
F 1 "10nF" H 8765 3255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H -12 1800 50  0001 C CNN
F 3 "" H -50 1950 50  0001 C CNN
	1    8650 3300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-reflowoven #PWR018
U 1 1 58BCC736
P 9000 2200
F 0 "#PWR018" H 9000 2200 30  0001 C CNN
F 1 "GND" H 9000 2130 30  0001 C CNN
F 2 "" H 9000 2200 60  0001 C CNN
F 3 "" H 9000 2200 60  0001 C CNN
	1    9000 2200
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-reflowoven #PWR019
U 1 1 58BCC774
P 8950 750
F 0 "#PWR019" H 8950 750 30  0001 C CNN
F 1 "GND" H 8950 680 30  0001 C CNN
F 2 "" H 8950 750 60  0001 C CNN
F 3 "" H 8950 750 60  0001 C CNN
	1    8950 750 
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-reflowoven #PWR020
U 1 1 58BCC7B2
P 8650 3650
F 0 "#PWR020" H 8650 3650 30  0001 C CNN
F 1 "GND" H 8650 3580 30  0001 C CNN
F 2 "" H 8650 3650 60  0001 C CNN
F 3 "" H 8650 3650 60  0001 C CNN
	1    8650 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 3500 8650 3650
Wire Wire Line
	5500 1300 7200 1300
Wire Wire Line
	5700 1500 5700 1800
Wire Wire Line
	5500 1400 5500 1000
Wire Wire Line
	6050 2400 6050 3050
Wire Wire Line
	6050 2400 5500 2400
Wire Wire Line
	5500 2500 5500 2200
Wire Wire Line
	5700 1500 5500 1500
Wire Wire Line
	7250 1900 7250 2550
Text Notes 10650 1500 0    60   ~ 0
Yellow wire
Text Notes 10650 1250 0    60   ~ 0
Red wire
Text Notes 3800 1100 0    60   ~ 0
5mV/C
$Comp
L +3.3V-RESCUE-reflowoven #PWR021
U 1 1 58D7F88C
P 5500 1000
AR Path="/58D7F88C" Ref="#PWR021"  Part="1" 
AR Path="/58BC1D4B/58D7F88C" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 1300 0   50  0001 C CNN
F 1 "+3.3V" H 5515 1173 50  0000 C CNN
F 2 "" H 1300 150 50  0001 C CNN
F 3 "" H 1300 150 50  0001 C CNN
	1    5500 1000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V-RESCUE-reflowoven #PWR022
U 1 1 58D7FA01
P 5500 2200
AR Path="/58D7FA01" Ref="#PWR022"  Part="1" 
AR Path="/58BC1D4B/58D7FA01" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 1300 1200 50  0001 C CNN
F 1 "+3.3V" H 5515 2373 50  0000 C CNN
F 2 "" H 1300 1350 50  0001 C CNN
F 3 "" H 1300 1350 50  0001 C CNN
	1    5500 2200
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-reflowoven R11
U 1 1 58EA5F41
P 9300 900
F 0 "R11" V 9200 700 50  0000 C CNN
F 1 "1M" V 9184 900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1030 -600 50  0001 C CNN
F 3 "" H 1100 -600 50  0001 C CNN
	1    9300 900 
	-1   0    0    1   
$EndComp
$Comp
L R-RESCUE-reflowoven R12
U 1 1 58EA60CD
P 9300 2300
F 0 "R12" V 9200 2150 50  0000 C CNN
F 1 "1M" V 9200 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1030 800 50  0001 C CNN
F 3 "" H 1100 800 50  0001 C CNN
	1    9300 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 1150 9300 1200
Connection ~ 9300 1200
Wire Wire Line
	8650 650  9300 650 
Wire Wire Line
	8950 750  8950 650 
Connection ~ 8950 650 
Connection ~ 9000 2050
$Comp
L C-RESCUE-reflowoven C8
U 1 1 58BCBF8F
P 8650 1350
F 0 "C8" H 8765 1396 50  0000 L CNN
F 1 "100nF" H 8765 1305 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H -12 -150 50  0001 C CNN
F 3 "" H -50 0   50  0001 C CNN
	1    8650 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1100 9000 1100
Wire Wire Line
	8650 1100 8650 1150
Wire Wire Line
	8500 1550 9300 1550
Wire Wire Line
	8650 1550 8650 1600
Wire Wire Line
	9000 1100 9000 1200
Connection ~ 8650 1100
Wire Wire Line
	9300 1550 9300 1500
Wire Wire Line
	9300 1500 9600 1500
Connection ~ 8650 1550
Wire Wire Line
	7200 750  7200 1100
Wire Wire Line
	7200 1100 8000 1100
Wire Wire Line
	7200 1300 7200 1550
Wire Wire Line
	7200 1550 8000 1550
Wire Wire Line
	7250 2550 8000 2550
Wire Wire Line
	6050 3050 8000 3050
Wire Wire Line
	8650 3050 8650 3100
Wire Wire Line
	8500 2550 9600 2550
Wire Wire Line
	8650 2500 8650 2650
Connection ~ 8650 2550
Connection ~ 8650 3050
Wire Wire Line
	8650 2100 8650 2000
Connection ~ 8650 2050
Wire Wire Line
	9000 2200 9000 2050
Connection ~ 9300 2050
Wire Wire Line
	8500 3050 9500 3050
Wire Wire Line
	8650 650  8650 700 
Wire Wire Line
	9300 2050 8650 2050
Connection ~ 9300 2550
Wire Wire Line
	9500 3050 9500 2800
Wire Wire Line
	9500 2800 9600 2800
$EndSCHEMATC
