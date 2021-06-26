import time

count = 0
class Fan:
    Position = None
    Auto = 1
    Speed = 50
    Rpm = 0
    Pwm = None

    t = time.time()

    def __init__(self, pwm, position):
        self.Pwm = pwm
        self.Pwm.freq(25000)
        self.pwm(self.Speed)
        self.Position = position

    def pwm(self, percent):
        self.Speed = percent
        self.Pwm.duty_u16(int(percent * 655.36))

    def auto(self, isAuto):
        self.Auto = isAuto

    def tach():
        global count
        count += 1
        rps = (count / 2) / 1
        self.Rpm = rps * 60
        count = 0
