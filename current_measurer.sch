EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Current Measurer"
Date "2021-11-13"
Rev "V1.2"
Comp "LLAWN.com"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L jwm_kicad_symbols_misc:Eurorack_Header_LZX J1
U 1 1 5E99128D
P 1050 1200
F 0 "J1" H 1108 1715 50  0000 C CNN
F 1 "Eurorack Power Input" H 1108 1624 50  0000 C CNN
F 2 "jwm_kicad_footprints_misc:IDC-Header_2x08_P2.54mm_Vertical_EurorackPower" H 1150 1250 50  0001 C CNN
F 3 "" H 1150 1250 50  0001 C CNN
	1    1050 1200
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U1
U 1 1 5E9920D3
P 2100 6350
F 0 "U1" H 2100 6592 50  0000 C CNN
F 1 "L7805" H 2100 6501 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 2125 6200 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 2100 6300 50  0001 C CNN
	1    2100 6350
	1    0    0    -1  
$EndComp
$Comp
L jwm_kicad_symbols_misc:Eurorack_Header_LZX J2
U 1 1 5E9B4D58
P 10150 3250
F 0 "J2" H 10200 3800 50  0000 R CNN
F 1 "Eurorack Power Output" H 10550 3700 50  0000 R CNN
F 2 "jwm_kicad_footprints_misc:IDC-Header_2x08_P2.54mm_Vertical_EurorackPower" H 10250 3300 50  0001 C CNN
F 3 "" H 10250 3300 50  0001 C CNN
	1    10150 3250
	-1   0    0    -1  
$EndComp
Text Label 1600 1200 0    50   ~ 0
POS_5_V_IN
Wire Wire Line
	1400 1200 1600 1200
Wire Wire Line
	1400 1300 1600 1300
Wire Wire Line
	1400 1500 1600 1500
Wire Wire Line
	9800 3250 9600 3250
Wire Wire Line
	9800 3350 9600 3350
Wire Wire Line
	9800 3550 9600 3550
Text Label 1600 1300 0    50   ~ 0
POS_12_V_IN
Text Label 1600 1500 0    50   ~ 0
NEG_12_V_IN
Text Label 9600 3250 2    50   ~ 0
POS_5_V_OUT_PCB2
Text Label 9600 3350 2    50   ~ 0
POS_12_V_OUT_PCB2
Text Label 9600 3550 2    50   ~ 0
NEG_12_V_OUT_PCB2
Wire Wire Line
	1400 1400 2350 1400
Wire Wire Line
	2350 1400 2350 1600
$Comp
L power:GND #PWR0101
U 1 1 5E9C4017
P 2350 1600
F 0 "#PWR0101" H 2350 1350 50  0001 C CNN
F 1 "GND" H 2355 1427 50  0000 C CNN
F 2 "" H 2350 1600 50  0001 C CNN
F 3 "" H 2350 1600 50  0001 C CNN
	1    2350 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5E9C5ADC
P 1650 6800
F 0 "C1" H 1450 6850 50  0000 L CNN
F 1 "330nF" H 1250 6750 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 1650 6800 50  0001 C CNN
F 3 "~" H 1650 6800 50  0001 C CNN
	1    1650 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5E9C63F7
P 2550 6800
F 0 "C2" H 2642 6846 50  0000 L CNN
F 1 "100nF" H 2642 6755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 2550 6800 50  0001 C CNN
F 3 "~" H 2550 6800 50  0001 C CNN
	1    2550 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 6350 1650 6350
Wire Wire Line
	1650 6350 1650 6700
Wire Wire Line
	2400 6350 2550 6350
Wire Wire Line
	2550 6350 2550 6700
Wire Wire Line
	1650 6900 1650 7100
Wire Wire Line
	1650 7100 2100 7100
Wire Wire Line
	2550 7100 2550 6900
Wire Wire Line
	2100 6650 2100 7100
Connection ~ 2100 7100
Wire Wire Line
	2100 7100 2550 7100
$Comp
L power:GND #PWR0102
U 1 1 5E9C8A2C
P 2100 7250
F 0 "#PWR0102" H 2100 7000 50  0001 C CNN
F 1 "GND" H 2105 7077 50  0000 C CNN
F 2 "" H 2100 7250 50  0001 C CNN
F 3 "" H 2100 7250 50  0001 C CNN
	1    2100 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 7250 2100 7100
Wire Wire Line
	2550 6350 2550 6050
Connection ~ 2550 6350
Wire Wire Line
	1650 6350 1400 6350
Connection ~ 1650 6350
Text Label 1400 6350 2    50   ~ 0
POS_12_V_IN
$Comp
L power:+5V #PWR0103
U 1 1 5E9CB96C
P 2550 6050
F 0 "#PWR0103" H 2550 5900 50  0001 C CNN
F 1 "+5V" H 2565 6223 50  0000 C CNN
F 2 "" H 2550 6050 50  0001 C CNN
F 3 "" H 2550 6050 50  0001 C CNN
	1    2550 6050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 5E9E943D
P 1900 2450
F 0 "#PWR0110" H 1900 2300 50  0001 C CNN
F 1 "+5V" H 1915 2623 50  0000 C CNN
F 2 "" H 1900 2450 50  0001 C CNN
F 3 "" H 1900 2450 50  0001 C CNN
	1    1900 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5E9EB1D5
P 1800 4800
F 0 "#PWR0111" H 1800 4550 50  0001 C CNN
F 1 "GND" H 1805 4627 50  0000 C CNN
F 2 "" H 1800 4800 50  0001 C CNN
F 3 "" H 1800 4800 50  0001 C CNN
	1    1800 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4800 1800 4700
Wire Wire Line
	1700 4600 1700 4700
Wire Wire Line
	1700 4700 1800 4700
Connection ~ 1800 4700
Wire Wire Line
	1800 4700 1800 4600
Wire Wire Line
	2600 4100 2200 4100
Wire Wire Line
	2450 4000 2200 4000
Wire Wire Line
	1900 2600 1900 2450
NoConn ~ 1800 2600
NoConn ~ 1600 2600
NoConn ~ 2200 3400
NoConn ~ 2200 3100
NoConn ~ 2200 3000
Wire Wire Line
	9100 5600 9100 5750
NoConn ~ 2200 3600
NoConn ~ 2200 3700
NoConn ~ 2200 3800
NoConn ~ 2200 3900
NoConn ~ 2200 4200
NoConn ~ 2200 4300
NoConn ~ 1200 4300
NoConn ~ 1200 4200
NoConn ~ 1200 4100
NoConn ~ 1200 4000
NoConn ~ 1200 3900
NoConn ~ 1200 3800
NoConn ~ 1200 3700
NoConn ~ 1200 3600
NoConn ~ 1200 3400
NoConn ~ 1200 3300
NoConn ~ 1200 3500
NoConn ~ 1200 3100
NoConn ~ 1200 3000
NoConn ~ 1400 1000
NoConn ~ 1400 1100
NoConn ~ 9800 3150
NoConn ~ 9800 3050
$Comp
L jwm_kicad_symbols_misc:SSD1306_I2C_OLED_Module U2
U 1 1 5EB7472D
P 9050 5200
F 0 "U2" H 8822 5246 50  0000 R CNN
F 1 "SSD1306 I2C OLED Module 0.96 inch (128X64)" H 8822 5155 50  0000 R CNN
F 2 "jwm_kicad_footprints_misc:SSD1306_I2C_OLED_Module_0.96_inch" H 9100 5100 50  0001 C CNN
F 3 "" H 9100 5100 50  0001 C CNN
	1    9050 5200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8750 5150 8500 5150
Wire Wire Line
	8750 5250 8350 5250
Wire Wire Line
	2600 3300 2600 4100
Wire Wire Line
	2450 3400 2450 4000
Text Label 2900 5100 0    50   ~ 0
SDA_PCB1
Text Label 2900 4900 0    50   ~ 0
SCL_PCB1
$Comp
L jwm_kicad_symbols_misc:INA3221_Module_NoVPU U3
U 1 1 6167CB91
P 3200 3600
F 0 "U3" H 3400 4300 50  0000 C CNN
F 1 "INA3221_Module_NoVPU" H 3750 4200 50  0000 C CNN
F 2 "jwm_kicad_footprints_misc:INA3221_Module_P2.54mm_NoVPU_NoExtraGnds" H 2500 3500 50  0001 C CNN
F 3 "" H 2500 3500 50  0001 C CNN
	1    3200 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3850 3900 3850
Wire Wire Line
	3700 3550 3900 3550
Wire Wire Line
	3700 3250 3900 3250
Wire Wire Line
	3700 3650 3900 3650
Wire Wire Line
	3700 3350 3900 3350
Wire Wire Line
	3700 3950 3900 3950
NoConn ~ 2750 3500
NoConn ~ 2750 3600
NoConn ~ 2750 3700
NoConn ~ 2750 3800
Wire Wire Line
	2750 3300 2600 3300
Wire Wire Line
	2750 3400 2450 3400
Text Label 3900 3650 0    50   ~ 0
POS_12_V_IN
Text Label 3900 3550 0    50   ~ 0
POS_12_V_OUT_PCB1
Text Label 3900 3350 0    50   ~ 0
NEG_12_V_IN
Text Label 3900 3250 0    50   ~ 0
NEG_12_V_OUT_PCB1
Text Label 3900 3950 0    50   ~ 0
POS_5_V_IN
Text Label 3900 3850 0    50   ~ 0
POS_5_V_OUT_PCB1
Wire Wire Line
	3200 4250 3200 4150
$Comp
L power:GND #PWR0108
U 1 1 5E9D7B90
P 3200 4250
F 0 "#PWR0108" H 3200 4000 50  0001 C CNN
F 1 "GND" H 3205 4077 50  0000 C CNN
F 2 "" H 3200 4250 50  0001 C CNN
F 3 "" H 3200 4250 50  0001 C CNN
	1    3200 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3050 3200 2950
$Comp
L power:+5V #PWR0106
U 1 1 5E9D56A4
P 3200 2950
F 0 "#PWR0106" H 3200 2800 50  0001 C CNN
F 1 "+5V" H 3215 3123 50  0000 C CNN
F 2 "" H 3200 2950 50  0001 C CNN
F 3 "" H 3200 2950 50  0001 C CNN
	1    3200 2950
	1    0    0    -1  
$EndComp
Text Label 8350 5250 2    50   ~ 0
SDA_PCB2
Text Label 8500 5150 2    50   ~ 0
SCL_PCB2
Wire Wire Line
	2350 1400 2550 1400
Connection ~ 2350 1400
Text Label 2550 1400 0    50   ~ 0
GND_PCB1
Text Label 9600 3450 2    50   ~ 0
GND_PCB2
Text Label 9100 5750 2    50   ~ 0
GND_PCB2
Text Label 6800 5150 0    50   ~ 0
SDA_PCB2
Text Label 6800 5050 0    50   ~ 0
SCL_PCB2
Text Label 6100 5150 2    50   ~ 0
SDA_PCB1
Text Label 6100 5050 2    50   ~ 0
SCL_PCB1
Text Label 6100 4950 2    50   ~ 0
GND_PCB1
Wire Wire Line
	9100 4600 9100 4800
Text Label 9100 4600 2    50   ~ 0
+5V_PCB2
Wire Wire Line
	2550 6350 2800 6350
Text Label 2800 6350 0    50   ~ 0
+5V_PCB1
Text Label 6100 4850 2    50   ~ 0
+5V_PCB1
Text Label 6800 4850 0    50   ~ 0
+5V_PCB2
Text Label 6800 4950 0    50   ~ 0
GND_PCB2
Text Label 7050 3100 0    50   ~ 0
POS_5_V_OUT_PCB2
Text Label 7050 3200 0    50   ~ 0
POS_12_V_OUT_PCB2
Text Label 7050 3600 0    50   ~ 0
NEG_12_V_OUT_PCB2
Text Label 7050 3300 0    50   ~ 0
GND_PCB2
Text Label 5850 3200 2    50   ~ 0
POS_12_V_OUT_PCB1
Text Label 5850 3600 2    50   ~ 0
NEG_12_V_OUT_PCB1
Text Label 5850 3100 2    50   ~ 0
POS_5_V_OUT_PCB1
Text Label 5850 3300 2    50   ~ 0
GND_PCB1
Text Label 7050 3400 0    50   ~ 0
GND_PCB2
Text Label 5850 3400 2    50   ~ 0
GND_PCB1
Text Label 7050 3500 0    50   ~ 0
GND_PCB2
Text Label 5850 3500 2    50   ~ 0
GND_PCB1
Wire Wire Line
	2450 5100 2450 4000
Connection ~ 2450 4000
Wire Wire Line
	2600 4900 2600 4100
Connection ~ 2600 4100
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J3
U 1 1 618408CE
P 6150 3400
F 0 "J3" H 6200 2850 50  0000 C CNN
F 1 "Back_Conn_2" H 6200 2950 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 6150 3400 50  0001 C CNN
F 3 "~" H 6150 3400 50  0001 C CNN
	1    6150 3400
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 618422A9
P 6600 4950
F 0 "J6" H 6600 5300 50  0000 C CNN
F 1 "Front_Conn_3" H 6400 5200 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 6600 4950 50  0001 C CNN
F 3 "~" H 6600 4950 50  0001 C CNN
	1    6600 4950
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 61843790
P 6300 4950
F 0 "J5" H 6250 5300 50  0000 L CNN
F 1 "Back_Conn_3" H 5850 5200 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6300 4950 50  0001 C CNN
F 3 "~" H 6300 4950 50  0001 C CNN
	1    6300 4950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J4
U 1 1 6185154D
P 6850 3400
F 0 "J4" H 6900 2850 50  0000 C CNN
F 1 "Front_Conn_2" H 6900 2950 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x06_P2.54mm_Vertical" H 6850 3400 50  0001 C CNN
F 3 "~" H 6850 3400 50  0001 C CNN
	1    6850 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 3100 5850 3100
Wire Wire Line
	6350 3200 5850 3200
Wire Wire Line
	6350 3300 5850 3300
Wire Wire Line
	6350 3400 5850 3400
Wire Wire Line
	6350 3500 5850 3500
Wire Wire Line
	6350 3600 5850 3600
Wire Wire Line
	6550 3100 7050 3100
Wire Wire Line
	6550 3200 7050 3200
Wire Wire Line
	6550 3300 7050 3300
Wire Wire Line
	6550 3400 7050 3400
Wire Wire Line
	6550 3500 7050 3500
Wire Wire Line
	6550 3600 7050 3600
$Comp
L Switch:SW_Push SW1
U 1 1 618F7334
P 9350 1700
F 0 "SW1" H 9350 1985 50  0000 C CNN
F 1 "SW_Push" H 9350 1894 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 9350 1900 50  0001 C CNN
F 3 "~" H 9350 1900 50  0001 C CNN
	1    9350 1700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9150 1700 8850 1700
Wire Wire Line
	9550 1700 9650 1700
Wire Wire Line
	9650 1700 9650 1800
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 6163ADCC
P 1700 3600
F 0 "A1" H 1300 4800 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 1300 4900 50  0000 C CNN
F 2 "jwm_kicad_footprints_misc:Arduino_Nano_WithMFHeadersAnd3DModel" H 1700 3600 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 1700 3600 50  0001 C CNN
	1    1700 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4900 2900 4900
Wire Wire Line
	2450 5100 2900 5100
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 61962B2E
P 6300 1950
F 0 "J7" H 6250 2200 50  0000 L CNN
F 1 "Back_Conn_1" H 5850 2100 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6300 1950 50  0001 C CNN
F 3 "~" H 6300 1950 50  0001 C CNN
	1    6300 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 619636D6
P 6600 1950
F 0 "J8" H 6550 2200 50  0000 L CNN
F 1 "Front_Conn_1" H 6150 2100 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 6600 1950 50  0001 C CNN
F 3 "~" H 6600 1950 50  0001 C CNN
	1    6600 1950
	-1   0    0    -1  
$EndComp
Text Label 6800 2050 0    50   ~ 0
GND_PCB2
Text Label 6100 2050 2    50   ~ 0
GND_PCB1
Text Label 6800 1950 0    50   ~ 0
BUTTON_PCB2
Text Label 6100 1950 2    50   ~ 0
BUTTON_PCB1
Text Label 1100 3200 2    50   ~ 0
BUTTON_PCB1
Wire Wire Line
	1100 3200 1200 3200
Text Label 8850 1700 2    50   ~ 0
BUTTON_PCB2
Wire Notes Line
	6450 700  6450 7350
Text Label 9650 1800 0    50   ~ 0
GND_PCB2
Wire Wire Line
	9800 3450 9600 3450
Text Notes 5900 1200 0    50   ~ 0
    PCB1\n(Main Board)
Text Notes 6550 1200 0    50   ~ 0
 PCB2\n(Panel)
Text Notes 5900 2450 0    50   ~ 0
    PCB1\n(Main Board)
Text Notes 6550 2450 0    50   ~ 0
 PCB2\n(Panel)
Text Notes 5900 4150 0    50   ~ 0
    PCB1\n(Main Board)
Text Notes 6550 4150 0    50   ~ 0
 PCB2\n(Panel)
Text Notes 5900 5750 0    50   ~ 0
    PCB1\n(Main Board)
Text Notes 6550 5750 0    50   ~ 0
 PCB2\n(Panel)
$EndSCHEMATC
