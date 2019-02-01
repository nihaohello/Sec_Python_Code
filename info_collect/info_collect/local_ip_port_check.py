#coding=utf-8
import codecs
import os
import re
import time
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
from common_function import root_dir_name,tmp_dir_name,checkip
#判断输入是ip还是domain
def masscan_check(scan_dns):
    command="masscan -p0-65535 --rate=10000 " + scan_dns +" | tee " + root_dir +"/"+tmp_dir+ "/masscan_result.txt"
    os.system(command)
    time.sleep(2)
def whatweb_check(scan_dns):
    time.sleep(2)
    command="whatweb " + scan_dns +" | tee " + root_dir +"/"+tmp_dir+ "/whatweb_result.txt"
    os.system(command)
def nslookup_check(scan_dns):
    time.sleep(2)
    command="nslookup " + scan_dns +" | tee " + root_dir + "/"+tmp_dir+"/nslookup_result.txt"
    os.system(command)
def dig_check(scan_dns):
    time.sleep(2)
    command="dig " + scan_dns +" | tee " + root_dir + "/"+tmp_dir+"/dig_result.txt"
    os.system(command)
def whois_check(scan_dns):
    time.sleep(2)
    command="whois " + scan_dns +" | tee " + root_dir + "/"+tmp_dir+"/whois_result.txt"
    os.system(command)
def get_ip_from_txt():
    f = open(root_dir+"/"+tmp_dir+"/nslookup_result.txt")
    s = f.read()
    f.close()
    m = re.findall(r"Address: .*", s)
    nslookup_check_ip=str(m).split(":")[1].rstrip("']")
    return nslookup_check_ip
def gather_ip_port_text():
    time.sleep(2)
    command="cat " + root_dir +"/"+tmp_dir+ "/whatweb_result.txt " + root_dir +"/"+tmp_dir+ "/whois_result.txt " + root_dir +"/"+tmp_dir+ "/dig_result.txt " + root_dir + "/"+tmp_dir+"/nslookup_result.txt " + root_dir +"/"+tmp_dir+ "/masscan_result.txt > " + root_dir + "/"+tmp_dir+"/gather_ip_port_text.txt"
    #command="cat "+"*.text"+">"+"gather_text.txt"
    os.system(command)
def local_ip_port_scan(scan_dns,scan_ip):
    global tmp_dir
    global root_dir
    root_dir=root_dir_name(scan_dns)
    tmp_dir=tmp_dir_name(scan_dns)
    try:
        whatweb_check(scan_dns)
        if not checkip(scan_dns): #nslookup只能domain
            nslookup_check(scan_dns)
        dig_check(scan_dns)
        whois_check(scan_dns)
        masscan_check(scan_ip)
    except Exception as e:
        print e