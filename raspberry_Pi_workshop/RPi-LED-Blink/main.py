#Raspberry Pi LED Blink Example
#Author Muhammed Saho

import RPi.GPIO as gpio
import time

# Set Pin Settings
pin = 14
gpio.setmode(gpio.BCM)
gpio.setup(pin,gpio.OUT)

# Blink On and Off
while True:
    gpio.output(pin,True)       #on
    time.sleep(0.25)            #wait
    gpio.output(pin,False)      #off
    time.sleep(0.25)            #wait
  
