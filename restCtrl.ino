#include "OneWire.h"
#include "DallasTemperature.h"
#include "ArduinoJson.h"
#include "Arduino.h"
#include "IRremote.h"
#include "MemoryFree.h"
// Data wire is plugged into port 2 on the Arduino
#define ONE_WIRE_BUS 2
#define TEMPERATURE_PRECISION 9

const int LED13PIN = 13;
const int WATER_WASTE_PIN = 4;
const int NUMBER_OF_THERMO = 6;
const int MAX_TIME_READ_COMMAND = 5000UL;
const int MAX_TIME_LOOP = 6000UL;
const int MAX_BUFFER_LEN = 128;
const int MIN_TIME_DELAY = 200;
const char END_LINE_CHAR = '|';
const bool useDefaultPrint = false;
const bool useObjectPrint = !useDefaultPrint;

char commandArray[1024];
char commandBuffer[MAX_BUFFER_LEN];

unsigned long startLoopTime;
unsigned long readCommandStartTime;
unsigned long loopCount = 0;

OneWire oneWire(ONE_WIRE_BUS);
DallasTemperature sensors(&oneWire);
DeviceAddress thermoAddress[NUMBER_OF_THERMO];

const String entityMapping[] = { "thermometer", "startHeating", "lightOn", "lightOff", "lightState", "exposeMethods",
		"getWaterWasteState" };

const char* requestEntity = "RE"; //requestEntity
const char* response = "r"; //response
const char* timestamp = "t"; //timestamp
const char* name = "n"; //name
const char* temperature = "T"; //temperature
const char* arduinoRequest = "AR"; //arduinoRequest
const char* sensorId = "s"; //sensorId
const char* message = "m"; //message

const char* automaticStatus = "AS"; //automaticStatus
const char* error = "e"; //error
const char* failParseCommand = "FPC-"; //fail parse command

String printOutString = "";

//{RE:"thermometer",t:100}|
//{RE:"thermoX",t:100,s:"286c8dbe50"}|
//{RE:"thermoX",t:100,s:"28210be50"}|
//{RE:"thermoX",t:100,s:"28e623fe50"}|
//{RE:"thermoX",t:100,s:"28d663fd50"}|
//{RE:"thermoX",t:100,s:"2871cffe50"}|
//{RE:"thermoX",t:100,s:"284590fe50"}|


void initTemperatureSensors() {
	sensors.begin();
	for (int i = 0; i < NUMBER_OF_THERMO; i++) {
		sensors.setResolution(thermoAddress[i], TEMPERATURE_PRECISION);
		oneWire.search(thermoAddress[i]);
		//Serial.println(getDeviceAddress(thermoAddress[i]));
	}
	sensors.requestTemperatures();
}

void setup() {
	Serial.begin(9600);
	while (!Serial) {
		// wait serial port initialization
	}
	pinMode(LED13PIN, OUTPUT);
	pinMode(WATER_WASTE_PIN, INPUT);

	initTemperatureSensors();
}

bool breakLoop() {
	bool res = (startLoopTime + MAX_TIME_LOOP) < millis();
	return res;
}

void showMemory(String method) {
	Serial.print("freeMemory(" + method + ")=");
	Serial.println(freeMemory());
}

void loop() {
	delay(MIN_TIME_DELAY);
	loopCount++;
	startLoopTime = millis();

	if (Serial.available()) {
		readSerialInput();
		StaticJsonBuffer<300> jsonBuffer;
		JsonObject& request = jsonBuffer.parseObject(commandBuffer);
		if (!request.success()) {
			reportError(failParseCommand + String(commandBuffer));
			memset(commandBuffer, 0, sizeof(commandBuffer));
		} else {
			callHandler(request);
		}
		memset(commandBuffer, 0, sizeof(commandBuffer));
	}
	if (loopCount % 100 == 0) {
		respondAnyway();
	}
}

void callHandler(JsonObject& request) {
	const char* entityName = request[requestEntity];
	if (String(entityName).equals("thermometer")) {
		thermometersHandler(request);
	} else if (String(entityName).equals("thermoX")) {
		thermoXHandler(request);
	}
}

void thermometersHandler(JsonObject& request) {
	initTemperatureSensors();
	String out = "";
	StaticJsonBuffer<300> jsonBuffer;
	JsonObject& responseObj = jsonBuffer.createObject();
	responseObj[arduinoRequest] = request;
	JsonArray& data = responseObj.createNestedArray(response);

	for (int i = 0; i < NUMBER_OF_THERMO; i++) {
		JsonObject& entity = jsonBuffer.createObject();
		float tempC = sensors.getTempC(thermoAddress[i]);
		entity[name] = getDeviceAddress(thermoAddress[i]);
		entity[temperature] = tempC;
		data.add(entity);
	}
	printResponse(out, responseObj);
}

void thermoXHandler(JsonObject& request) {
	String out = "";
	initTemperatureSensors();
	StaticJsonBuffer<300> jsonBuffer;
	JsonObject& responseObj = jsonBuffer.createObject();
	responseObj[arduinoRequest] = request;
	String sensorIdObj = String((const char*) request[sensorId]);
	JsonArray& data = responseObj.createNestedArray(response);
	JsonObject& entity = jsonBuffer.createObject();
	for (int i = 0; i < NUMBER_OF_THERMO; i++) {
		String deviceAddress = getDeviceAddress(thermoAddress[i]);
		if (deviceAddress.equalsIgnoreCase(sensorIdObj)) {
			float tempC = sensors.getTempC(thermoAddress[i]);
			entity[name] = deviceAddress;
			entity[temperature] = tempC;
			data.add(entity);
			break;
		}
	}
	printResponse(out, responseObj);
}

void readSerialInput() {
	int i = 0;
	char c = 0;
	readCommandStartTime = millis();
	while (i < MAX_BUFFER_LEN) {
		while (!Serial.available()) {
			if (breakLoop()) {
				reportError("too much time");
				return;
			}
		}
		c = Serial.read();
		if (c == END_LINE_CHAR) {
			break;
		}
		commandBuffer[i] = c;
		i++;
	}
	if (i == MAX_BUFFER_LEN) {
		reportError("command too long");
		memset(commandBuffer, 0, sizeof(commandBuffer));
	}
}

String getDeviceAddress(DeviceAddress deviceAddress) {
	String result = "";
	for (uint8_t i = 0; i < NUMBER_OF_THERMO; i++) {
		result += String(deviceAddress[i], HEX);
	}
	return result;
}

void reportError(String messageObj) {
	String out = "";
	StaticJsonBuffer<300> jsonBuffer;
	JsonObject& responseObj = jsonBuffer.createObject();
	JsonObject& fakeRequest = jsonBuffer.createObject();
	responseObj[arduinoRequest] = fakeRequest;
	JsonObject& entity = jsonBuffer.createObject();
	fakeRequest[requestEntity] = error;
	fakeRequest[timestamp] = loopCount;
	JsonArray& data = responseObj.createNestedArray(response);
	entity[name] = error;
	entity[message] = messageObj;
	data.add(entity);
	printResponse(out, responseObj);
}

void respondAnyway() {
	Serial.println("");
	String out = "";
	StaticJsonBuffer<400> jsonBuffer;
	JsonObject& responseObj = jsonBuffer.createObject();
	JsonObject& fakeRequest = jsonBuffer.createObject();
	responseObj[arduinoRequest] = fakeRequest;
	fakeRequest[requestEntity] = automaticStatus;
	fakeRequest[timestamp] = loopCount;
	JsonArray& data = responseObj.createNestedArray(response);
	sensors.requestTemperatures();
	for (int i = 0; i < NUMBER_OF_THERMO; i++) {
		float tempC = sensors.getTempC(thermoAddress[i]);
		JsonObject& entity = jsonBuffer.createObject();
		entity[name] = getDeviceAddress(thermoAddress[i]);
		entity[temperature] = tempC;
		data.add(entity);
	}
	size_t measureLength = responseObj.measureLength();
	measureLength++;
	char outChar[measureLength];
	responseObj.printTo(Serial);
	//Serial.println(out);
	//printResponse(out, responseObj);
}

void printResponse(String out, JsonObject& responseObj) {
	String res = "";
	if (useObjectPrint) {
		responseObj.printTo(Serial);
	}
	if (useDefaultPrint) {
		responseObj.printTo(res);
		Serial.println(res);
//		responseObj.printTo(printOutString);
//		Serial.println(printOutString);
//		printOutString = "";
	}
}
