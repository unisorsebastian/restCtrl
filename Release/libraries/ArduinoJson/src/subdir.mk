################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/JsonArray.cpp \
C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/JsonBuffer.cpp \
C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/JsonObject.cpp \
C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/JsonVariant.cpp 

LINK_OBJ += \
./libraries/ArduinoJson/src/JsonArray.cpp.o \
./libraries/ArduinoJson/src/JsonBuffer.cpp.o \
./libraries/ArduinoJson/src/JsonObject.cpp.o \
./libraries/ArduinoJson/src/JsonVariant.cpp.o 

CPP_DEPS += \
./libraries/ArduinoJson/src/JsonArray.cpp.d \
./libraries/ArduinoJson/src/JsonBuffer.cpp.d \
./libraries/ArduinoJson/src/JsonObject.cpp.d \
./libraries/ArduinoJson/src/JsonVariant.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/ArduinoJson/src/JsonArray.cpp.o: C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/JsonArray.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\arduino\avr-gcc\4.8.1-arduino5/bin/avr-g++" -c -g -Os -std=gnu++11 -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10606 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\cores\arduino" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\variants\standard" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson\src" -I"C:\Users\Sebastian\Arduino\libraries\DallasTemperature" -I"C:\Users\Sebastian\Arduino\libraries\OneWire" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/src/JsonBuffer.cpp.o: C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/JsonBuffer.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\arduino\avr-gcc\4.8.1-arduino5/bin/avr-g++" -c -g -Os -std=gnu++11 -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10606 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\cores\arduino" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\variants\standard" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson\src" -I"C:\Users\Sebastian\Arduino\libraries\DallasTemperature" -I"C:\Users\Sebastian\Arduino\libraries\OneWire" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/src/JsonObject.cpp.o: C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/JsonObject.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\arduino\avr-gcc\4.8.1-arduino5/bin/avr-g++" -c -g -Os -std=gnu++11 -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10606 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\cores\arduino" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\variants\standard" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson\src" -I"C:\Users\Sebastian\Arduino\libraries\DallasTemperature" -I"C:\Users\Sebastian\Arduino\libraries\OneWire" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/src/JsonVariant.cpp.o: C:/Users/Sebastian/Arduino/libraries/ArduinoJson/src/JsonVariant.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\arduino\avr-gcc\4.8.1-arduino5/bin/avr-g++" -c -g -Os -std=gnu++11 -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10606 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\cores\arduino" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\variants\standard" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson\src" -I"C:\Users\Sebastian\Arduino\libraries\DallasTemperature" -I"C:\Users\Sebastian\Arduino\libraries\OneWire" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '


