from machine import Pin, PWM, ADC, UART
from sys import stdin
import fan
import math
import uasyncio

uart = UART(0, 9600, parity=None, stop=1, bits=8)
swriter = uasyncio.StreamWriter(uart, {})
sreader = uasyncio.StreamReader(uart)

sensor_temp = ADC(1) 
conversion_factor = 5/65535

#Configure state object
class State:
    Fans = []
    WaterTemp = 20

state = State()

fan_a = fan.Fan(PWM(Pin(6)), 'A')
fan_b = fan.Fan(PWM(Pin(7)), 'B')

state.Fans.append(fan_a)
state.Fans.append(fan_b)

currentInput = ""

#Main

def steinhart_temperature_C(r, Ro=10000.0, To=25.0, beta=3950.0):
        steinhart = math.log(r / Ro) / beta      # log(R/Ro) / beta
        steinhart += 1.0 / (To + 273.15)         # log(R/Ro) / beta + 1/To
        steinhart = (1.0 / steinhart) - 273.15   # Invert, convert to C
        return steinhart

def average(lst): 
    return sum(lst) / len(lst) 

async def sender():
    global state
    while True:
        # Update this to json.dumps(state) so the fan count is scalable client side
        result = ("{\"fan_a\":{\"speed\":" + str(int(fan_a.Speed)) +
                  ",\"auto\":" + str(fan_a.Auto) +
                  "},\"fan_b\":{\"speed\":" + str(int(fan_b.Speed)) +
                  ",\"auto\":" + str(fan_b.Auto) +
                  "},\"temp_water\":" + str(state.WaterTemp) + "}\n")
        await swriter.awrite(result)

async def receiver():
    global state
    global currentInput
    while True:
        res = await sreader.readline()
        currentInput = res.decode()

async def monitor():
    global state
    global currentInput
    temps = []
    while True:
        adcResoulution = 3.3/65535
        reading = sensor_temp.read_u16() * adcResoulution
        temperature = 25 - (reading - 2.715)/0.001721
        temps.append(temperature)
        if len(temps) > 10:
            state.WaterTemp = int(average(temps))
            temps = []

        # temp = steinhart_temperature_C(resistance)
        #If input begins with char 'X', enter flow for setting fan state
        if len(currentInput) > 0 and currentInput[0] == 'X':
            for fan in state.Fans:
                if fan.Position == currentInput[1]:
                    fan.auto(int(currentInput[2]))
                    #Clear input
                    currentInput = ""
                    break
        
        #Set fan states, check if auto and apply rules accordingly
        for fan in state.Fans:
            if not fan.Auto:
                if currentInput[0] == fan.Position:
                    fan.Speed = int(currentInput[1:])
                    #Clear input
                    currentInput = ""
            else:
                fan.Speed = state.WaterTemp * 2.2
            fan.pwm(fan.Speed)

#Run uasyncio event loop
loop = uasyncio.get_event_loop()
loop.create_task(monitor())
loop.create_task(sender())
loop.create_task(receiver())
loop.run_forever()
