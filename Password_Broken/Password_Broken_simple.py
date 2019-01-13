#coding=utf-8
import requests
import sys
from concurrent.futures import ThreadPoolExecutor
def Request_Url(url,password):
    data={}
    s=requests.post(url,data=data,headers=headers)
    if "" not in s.text:
        with open("success.txt","a+") as f1:
            f1.write(password)
            f1.write("\n")
        f1.close()
def main():
    if len(sys.argv) <=2:
        print "please input python Password_Broken.py url dict.txt"
        sys.exit()
    url=sys.argv[1]
    pass_dict=sys.argv[2]
    pass_list=[]
    with open(pass_dict,"r") as f:
        for i in f.readlines():
            pass_list.append(i.rstrip("\n"))
        with ThreadPoolExecutor(100) as executor:
            for j in pass_list[0:]:
                sys.stdout.write(' ' * 30 + '\r')
                sys.stdout.flush()
                sys.stdout.write("%s \r" % ())
                sys.stdout.flush()
                executor.submit(Request_Url(url,j))
        f.close()
