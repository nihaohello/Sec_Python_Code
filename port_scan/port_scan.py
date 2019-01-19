#coding=utf-8
import socket
from concurrent.futures import ThreadPoolExecutor
import sys
def Connect_Port(ip,port):
    try:
        socket.setdefaulttimeout(3)
        s = socket.socket()
        s.connect((ip, port))
        print ip + " == " + str(port) + " is open"
    except:
        #print ip + " == " + str(port) + " is closed"
		pass
def main():
    with ThreadPoolExecutor(100) as executor:
        for i in range(65536):
            executor.submit(Connect_Port(ip,str(i)))
if __name__ == "__main__":
    if len(sys.argv)<=1:
        print "please input domain or ip."
        sys.exit()
    ip = socket.gethostbyname(sys.argv[1])
    ports_list = [80,8080,3306,8081,9080,1080,21,23,443,69,22,25,110,7001,9090,3389,1521,1158,2100,1433,8000]
    main()
    
