################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/Sebastian/Arduino/libraries/IRremote/IRremote.cpp 

LINK_OBJ += \
./libraries/IRremote/IRremote.cpp.o 

CPP_DEPS += \
./libraries/IRremote/IRremote.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/IRremote/IRremote.cpp.o: C:/Users/Sebastian/Arduino/libraries/IRremote/IRremote.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\arduino\avr-gcc\4.8.1-arduino5/bin/avr-g++" -c -g -Os -std=gnu++11 -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10606 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\cores\arduino" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\variants\standard" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson" -I"C:\Users\Sebastian\Arduino\libraries\ArduinoJson\src" -I"C:\Users\Sebastian\Arduino\libraries\DallasTemperature" -I"C:\Users\Sebastian\Arduino\libraries\OneWire" -I"C:\Users\Sebastian\Arduino\libraries\IRremote" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '


