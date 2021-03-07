class Fan:
    Position = None
    Auto = 1
    Speed = 50
    Rpm = 0
    Pwm = None

    def __init__(self, pwm, position):
        self.Pwm = pwm
        self.Pwm.freq(25000)
        self.pwm(self.Speed)
        position = position

    def pwm(self, percent):
        self.Speed = percent
        self.Pwm.duty_u16(int(percent * 655.36))

    def auto(self, isAuto):
        self.Auto = isAuto

    ##TODO: Add tachometer support here