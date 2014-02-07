#!/usr/bin/python

#Creating sockets
# also you can use this way -  [ from socket import  * ]

from socket import *

#AF_INET is use IPv4, SOCK_STREAM is use TCP connection
s = socket(AF_INET,SOCK_STREAM)

#bind to a free unpriviledged port 9000
s.bind(("",9099))

#Stat listening to 5 connections on socket
s.listen(5)

while True:
    #c is new socket used for data, a represents network/port of client connected.
    c,a = s.accept()

#send data back to client
    print "My server received connection from ", a
    c.send("Hello this is test message %s \n" % a[0])
    c.close()





