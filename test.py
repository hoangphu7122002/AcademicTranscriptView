import serial.tools.list_ports
import sys
from Adafruit_IO import MQTTClient
import random
import time
from pymongo.mongo_client import MongoClient
from pymongo.server_api import ServerApi

AIO_FEED_ID = ["dadn-led-1", "dadn-fan-1", "dadn-auto", "dadn-door", "dadn-detect-human"]
AIO_USERNAME = "hienhien612"
AIO_KEY = "aio_VUBj19nGZ3YbN69h8YsK3BpA43n9"

uri = "<connection string>"
client = MongoClient(uri)
db = client["database"]
collection = db["user"]

def  connected(client):
    print("Ket noi thanh cong...")
    for feed in AIO_FEED_ID:
        client.subscribe(feed)

    # Setup buttons
    client.publish("dadn-led-1", 0)
    client.publish("dadn-fan-1", 3)
    client.publish("dadn-door", 5)
    client.publish("dadn-detect-human", 7)
    client.publish("dadn-auto", 11)
    #Setup devices


def  subscribe(client , userdata , mid , granted_qos):
    print("Subcribe thanh cong...")

def  disconnected(client):
    print("Ngat ket noi...")
    sys.exit (1)

def  message(client , feed_id , payload):
    print("Nhan du lieu: " + payload)
    ser.write((str(payload) + "#").encode())

client = MQTTClient(AIO_USERNAME , AIO_KEY)
client.on_connect = connected
client.on_disconnect = disconnected
client.on_message = message
client.on_subscribe = subscribe
client.connect()
client.loop_background()

def getPort():
    ports = serial.tools.list_ports.comports()
    N = len(ports)
    commPort = "None"
    for i in range(0, N):
        port = ports[i]
        strPort = str(port)
        if "USB-SERIAL CH340" in strPort:
            splitPort = strPort.split(" ")
            commPort = (splitPort[0])
    return commPort

if getPort() != "None":
    ser = serial.Serial(port=getPort(), baudrate=115200)
    print(ser)

mess = ""
def processData(data):
    data = data.replace("!", "")
    data = data.replace("#", "")
    splitData = data.split(":")
    print(splitData)
    try:
        if splitData[1] == "TEMP":
            client.publish("dadn-temp-1", splitData[2])
            data = {
                "name" : "dadn-temp-1",
                "value" : splitData[2]
            }
            collection.insert_one(data)
        elif splitData[1] == "HUMI":
            client.publish("dadn-humi-1", splitData[2])
            data = {
                "name" : "dadn-humi-1",
                "value" : splitData[2]
            }
        # elif splitData[1] == "GAS":
        #     client.publish("dadn-gas", splitData[2])
        elif splitData[1] == "HUMAN":
            if splitData[2] == 'True':
                client.publish("dadn-human", 1)
            else:
                client.publish("dadn-human", 0)
            data = {
                "name" : "dadn-human",
                "value" : 1 if splitData[2] == 'True' else 0}
            collection.insert_one(data)  
    except:
        pass

mess = ""
def readSerial():
    bytesToRead = ser.inWaiting()
    if (bytesToRead > 0):
        global mess
        mess = mess + ser.read(bytesToRead).decode("UTF-8")
        while ("#" in mess) and ("!" in mess):
            start = mess.find("!")
            end = mess.find("#")
            processData(mess[start:end + 1])
            if (end == len(mess)):
                mess = ""
            else:
                mess = mess[end+1:]

while True:
    readSerial()
    time.sleep(1)