#ifdef __IN_ECLIPSE__
//This is a automatic generated file
//Please do not modify this file
//If you touch this file your change will be overwritten during the next build
//This file has been generated on 2016-08-07 17:27:43

#include "Arduino.h"
#include "OneWire.h"
#include "DallasTemperature.h"
#include "ArduinoJson.h"
#include "Arduino.h"
#include "IRremote.h"
#include "MemoryFree.h"
void initTemperatureSensors() ;
void setup() ;
bool breakLoop() ;
void showMemory(String method) ;
void loop() ;
void callHandler(JsonObject& request) ;
void thermometersHandler(JsonObject& request) ;
void thermoXHandler(JsonObject& request) ;
void readSerialInput() ;
String getDeviceAddress(DeviceAddress deviceAddress) ;
void reportError(String messageObj) ;
void respondAnyway() ;
void printResponse(String out, JsonObject& responseObj) ;

#include "restCtrl.ino"


#endif
