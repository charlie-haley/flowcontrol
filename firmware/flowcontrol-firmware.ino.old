#include "TimerOne.h"
#include "NTC_Thermistor.h"
#include <Adafruit_NeoPixel.h>
#ifdef __AVR__
#include <avr/power.h>
#endif
#define PIN 7
#define NUMPIXELS 8

Adafruit_NeoPixel pixels(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);

const byte OC1A_PIN = 9;
const byte FAN_A_TACH = 4;
const byte OC1B_PIN = 10;
const byte FAN_B_TACH = 2;

int A_SPEED = 100;
int B_SPEED = 100;

bool A_AUTO = true;
bool B_AUTO = true;

void setup()
{
  Serial.begin(9600);
  pinMode(OC1A_PIN, OUTPUT);
  pinMode(OC1B_PIN, OUTPUT);

  pinMode(FAN_A_TACH, INPUT);
  pinMode(FAN_B_TACH, INPUT);

  Timer1.initialize(40);

#if defined(__AVR_ATtiny85__) && (F_CPU == 16000000)
  clock_prescale_set(clock_div_1);
#endif
  pixels.begin();
}

void loop()
{
  for (int i = 0; i < NUMPIXELS; i++)
  {
    pixels.setPixelColor(i, pixels.Color(224, 111, 34)); //224, 111, 34
    pixels.show();
  }

  NTC_Thermistor case_thermistor(A2, 10000, 10000, 25, 3950);
  double water_temp = case_thermistor.readCelsius();

  String inputVar = Serial.readString();
  setFanAutoState(inputVar);

  controlFan('A', &A_AUTO, &A_SPEED, OC1A_PIN, inputVar, water_temp);
  controlFan('B', &B_AUTO, &B_SPEED, OC1B_PIN, inputVar, water_temp);

  printEndOfLoopData(A_SPEED, A_AUTO, B_SPEED, B_AUTO, water_temp);
}

void controlFan(char fan, bool *fanauto, int *fanspeed, int pinnum, String inputVar, double water_temp)
{
  if (*fanauto == false)
  {
    if (inputVar.charAt(0) == fan)
    {
      inputVar.remove(0, 1);
      *fanspeed = inputVar.toInt();
      //reset inputVar
      inputVar = "";
    }
    setPwmDuty(pinnum, *fanspeed);
  }
  else
  {
    //Auto mode for fan
    //Instead of just using water_temp, we want to use all available temp sensors, inc water temp etc. (AVG it?)
    //User configurable fan curves based on a series of metrics. - Ideally want to stick to onboard temp sensors so it's not dependent on a serial connection to operate
    *fanspeed = (int)water_temp * 2.2;
    setPwmDuty(pinnum, *fanspeed);
  }
}

void setFanAutoState(String inputVar)
{
  if (inputVar.charAt(0) == 'X')
  {
    if (inputVar.charAt(1) == 'A')
    {
      A_AUTO = inputVar.charAt(2) - '0';
      //reset inputVar
      inputVar = "";
    }
    if (inputVar.charAt(1) == 'B')
    {
      B_AUTO = inputVar.charAt(2) - '0';
      //reset inputVar
      inputVar = "";
    }
  }
}

void setPwmDuty(byte pin, int duty)
{
  Timer1.pwm(pin, (1023 / 100) * duty);
}

void printEndOfLoopData(int fan_a_percent, bool fan_a_auto, int fan_b_percent, bool fan_b_auto, int water_temp)
{
  String output = "{\"fan_a\":{\"speed\":" + String(fan_a_percent) +
                  ",\"auto\":" + String(fan_a_auto) +
                  "},\"fan_b\":{\"speed\":" + String(fan_b_percent) +
                  ",\"auto\":" + String(fan_b_auto) +
                  "},\"temp_water\":" + String(water_temp) + "}";
  Serial.println(output);
}