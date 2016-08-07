################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/Internals/Comments.cpp \
C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/Internals/Encoding.cpp \
C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/Internals/IndentedPrint.cpp \
C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/Internals/JsonParser.cpp \
C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/Internals/List.cpp \
C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/Internals/Prettyfier.cpp \
C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/Internals/StaticStringBuilder.cpp 

LINK_OBJ += \
./libraries/ArduinoJson/src/Internals/Comments.cpp.o \
./libraries/ArduinoJson/src/Internals/Encoding.cpp.o \
./libraries/ArduinoJson/src/Internals/IndentedPrint.cpp.o \
./libraries/ArduinoJson/src/Internals/JsonParser.cpp.o \
./libraries/ArduinoJson/src/Internals/List.cpp.o \
./libraries/ArduinoJson/src/Internals/Prettyfier.cpp.o \
./libraries/ArduinoJson/src/Internals/StaticStringBuilder.cpp.o 

CPP_DEPS += \
./libraries/ArduinoJson/src/Internals/Comments.cpp.d \
./libraries/ArduinoJson/src/Internals/Encoding.cpp.d \
./libraries/ArduinoJson/src/Internals/IndentedPrint.cpp.d \
./libraries/ArduinoJson/src/Internals/JsonParser.cpp.d \
./libraries/ArduinoJson/src/Internals/List.cpp.d \
./libraries/ArduinoJson/src/Internals/Prettyfier.cpp.d \
./libraries/ArduinoJson/src/Internals/StaticStringBuilder.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/ArduinoJson/src/Internals/Comments.cpp.o: C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/Internals/Comments.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\arduino\avr-gcc\4.8.1-arduino5/bin/avr-g++" -c -g -Os -std=gnu++11 -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10606 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson" -I"C:\eclipseArduino\workspace\restCtrl\libraries\MemoryFree" -I"C:\Users\Sebastian\Arduino\libraries\DallasTemperature" -I"C:\Users\Sebastian\Arduino\libraries\IRremote" -I"C:\eclipseArduino\workspace\restCtrl\libraries\nFR24L01" -I"C:\Users\Sebastian\Arduino\libraries\OneWire" -I"C:\eclipseArduino\workspace\restCtrl\libraries\RF24" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\cores\arduino" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\variants\standard" -I"C:\Users\Sebastian\Arduino\libraries\DallasTemperature" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI\src" -I"C:\Users\Sebastian\Arduino\libraries\IRremote" -I"C:\Users\Sebastian\Arduino\libraries\OneWire" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/src/Internals/Encoding.cpp.o: C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/Internals/Encoding.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\arduino\avr-gcc\4.8.1-arduino5/bin/avr-g++" -c -g -Os -std=gnu++11 -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10606 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson" -I"C:\eclipseArduino\workspace\restCtrl\libraries\MemoryFree" -I"C:\Users\Sebastian\Arduino\libraries\DallasTemperature" -I"C:\Users\Sebastian\Arduino\libraries\IRremote" -I"C:\eclipseArduino\workspace\restCtrl\libraries\nFR24L01" -I"C:\Users\Sebastian\Arduino\libraries\OneWire" -I"C:\eclipseArduino\workspace\restCtrl\libraries\RF24" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\cores\arduino" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\variants\standard" -I"C:\Users\Sebastian\Arduino\libraries\DallasTemperature" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI\src" -I"C:\Users\Sebastian\Arduino\libraries\IRremote" -I"C:\Users\Sebastian\Arduino\libraries\OneWire" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/src/Internals/IndentedPrint.cpp.o: C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/Internals/IndentedPrint.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\arduino\avr-gcc\4.8.1-arduino5/bin/avr-g++" -c -g -Os -std=gnu++11 -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10606 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson" -I"C:\eclipseArduino\workspace\restCtrl\libraries\MemoryFree" -I"C:\Users\Sebastian\Arduino\libraries\DallasTemperature" -I"C:\Users\Sebastian\Arduino\libraries\IRremote" -I"C:\eclipseArduino\workspace\restCtrl\libraries\nFR24L01" -I"C:\Users\Sebastian\Arduino\libraries\OneWire" -I"C:\eclipseArduino\workspace\restCtrl\libraries\RF24" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\cores\arduino" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\variants\standard" -I"C:\Users\Sebastian\Arduino\libraries\DallasTemperature" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI\src" -I"C:\Users\Sebastian\Arduino\libraries\IRremote" -I"C:\Users\Sebastian\Arduino\libraries\OneWire" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/src/Internals/JsonParser.cpp.o: C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/Internals/JsonParser.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\arduino\avr-gcc\4.8.1-arduino5/bin/avr-g++" -c -g -Os -std=gnu++11 -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10606 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson" -I"C:\eclipseArduino\workspace\restCtrl\libraries\MemoryFree" -I"C:\Users\Sebastian\Arduino\libraries\DallasTemperature" -I"C:\Users\Sebastian\Arduino\libraries\IRremote" -I"C:\eclipseArduino\workspace\restCtrl\libraries\nFR24L01" -I"C:\Users\Sebastian\Arduino\libraries\OneWire" -I"C:\eclipseArduino\workspace\restCtrl\libraries\RF24" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\cores\arduino" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\variants\standard" -I"C:\Users\Sebastian\Arduino\libraries\DallasTemperature" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI\src" -I"C:\Users\Sebastian\Arduino\libraries\IRremote" -I"C:\Users\Sebastian\Arduino\libraries\OneWire" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/src/Internals/List.cpp.o: C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/Internals/List.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\arduino\avr-gcc\4.8.1-arduino5/bin/avr-g++" -c -g -Os -std=gnu++11 -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10606 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson" -I"C:\eclipseArduino\workspace\restCtrl\libraries\MemoryFree" -I"C:\Users\Sebastian\Arduino\libraries\DallasTemperature" -I"C:\Users\Sebastian\Arduino\libraries\IRremote" -I"C:\eclipseArduino\workspace\restCtrl\libraries\nFR24L01" -I"C:\Users\Sebastian\Arduino\libraries\OneWire" -I"C:\eclipseArduino\workspace\restCtrl\libraries\RF24" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\cores\arduino" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\variants\standard" -I"C:\Users\Sebastian\Arduino\libraries\DallasTemperature" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI\src" -I"C:\Users\Sebastian\Arduino\libraries\IRremote" -I"C:\Users\Sebastian\Arduino\libraries\OneWire" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/src/Internals/Prettyfier.cpp.o: C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/Internals/Prettyfier.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\arduino\avr-gcc\4.8.1-arduino5/bin/avr-g++" -c -g -Os -std=gnu++11 -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10606 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson" -I"C:\eclipseArduino\workspace\restCtrl\libraries\MemoryFree" -I"C:\Users\Sebastian\Arduino\libraries\DallasTemperature" -I"C:\Users\Sebastian\Arduino\libraries\IRremote" -I"C:\eclipseArduino\workspace\restCtrl\libraries\nFR24L01" -I"C:\Users\Sebastian\Arduino\libraries\OneWire" -I"C:\eclipseArduino\workspace\restCtrl\libraries\RF24" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\cores\arduino" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\variants\standard" -I"C:\Users\Sebastian\Arduino\libraries\DallasTemperature" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI\src" -I"C:\Users\Sebastian\Arduino\libraries\IRremote" -I"C:\Users\Sebastian\Arduino\libraries\OneWire" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/src/Internals/StaticStringBuilder.cpp.o: C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/Internals/StaticStringBuilder.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\arduino\avr-gcc\4.8.1-arduino5/bin/avr-g++" -c -g -Os -std=gnu++11 -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10606 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson" -I"C:\eclipseArduino\workspace\restCtrl\libraries\MemoryFree" -I"C:\Users\Sebastian\Arduino\libraries\DallasTemperature" -I"C:\Users\Sebastian\Arduino\libraries\IRremote" -I"C:\eclipseArduino\workspace\restCtrl\libraries\nFR24L01" -I"C:\Users\Sebastian\Arduino\libraries\OneWire" -I"C:\eclipseArduino\workspace\restCtrl\libraries\RF24" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\cores\arduino" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\variants\standard" -I"C:\Users\Sebastian\Arduino\libraries\DallasTemperature" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI\src" -I"C:\Users\Sebastian\Arduino\libraries\IRremote" -I"C:\Users\Sebastian\Arduino\libraries\OneWire" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '


