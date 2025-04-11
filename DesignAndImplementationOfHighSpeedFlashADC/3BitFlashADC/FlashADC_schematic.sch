EESchema Schematic File Version 2
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
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:eSim_SKY130
LIBS:eSim_SKY130_Subckts
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
L priorityencoder U2
U 1 1 67EE6F2F
P 4600 5400
F 0 "U2" H 7450 7200 60  0000 C CNN
F 1 "priorityencoder" H 7450 7400 60  0000 C CNN
F 2 "" H 7450 7350 60  0000 C CNN
F 3 "" H 7450 7350 60  0000 C CNN
	1    4600 5400
	1    0    0    -1  
$EndComp
$Comp
L lm_741 X1
U 1 1 67EE6FA5
P 3750 1000
F 0 "X1" H 3550 1000 60  0000 C CNN
F 1 "lm_741" H 3650 750 60  0000 C CNN
F 2 "" H 3750 1000 60  0000 C CNN
F 3 "" H 3750 1000 60  0000 C CNN
	1    3750 1000
	1    0    0    -1  
$EndComp
$Comp
L lm_741 X2
U 1 1 67EE701E
P 3750 2050
F 0 "X2" H 3550 2050 60  0000 C CNN
F 1 "lm_741" H 3650 1800 60  0000 C CNN
F 2 "" H 3750 2050 60  0000 C CNN
F 3 "" H 3750 2050 60  0000 C CNN
	1    3750 2050
	1    0    0    -1  
$EndComp
$Comp
L lm_741 X3
U 1 1 67EE7069
P 3750 3050
F 0 "X3" H 3550 3050 60  0000 C CNN
F 1 "lm_741" H 3650 2800 60  0000 C CNN
F 2 "" H 3750 3050 60  0000 C CNN
F 3 "" H 3750 3050 60  0000 C CNN
	1    3750 3050
	1    0    0    -1  
$EndComp
$Comp
L lm_741 X4
U 1 1 67EE70B2
P 3750 4100
F 0 "X4" H 3550 4100 60  0000 C CNN
F 1 "lm_741" H 3650 3850 60  0000 C CNN
F 2 "" H 3750 4100 60  0000 C CNN
F 3 "" H 3750 4100 60  0000 C CNN
	1    3750 4100
	1    0    0    -1  
$EndComp
$Comp
L lm_741 X5
U 1 1 67EE7113
P 3750 5100
F 0 "X5" H 3550 5100 60  0000 C CNN
F 1 "lm_741" H 3650 4850 60  0000 C CNN
F 2 "" H 3750 5100 60  0000 C CNN
F 3 "" H 3750 5100 60  0000 C CNN
	1    3750 5100
	1    0    0    -1  
$EndComp
$Comp
L lm_741 X6
U 1 1 67EE7160
P 3750 6100
F 0 "X6" H 3550 6100 60  0000 C CNN
F 1 "lm_741" H 3650 5850 60  0000 C CNN
F 2 "" H 3750 6100 60  0000 C CNN
F 3 "" H 3750 6100 60  0000 C CNN
	1    3750 6100
	1    0    0    -1  
$EndComp
$Comp
L lm_741 X7
U 1 1 67EE71B7
P 3750 7100
F 0 "X7" H 3550 7100 60  0000 C CNN
F 1 "lm_741" H 3650 6850 60  0000 C CNN
F 2 "" H 3750 7100 60  0000 C CNN
F 3 "" H 3750 7100 60  0000 C CNN
	1    3750 7100
	1    0    0    -1  
$EndComp
$Comp
L DC v2
U 1 1 67EE74C8
P 950 1250
F 0 "v2" H 750 1350 60  0000 C CNN
F 1 "12" H 750 1200 60  0000 C CNN
F 2 "R1" H 650 1250 60  0000 C CNN
F 3 "" H 950 1250 60  0000 C CNN
	1    950  1250
	1    0    0    -1  
$EndComp
$Comp
L DC v1
U 1 1 67EE7591
P 900 7050
F 0 "v1" H 700 7150 60  0000 C CNN
F 1 "12" H 700 7000 60  0000 C CNN
F 2 "R1" H 600 7050 60  0000 C CNN
F 3 "" H 900 7050 60  0000 C CNN
	1    900  7050
	1    0    0    -1  
$EndComp
$Comp
L DC v3
U 1 1 67EE784D
P 950 2850
F 0 "v3" H 750 2950 60  0000 C CNN
F 1 "7" H 750 2800 60  0000 C CNN
F 2 "R1" H 650 2850 60  0000 C CNN
F 3 "" H 950 2850 60  0000 C CNN
	1    950  2850
	1    0    0    -1  
$EndComp
$Comp
L resistor R2
U 1 1 67EE796F
P 2150 1500
F 0 "R2" H 2200 1630 50  0000 C CNN
F 1 "1k" H 2200 1450 50  0000 C CNN
F 2 "" H 2200 1480 30  0000 C CNN
F 3 "" V 2200 1550 30  0000 C CNN
	1    2150 1500
	0    1    1    0   
$EndComp
$Comp
L resistor R3
U 1 1 67EE79EA
P 2150 2550
F 0 "R3" H 2200 2680 50  0000 C CNN
F 1 "1k" H 2200 2500 50  0000 C CNN
F 2 "" H 2200 2530 30  0000 C CNN
F 3 "" V 2200 2600 30  0000 C CNN
	1    2150 2550
	0    1    1    0   
$EndComp
$Comp
L resistor R4
U 1 1 67EE7A2D
P 2150 3550
F 0 "R4" H 2200 3680 50  0000 C CNN
F 1 "1k" H 2200 3500 50  0000 C CNN
F 2 "" H 2200 3530 30  0000 C CNN
F 3 "" V 2200 3600 30  0000 C CNN
	1    2150 3550
	0    1    1    0   
$EndComp
$Comp
L resistor R5
U 1 1 67EE7B00
P 2150 4550
F 0 "R5" H 2200 4680 50  0000 C CNN
F 1 "1k" H 2200 4500 50  0000 C CNN
F 2 "" H 2200 4530 30  0000 C CNN
F 3 "" V 2200 4600 30  0000 C CNN
	1    2150 4550
	0    1    1    0   
$EndComp
$Comp
L resistor R6
U 1 1 67EE7B43
P 2150 5550
F 0 "R6" H 2200 5680 50  0000 C CNN
F 1 "1k" H 2200 5500 50  0000 C CNN
F 2 "" H 2200 5530 30  0000 C CNN
F 3 "" V 2200 5600 30  0000 C CNN
	1    2150 5550
	0    1    1    0   
$EndComp
$Comp
L resistor R7
U 1 1 67EE7B8E
P 2150 6550
F 0 "R7" H 2200 6680 50  0000 C CNN
F 1 "1k" H 2200 6500 50  0000 C CNN
F 2 "" H 2200 6530 30  0000 C CNN
F 3 "" V 2200 6600 30  0000 C CNN
	1    2150 6550
	0    1    1    0   
$EndComp
$Comp
L resistor R1
U 1 1 67EE7BDF
P 1950 7500
F 0 "R1" H 2000 7630 50  0000 C CNN
F 1 "1k" H 2000 7450 50  0000 C CNN
F 2 "" H 2000 7480 30  0000 C CNN
F 3 "" V 2000 7550 30  0000 C CNN
	1    1950 7500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 67EE7C38
P 950 1950
F 0 "#PWR01" H 950 1700 50  0001 C CNN
F 1 "GND" H 950 1800 50  0000 C CNN
F 2 "" H 950 1950 50  0001 C CNN
F 3 "" H 950 1950 50  0001 C CNN
	1    950  1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 67EE7C72
P 950 3500
F 0 "#PWR02" H 950 3250 50  0001 C CNN
F 1 "GND" H 950 3350 50  0000 C CNN
F 2 "" H 950 3500 50  0001 C CNN
F 3 "" H 950 3500 50  0001 C CNN
	1    950  3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 67EE7CAC
P 950 5450
F 0 "#PWR03" H 950 5200 50  0001 C CNN
F 1 "GND" H 950 5300 50  0000 C CNN
F 2 "" H 950 5450 50  0001 C CNN
F 3 "" H 950 5450 50  0001 C CNN
	1    950  5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 67EE7CE6
P 600 6650
F 0 "#PWR04" H 600 6400 50  0001 C CNN
F 1 "GND" H 600 6500 50  0000 C CNN
F 2 "" H 600 6650 50  0001 C CNN
F 3 "" H 600 6650 50  0001 C CNN
	1    600  6650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 67EE7D20
P 1400 7500
F 0 "#PWR05" H 1400 7250 50  0001 C CNN
F 1 "GND" H 1400 7350 50  0000 C CNN
F 2 "" H 1400 7500 50  0001 C CNN
F 3 "" H 1400 7500 50  0001 C CNN
	1    1400 7500
	1    0    0    -1  
$EndComp
$Comp
L adc_bridge_8 U3
U 1 1 67EE7ED2
P 6050 3550
F 0 "U3" H 6050 3550 60  0000 C CNN
F 1 "adc_bridge_8" H 6050 3700 60  0000 C CNN
F 2 "" H 6050 3550 60  0000 C CNN
F 3 "" H 6050 3550 60  0000 C CNN
	1    6050 3550
	1    0    0    -1  
$EndComp
$Comp
L dac_bridge_3 U4
U 1 1 67EE7F90
P 8950 3550
F 0 "U4" H 8950 3550 60  0000 C CNN
F 1 "dac_bridge_3" H 8950 3700 60  0000 C CNN
F 2 "" H 8950 3550 60  0000 C CNN
F 3 "" H 8950 3550 60  0000 C CNN
	1    8950 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 67EF76EC
P 5250 4350
F 0 "#PWR06" H 5250 4100 50  0001 C CNN
F 1 "GND" H 5250 4200 50  0000 C CNN
F 2 "" H 5250 4350 50  0001 C CNN
F 3 "" H 5250 4350 50  0001 C CNN
	1    5250 4350
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U5
U 1 1 67EF7E82
P 9800 3250
F 0 "U5" H 9800 3750 60  0000 C CNN
F 1 "plot_v1" H 10000 3600 60  0000 C CNN
F 2 "" H 9800 3250 60  0000 C CNN
F 3 "" H 9800 3250 60  0000 C CNN
	1    9800 3250
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U6
U 1 1 67EF7F17
P 10300 3250
F 0 "U6" H 10300 3750 60  0000 C CNN
F 1 "plot_v1" H 10500 3600 60  0000 C CNN
F 2 "" H 10300 3250 60  0000 C CNN
F 3 "" H 10300 3250 60  0000 C CNN
	1    10300 3250
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U7
U 1 1 67EF7F76
P 10800 3250
F 0 "U7" H 10800 3750 60  0000 C CNN
F 1 "plot_v1" H 11000 3600 60  0000 C CNN
F 2 "" H 10800 3250 60  0000 C CNN
F 3 "" H 10800 3250 60  0000 C CNN
	1    10800 3250
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U1
U 1 1 67EF7FE1
P 1350 3950
F 0 "U1" H 1350 4450 60  0000 C CNN
F 1 "plot_v1" H 1550 4300 60  0000 C CNN
F 2 "" H 1350 3950 60  0000 C CNN
F 3 "" H 1350 3950 60  0000 C CNN
	1    1350 3950
	1    0    0    -1  
$EndComp
Text GLabel 9800 3500 2    60   Input ~ 0
B2
Text GLabel 10300 3600 2    60   Input ~ 0
B1
Text GLabel 10800 3700 2    60   Input ~ 0
B0
Wire Wire Line
	3600 550  950  550 
Wire Wire Line
	950  550  950  800 
Wire Wire Line
	3600 1600 2900 1600
Wire Wire Line
	2900 550  2900 6650
Connection ~ 2900 550 
Wire Wire Line
	2900 2600 3600 2600
Connection ~ 2900 1600
Wire Wire Line
	2900 3650 3600 3650
Connection ~ 2900 2600
Wire Wire Line
	2900 4650 3600 4650
Connection ~ 2900 3650
Wire Wire Line
	2900 5650 3600 5650
Connection ~ 2900 4650
Wire Wire Line
	2900 6650 3600 6650
Connection ~ 2900 5650
Wire Wire Line
	3600 7700 3600 7550
Wire Wire Line
	900  7700 900  7500
Wire Wire Line
	900  6600 600  6600
Wire Wire Line
	600  6600 600  6650
Wire Wire Line
	1850 7450 1400 7450
Wire Wire Line
	1400 7450 1400 7500
Wire Wire Line
	2150 7450 2200 7450
Wire Wire Line
	2200 7450 2200 6750
Wire Wire Line
	2200 6450 2200 5750
Wire Wire Line
	2500 6550 3600 6550
Wire Wire Line
	2500 5550 3600 5550
Connection ~ 2500 6550
Wire Wire Line
	6600 3500 6750 3500
Wire Wire Line
	6600 3600 6750 3600
Wire Wire Line
	6600 3700 6750 3700
Wire Wire Line
	6600 3800 6750 3800
Wire Wire Line
	6600 3900 6750 3900
Wire Wire Line
	6750 4000 6600 4000
Wire Wire Line
	6750 4100 6600 4100
Wire Wire Line
	6750 4200 6600 4200
Wire Wire Line
	8150 3500 8350 3500
Wire Wire Line
	8150 3600 8350 3600
Wire Wire Line
	8150 3700 8350 3700
Wire Wire Line
	2200 3750 2200 4450
Wire Wire Line
	2200 4750 2200 5450
Wire Wire Line
	2200 2750 2200 3450
Wire Wire Line
	2200 1700 2200 2450
Wire Wire Line
	1600 1100 3200 1100
Wire Wire Line
	2700 1100 2700 7200
Wire Wire Line
	2700 2150 3200 2150
Wire Wire Line
	2700 3150 3200 3150
Connection ~ 2700 2150
Wire Wire Line
	2700 4200 3200 4200
Connection ~ 2700 3150
Wire Wire Line
	2700 5200 3200 5200
Connection ~ 2700 4200
Wire Wire Line
	2700 6200 3200 6200
Connection ~ 2700 5200
Wire Wire Line
	2700 7200 3200 7200
Connection ~ 2700 6200
Wire Wire Line
	900  7700 3600 7700
Wire Wire Line
	2500 1450 2500 7700
Connection ~ 2500 7700
Wire Wire Line
	3600 4550 2500 4550
Connection ~ 2500 5550
Wire Wire Line
	3600 3500 2500 3500
Connection ~ 2500 4550
Wire Wire Line
	3600 2500 2500 2500
Connection ~ 2500 3500
Wire Wire Line
	3600 1450 2500 1450
Connection ~ 2500 2500
Wire Wire Line
	3200 6950 2200 6950
Connection ~ 2200 6950
Wire Wire Line
	3200 5950 2200 5950
Connection ~ 2200 5950
Wire Wire Line
	3200 4950 2200 4950
Connection ~ 2200 4950
Wire Wire Line
	3200 3950 2200 3950
Connection ~ 2200 3950
Wire Wire Line
	3200 2900 2200 2900
Connection ~ 2200 2900
Wire Wire Line
	3200 1900 2200 1900
Connection ~ 2200 1900
Wire Wire Line
	1300 850  3200 850 
Wire Wire Line
	2200 850  2200 1400
Wire Wire Line
	950  1950 950  1700
Wire Wire Line
	950  2400 950  2300
Wire Wire Line
	950  2300 1300 2300
Wire Wire Line
	1300 2300 1300 850 
Connection ~ 2200 850 
Wire Wire Line
	950  3300 950  3500
Wire Wire Line
	950  4300 950  3850
Wire Wire Line
	950  3850 1600 3850
Wire Wire Line
	1600 3850 1600 1100
Connection ~ 2700 1100
Wire Wire Line
	950  5200 950  5450
Wire Wire Line
	4300 1000 4900 1000
Wire Wire Line
	4900 1000 4900 3500
Wire Wire Line
	4900 3500 5450 3500
Wire Wire Line
	4300 2050 4700 2050
Wire Wire Line
	4700 2050 4700 3600
Wire Wire Line
	4700 3600 5450 3600
Wire Wire Line
	4300 3050 4550 3050
Wire Wire Line
	4550 3050 4550 3700
Wire Wire Line
	4550 3700 5450 3700
Wire Wire Line
	4300 4100 4550 4100
Wire Wire Line
	4550 4100 4550 3800
Wire Wire Line
	4550 3800 5450 3800
Wire Wire Line
	4300 5100 4700 5100
Wire Wire Line
	4700 5100 4700 3900
Wire Wire Line
	4700 3900 5450 3900
Wire Wire Line
	4300 6100 4900 6100
Wire Wire Line
	4900 6100 4900 4000
Wire Wire Line
	4900 4000 5450 4000
Wire Wire Line
	4300 7100 5100 7100
Wire Wire Line
	5100 7100 5100 4100
Wire Wire Line
	5100 4100 5450 4100
Wire Wire Line
	5450 4200 5250 4200
Wire Wire Line
	5250 4200 5250 4350
Wire Wire Line
	9500 3500 9800 3500
Wire Wire Line
	9800 3500 9800 3050
Wire Wire Line
	9500 3600 10300 3600
Wire Wire Line
	10300 3600 10300 3050
Wire Wire Line
	9500 3700 10800 3700
Wire Wire Line
	10800 3700 10800 3050
Wire Wire Line
	1350 3750 1350 3850
Connection ~ 1350 3850
Text GLabel 1350 3750 0    60   Input ~ 0
Vin
NoConn ~ 3700 600 
NoConn ~ 3800 650 
NoConn ~ 3700 1650
NoConn ~ 3800 1700
NoConn ~ 3700 2650
NoConn ~ 3800 2700
NoConn ~ 3700 3700
NoConn ~ 3800 3750
NoConn ~ 3700 4700
NoConn ~ 3800 4750
NoConn ~ 3700 5700
NoConn ~ 3800 5750
NoConn ~ 3700 6700
NoConn ~ 3800 6750
$Comp
L sine v4
U 1 1 67F091B2
P 950 4750
F 0 "v4" H 750 4850 60  0000 C CNN
F 1 "sine" H 750 4700 60  0000 C CNN
F 2 "R1" H 650 4750 60  0000 C CNN
F 3 "" H 950 4750 60  0000 C CNN
	1    950  4750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
