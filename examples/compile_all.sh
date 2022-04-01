# This script uses the arduino-cli to compile the arduino sketches using command line (without Arduino IDE).
# It is very useful to check the library after bug fixes and improvments. 
# Ricardo Lima Caratti Mar 2022

# compiles POC
echo "POC"
arduino-cli compile -b arduino:avr:nano ./SI47XX_01_SERIAL_MONITOR/SI4735_01_POC
arduino-cli compile -b arduino:avr:nano ./SI47XX_01_SERIAL_MONITOR/SI4735_02_POC_SW
arduino-cli compile -b arduino:avr:nano ./SI47XX_01_SERIAL_MONITOR/SI4735_03_POC_SSB
arduino-cli compile -b arduino:avr:nano ./SI47XX_01_SERIAL_MONITOR/Si4735_04_HARDWARE_MUTE_CIRCUIT
arduino-cli compile -b arduino:avr:nano ./SI47XX_01_SERIAL_MONITOR/SI4735_06_SSB_EEPROM

echo "LCD 20x4 All In One"
arduino-cli compile -b arduino:avr:nano ./SI47XX_02_LCD_20x4_I2C/SI473X_04_ALL_IN_ONE
echo "LCD_20x4 with SMETER I2C"
arduino-cli compile -b arduino:avr:nano ./SI47XX_02_LCD_20x4_I2C/SI47XX_02_LCD_20x4_SMETER_I2C


echo "OLED"
arduino-cli compile -b arduino:avr:nano ./SI47XX_03_OLED_I2C/SI47XX_02_ALL_IN_ONE_OLED


echo "Nokia 5110 Pro mini"
# arduino-cli compile -b arduino:avr:pro -u -p /dev/cu.usbserial-1420 ./SI47XX_09_NOKIA_5110/ALL_IN_ONE_ONE_ENCODER
arduino-cli compile -b arduino:avr:pro ./SI47XX_09_NOKIA_5110/ALL_IN_ONE_ONE_ENCODER

echo "TFT"
echo "*** Atmega328 and ILI9225"
arduino-cli compile -b arduino:avr:nano ./SI47XX_04_TFT/SI47XX_01_TFT_ILI9225
## echo "*** ST7735"
## arduino-cli compile -b MiniCore:avr:ATmega328PB ./SI47XX_04_TFT/SI47XX_03_TFT_ATMEGA328_ST7735



echo "POC Active Crystal"
arduino-cli compile -b arduino:avr:nano ./SI47XX_11_NO_CRYSTAL/POC_ACTIVE_CRYSTAL
arduino-cli compile -b arduino:avr:nano ./SI47XX_11_NO_CRYSTAL/POC_LCD16x2
arduino-cli compile --fqbn arduino:sam:arduino_due_x ./SI47XX_11_NO_CRYSTAL/SI47XX_RDS_TOUCH_SHIELD_REF_CLOCK


# compiles Mirko V2
echo "Mirko V2"
arduino-cli compile -b arduino:avr:nano ./SI47XX_02_for_Mirko_Pavleski_radio/MIRKO_V2

# compiles KIT ATS-20
echo "ATS-20 KIT"
echo "*** V7"
arduino-cli compile -b arduino:avr:nano ./SI47XX_KITS/AliExpress/SI473X_ALL_IN_ONE_OLED_RDS_CHINESE_V7
echo "*** V8"
arduino-cli compile -b arduino:avr:nano ./SI47XX_KITS/AliExpress/SI473X_ALL_IN_ONE_OLED_RDS_CHINESE_V8

# compiles ESP32 LCD16x2_ALL_IN_ONE
echo "ESP32 LCD16x2_ALL_IN_ONE"
arduino-cli compile --fqbn esp32:esp32:esp32-poe-iso ./SI47XX_06_ESP32/LCD16x2_ALL_IN_ONE 

# compiles Gert's KIT
echo "Gert's KIT (ESP32)"
arduino-cli compile --fqbn esp32:esp32:esp32-poe-iso ./SI47XX_KITS/THIAGO_LIMA/GERT_BAAK/SI4735_2.8_TFT_SI5351_V4.2

# compiles 
echo "FELIX ANGGA"
arduino-cli compile --fqbn esp32:esp32:esp32-poe-iso ./SI47XX_KITS/THIAGO_LIMA/FELIX_ANGGA/SLAMETRADIO

# compiles SI47XX_02_RDS_TFT_TOUCH_SHIELD_35_V2 on Arduino DUE and Mega 
echo "Arduino RDS DUE and MEGA"
echo "*** DUE"
arduino-cli compile --fqbn arduino:sam:arduino_due_x ./SI47XX_10_RDS/SI47XX_02_RDS_TFT_TOUCH_SHIELD_35_V2
echo "*** Mega"
arduino-cli compile --fqbn arduino:avr:mega ./SI47XX_10_RDS/SI47XX_02_RDS_TFT_TOUCH_SHIELD_35_V2

# compiles SI47XX_03_RDS_TFT_ILI9225_NEW on Arduino Nano
echo "Arduino Nano - RDS TFT"
arduino-cli compile -b arduino:avr:nano ./SI47XX_10_RDS/SI47XX_03_RDS_TFT_ILI9225_NEW

# compiles STM32 sketch
echo "STM32"
arduino-cli compile --fqbn STM32:stm32:Nucleo_64 ./SI47XX_07_STM32/STM32_04_OLED_ALL_IN_ONE_V2

echo "STM32 - PLAMEN"
arduino-cli compile --fqbn STM32:stm32:Nucleo_64 ./SI47XX_KITS/PLAMEN/PU2CLR_SI5351_SI4732_STM32


# compiles SEEEDUINO XIAO
echo "SEEDUINO" 

#arduino-cli compile --fqbn Seeeduino:samd:seeed_XIAO_m0 -u -p /dev/cu.usbmodem14201   ./SI47XX_15_SEEDUINO/OLED_ALL_IN_ONE
arduino-cli compile --fqbn Seeeduino:samd:seeed_XIAO_m0 ./SI47XX_15_SEEDUINO/OLED_ALL_IN_ONE

