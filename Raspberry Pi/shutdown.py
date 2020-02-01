from gpiozero import Button
import time
import os

# While this script is running, you can safely shutdown the pi by
# connecting GPIO 26 (pin 37) to ground (e.g. pin 39) for more than 1 second
# Simple way to run as daemon : screen -dmS shutdown python shutdown.py
# Simple way to run at startup : edit /etc/rc.local
# Dependency : python(3)-gpiozero

stopButton = Button (26)

while True:
     if stopButton.is_pressed:
        time.sleep (1)
        if stopButton.is_pressed:
            os.system ("shutdown now -h")
     time.sleep (1)
exit (1)
