#include "TimerOne.h"
#include "NTC_Thermistor.h"

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
}

void loop()
{
  //Pull some user configured data from the EEPROM, such as fan curve etc.
  //Hardcoded for now


  // Instantiation:
  /**
      pin - an analog port number to be attached to the thermistor.
      R0 - reference resistance.
      Rn - nominal resistance.
      Tn - nominal temperature in Celsius.
      B - b-value of a thermistor.
  */
  NTC_Thermistor case_thermistor(A2, 10000, 10000, 25, 3950);
  double water_temp = case_thermistor.readCelsius();

  String inputVar = Serial.readString();
  if (inputVar.charAt(0) == 'X'){
    if (inputVar.charAt(1) == 'A')
    {
      A_AUTO = inputVar.charAt(3);
        //reset inputVar
        inputVar = "";
    }
    if (inputVar.charAt(1) == 'B')
    {
      B_AUTO = inputVar.charAt(3);
      //reset inputVar
      inputVar = "";
    }
  }

  if (A_AUTO == false)
  {
    if (inputVar.charAt(0) == 'A')
    {
      inputVar.remove(0, 1);
      A_SPEED = inputVar.toInt();
      //reset inputVar
      inputVar = "";
    }
    setPwmDuty(OC1A_PIN, A_SPEED);
  }
  else
  {
    //Auto mode for fan A
    //Instead of just using water_temp, we want to use all available temp sensors, inc water temp etc. (AVG it?)
    A_SPEED = (int)water_temp*2.2;
    setPwmDuty(OC1A_PIN, A_SPEED);
  }

  if (B_AUTO == false)
  {
    if (inputVar.charAt(0) == 'B')
    {
      inputVar.remove(0, 1);
      B_SPEED = inputVar.toInt();
      //reset inputVar
      inputVar = "";
    }
    setPwmDuty(OC1B_PIN, B_SPEED);
  }
  else
  {
    //Auto mode for fan B
    //Instead of just using water_temp, we want to use all available temp sensors, inc water temp etc. (AVG it?)
    B_SPEED = (int)water_temp*2.2;
    setPwmDuty(OC1B_PIN, B_SPEED);
  }

  printEndOfLoopData(A_SPEED, A_AUTO, B_SPEED, B_AUTO, water_temp);
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