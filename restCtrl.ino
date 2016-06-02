#include "OneWire.h"
#include "DallasTemperature.h"
#include "ArduinoJson.h"
#include "Arduino.h"
// Data wire is plugged into port 2 on the Arduino
#define ONE_WIRE_BUS 2
#define TEMPERATURE_PRECISION 10

const int led = 13;
const int waterWastePin = 4;
const int NUMBER_OF_THERMO = 3;
const char endLineDelimiter = '|';
const int readCommandMaxTime = 5000UL;
const char END_LINE_CHAR = '|';
const int MAX_BUFFER_LEN = 128;

char commandArray[1024];
char commandBuffer[MAX_BUFFER_LEN];

unsigned long startLoopTime;
unsigned long readCommandStartTime;
unsigned long loopCount = 0;

OneWire oneWire(ONE_WIRE_BUS);
DallasTemperature sensors(&oneWire);
DeviceAddress thermoX[NUMBER_OF_THERMO];

const String entityMapping[] = { "thermometer", "startHeating", "lightOn", "lightOff", "lightState", "exposeMethods",
		"getWaterWasteState" };

void setup() {
	Serial.begin(9600);
	while (!Serial) {
		// wait serial port initialization
	}
	pinMode(led, OUTPUT);
	digitalWrite(led,1);
	//water waste connection
	pinMode(waterWastePin, INPUT);
	// Start up the library
	sensors.begin();
	for (int i = 0; i < NUMBER_OF_THERMO; i++) {
		sensors.setResolution(thermoX[i], TEMPERATURE_PRECISION);
		oneWire.search(thermoX[i]);
		Serial.println(getDeviceAddress(thermoX[i]));
	}
}

void loop() {
	delay(1000);
	loopCount++;

	if (Serial.available()) {
		digitalWrite(led,0);
		readSerialInput();
		StaticJsonBuffer<200> jsonBuffer;
		JsonObject& request = jsonBuffer.parseObject(commandBuffer);
		if (!request.success()) {
			reportError("fail parse command-"+String(commandBuffer));
			memset(commandBuffer, 0, sizeof(commandBuffer));
		} else {
			callHandler(request);
		}
		memset(commandBuffer, 0, sizeof(commandBuffer));
	}
	if (loopCount % 5 == 0) {
		respondAnyway();
	}
}

void callHandler(JsonObject& request) {
	String out = "";
	StaticJsonBuffer<200> jsonBuffer;
	JsonObject& response = jsonBuffer.createObject();

	const char* entityName = request["requestEntity"];
	response["arduinoRequest"] = request;
	JsonArray& data = response.createNestedArray("response");

	if (String(entityName).equals("thermometer")) {
		sensors.requestTemperatures();
		for (int i = 0; i < NUMBER_OF_THERMO; i++) {
			JsonObject& entity = jsonBuffer.createObject();
			float tempC = sensors.getTempC(thermoX[i]);
			entity["name"] = getDeviceAddress(thermoX[i]);
			entity["temperature"] = tempC;
			data.add(entity);
		}
		response.printTo(out);
		Serial.println(out);
	}
}

void readSerialInput() {
	int i = 0;
	char c = 0;
	readCommandStartTime = millis();
	while (i < MAX_BUFFER_LEN) {
		while (!Serial.available()) {
			if (readCommandStartTime + readCommandMaxTime < millis()) {
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
		// zero pad the address if necessary
		if (deviceAddress[i] < 16)
			result += "0";
		result += String(deviceAddress[i], HEX);
	}
	return result;
}


void reportError(String message) {
	String out = "";
	StaticJsonBuffer<200> jsonBuffer;
	JsonObject& response = jsonBuffer.createObject();
	JsonObject& fakeRequest = jsonBuffer.createObject();
	response["arduinoRequest"] = fakeRequest;
	JsonObject& entity = jsonBuffer.createObject();
	fakeRequest["requestEntity"] = "error";
	fakeRequest["timestamp"] = loopCount;
	JsonArray& data = response.createNestedArray("response");
	entity["name"] = "error";
	entity["message"] = message;
	data.add(entity);
	response.printTo(out);
	Serial.println(out);
}

void respondAnyway() {
	digitalWrite(led,!digitalRead(led));
	String out = "";
	StaticJsonBuffer<200> jsonBuffer;
	JsonObject& response = jsonBuffer.createObject();
	JsonObject& fakeRequest = jsonBuffer.createObject();
	response["arduinoRequest"] = fakeRequest;
	fakeRequest["requestEntity"] = "automaticStatus";
	fakeRequest["timestamp"] = loopCount;
	JsonArray& data = response.createNestedArray("response");
	sensors.requestTemperatures();
	for (int i = 0; i < NUMBER_OF_THERMO; i++) {
		float tempC = sensors.getTempC(thermoX[i]);
		JsonObject& entity = jsonBuffer.createObject();
		entity["name"] = getDeviceAddress(thermoX[i]);
		entity["temperature"] = tempC;
		data.add(entity);
	}
	response.printTo(out);
	Serial.println(out);
}