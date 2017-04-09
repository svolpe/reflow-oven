from __future__ import print_function

import serial

import threading, time
from threading import Timer
import sys

import matplotlib.pyplot as plt
import matplotlib.animation as animation

import random
import numpy

import csv
import os
from tkinter import Tk
from tkinter import filedialog


class reflowControl(object):
    
    def __init__(self, serialPort, profileTimes, profileTemps):
        self._newData = threading.Event()
        self._curTemp = []
        self._index = 0
        self._threadCnt = 0
        self._realTemp = list()
        self._expectedTemp = list()
        self._realTime = list()
        self._startTime = 0
        self._proccessed = 0

        self._profileTime = profileTimes
#        self._profileTime = [0, 24, 42, 45, 49, 52, 57, 66]
        self._indexCnt = len(self._profileTime) - 1
        self._profileTemp = profileTemps
        self._is_running = 0
        self._interval   = 1
        self._function   = self.tempCTRL
        self._next_call = time.time()
        self._startTime = time.time()
        self._curTemp = self._profileTemp[self._index]
 
        self._serInit(serialPort)
        self.start()

    def _serInit(self, serialPort):
        self._ser = serial.Serial(
               port=serialPort,
               baudrate=9600,
               parity=serial.PARITY_NONE,
               stopbits=serial.STOPBITS_ONE,
               bytesize=serial.EIGHTBITS,
               xonxoff=False,     #disable software flow control
               rtscts=False,    #disable hardware (RTS/CTS) flow control
               dsrdtr=False       #disable hardware (DSR/DTR) flow control
        )
    
    def _serialSend(self, data):
        self._ser.write(bytes(data,  encoding='ascii'))
        
    def _serialGet(self, data):
        self._serialSend(data)  #Get current temperature
        self._ser.flush()
        time.sleep(0.1)
        return self._ser.read(self._ser.inWaiting())
 
    def _run(self):
        self._is_running = False
        self.start()
        self._function()

    def newData(self):
        if self._is_running:
            self._newData.clear()
            value = self._newData.wait(3)
            return value
        else:
            return 0
        
    def start(self):
        if not self._is_running:
          self._next_call += self._interval
          self._timer = threading.Timer(self._next_call - time.time(), self._run)
          self._timer.start()
          self._is_running = True

    def stop(self):
        self._timer.cancel()
        self._is_running = False
        
    def getRealTemps(self):
        return self._realTemp

    def getRealTimes(self):
        return self._realTime
    
    def getExpectedTemps(self):
        return self._expectedTemp
    
    def getProfileTimes(self):
        return self._profileTime

    def getProfileTemps(self):
        return self._profileTemp
    
    def getMaxTime(self):
        return max(self._profileTime)

    def getMaxTemp(self):
        return max(self._profileTemp)
 
    def getPlotData(self, frameNum, plotInfo):
        if self.newData():
            plotInfo.set_ydata(reflow.getRealTemps())
            plotInfo.set_xdata(reflow.getRealTimes())
        return plotInfo

    def interpolate (self, x):
        #y = y0 + (x - x0) * (y1 - y0)/(x1 - x0)
        y0 = self._profileTemp[self._index - 1]
        y1 = self._profileTemp[self._index]
        x0 = self._profileTime[self._index - 1]
        x1 = self._profileTime[self._index]
        
        y = y0 + (x - x0) * (y1 - y0)/(x1 - x0)
        
        return y
        
    def tempCTRL(self):
    
        timeElapsed = time.time() - self._startTime
    
        
        if (timeElapsed > self._profileTime[self._index]):
                
            if (self._index < self._indexCnt):
                self._index += 1
                self._curTemp = self._profileTemp[self._index]
            else:
                print("Index overrun")
        temperature = int(self._serialGet('ct0'))/10
        InterpolatedTemp  = self.interpolate(timeElapsed)

        self._realTemp.append(temperature)
        self._expectedTemp.append(InterpolatedTemp)
        self._realTime.append(timeElapsed)
        
        if temperature < int(InterpolatedTemp): #Turn relay on if temp is low
            self._serialSend("cr201")
        elif temperature > int(InterpolatedTemp): #Turn relay off if temp is high
            self._serialSend("cr200")
    
        if timeElapsed >= self._profileTime[len(self._profileTime)-1]:
            self.stop()
            #sys.exit()
        self._newData.set()

#MAIN loop

#plt.draw()
    #time.sleep(2)
Tk().withdraw() # we don't want a full GUI, so keep the root window from appearing
   
paramsFile = filedialog.askopenfile(defaultextension=".csv", filetypes=[ ('Comma Seperated Values','*.csv') ]) # show an "Open" dialog box and return the path to the selected file

master=Tk()

try:
    if not hasattr(paramsFile, 'name'):
        exit()
except:
    exit()

temps = []
times = []

    
with open(paramsFile.name, 'r') as f:
    reader = csv.DictReader(f, delimiter=',')
    for row in reader:
        temps.append(int(row['Temp']))
        times.append(int(row['Time']))

reflow = reflowControl('COM8', times, temps)
 
plt.ion() #  Interactive on
plt.title('Reflow Profile')
plt.ylabel('temperature (C)')
plt.xlabel('time (s)')


plt.axis([0, reflow.getMaxTime()+5, 0,  reflow.getMaxTemp()+10])

profile,  actual,  = plt.plot(reflow.getProfileTimes(), reflow.getProfileTemps(),'ob--',  reflow.getRealTimes(),  reflow.getRealTemps(),  'r-')  

#while True:
#try:
#for i in range(0, 200):

#reflow.tempCTRL()
while reflow.newData():
    actual.set_ydata(reflow.getRealTemps())
    actual.set_xdata(reflow.getRealTimes())
    plt.draw()
    plt.pause(0.05)
#    time.sleep(1)

#write to file

#import sys
#Prompt user for file to process


Tk().withdraw() # we don't want a full GUI, so keep the root window from appearing
   
files = filedialog.asksaveasfilename(defaultextension=".csv", filetypes=[ ('Comma Seperated Values','*.csv') ]) # show an "Open" dialog box and return the path to the selected file

master=Tk()
fileList=master.tk.splitlist(files)



if len(fileList) > 0:
    #remove any bogus extenstion and add the correct one on to the filename
    file,ext = os.path.splitext(fileList[0])
    f = open(file+'.csv', 'w', newline='')
    try:
        writer = csv.writer(f)
        writer.writerow( ('Time', 'Real Temp', 'Expected Temp') )
        expectedTemps = reflow.getExpectedTemps()
        realTemps = reflow.getRealTemps()
        realTimes = reflow.getRealTimes()
        
        for index, time in enumerate(realTimes):
             writer.writerow((str(time), str(realTemps[index]), str(expectedTemps[index])))
    
    finally:
        f.close()
    

#plt.clf()
#plt.close() 

