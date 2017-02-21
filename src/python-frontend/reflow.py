from __future__ import print_function

import serial
import threading, time
import sys

import matplotlib.pyplot as plt
import random
import numpy

temp = [25, 85, 180, 205, 220, 220, 180, 25]

rtime = [0, 240, 420, 450, 495, 525, 570, 660]

temp2 = list()
rtime2 = list()

starttime = 0
ser = serial.Serial(
       port='/dev/ttyUSB0',
       baudrate=9600,
       parity=serial.PARITY_NONE,
       stopbits=serial.STOPBITS_ONE,
       bytesize=serial.EIGHTBITS,
       xonxoff=False,     #disable software flow control
       rtscts=False,    #disable hardware (RTS/CTS) flow control
       dsrdtr=False       #disable hardware (DSR/DTR) flow control
) 

def update_line(hl, new_data):
    hl.set_xdata(numpy.append(hl.get_xdata(), new_data))
    hl.set_ydata(numpy.append(hl.get_ydata(), new_data))
    plt.draw()

def tempCTRL():
    global starttime, temp, rtime, ser, temp2, rtime2, ser, tmpthread
    tmpthread = threading.Timer(1.0, tempCTRL)
    tmpthread.start()
#    for i in range(0, 200):
    if starttime == 0:
        starttime = time.time()

    timeElapsed = time.time() - starttime
    ser.write(bytes('a',  encoding='ascii'))
    ser.flush()
    time.sleep(0.1)
    receive = ser.read(ser.inWaiting())
    temperature = 3.3 / 1024 * int(receive) * 100
    temp2.append(temperature)
    rtime2.append(timeElapsed)
        
#    time.sleep(1)
#        print (temperature)
            
    #if temperature < int(user_temp):
    #    ser.write(bytes("a",  encoding='ascii'))
    #elif temperature > int(user_temp):
    #    ser.write(bytes("b",  encoding='ascii'))
    print(rtime[len(rtime)-1])
    print(timeElapsed)
    if timeElapsed >= rtime[len(rtime)-1]:
        print("reflow complete...")
        tmpthread.cancel()
        #sys.exit()
        



#MAIN loop

#user_temp = input("Enter Desired Temperature: ")
user_temp = 200
plt.ion() #  Interactive on
plt.title('Reflow Profile')
plt.ylabel('temperature')
plt.xlabel('time')
plt.axis([0, 700, 0,  250])
#plt.draw()
    #time.sleep(2)
profile,  actual,  = plt.plot(rtime, temp,'ob--',  rtime2,  temp2,  'r-')  

#while True:
#try:
#for i in range(0, 200):

tempCTRL()
while 1:
    actual.set_ydata(temp2)
    actual.set_xdata(rtime2)
    time.sleep(1)
    plt.draw()
   # time.sleep(1)

#except:
#    print ("Error")
    #continue
    
    


##for i in range(0, 200):
##    time.sleep(1)
##    temp2.append(temp[i] + 20)
##    rtime2.append(rtime[i])
##    actual.set_ydata(temp2)
##    actual.set_xdata(rtime2)
##    plt.draw()

#    time2.append(time[i])
#    temp2.append(temp[i] + 20)
#    plt.plot(time, temp,'ob-',  time2,  temp2,  'ob-')  
#    plt.draw()

#plt.clf()
#plt.close() 

