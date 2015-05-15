#Raspberry Pi Motion Example
#Author: Muhammed Saho

import RPi.GPIO as gpio

#setup pin
pin = 7
gpio.setmode(gpio.BCM) 
gpio.setup(pin, gpio.IN)

# this function will be called when motion detected
def Motion(pin):
    print "Motion Detected !!"
  
# watch for motion
gpio.add_event_detect(pin,gpio.RISING,callback=Motion)

# keep the program running until user preses enter
raw_input("Watching: Press Enter To Quit\n")