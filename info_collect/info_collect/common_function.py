#coding=utf-8
import time
import os
import re
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
def checkip(ip):
    p = re.compile('^((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)$')
    if p.match(ip):
        return True
    else:
        return False
def get_ip(scan_dns):
    time.sleep(2)
    scan_dns=strip_start_end(scan_dns)
    result=os.popen('ping -c 1 '+scan_dns+' | awk "{print $4}" | grep -E -o "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]" | head -n 1').read()
    result=result.rstrip("\n")
    return result
def strip_start_end(scan_dns):
    if scan_dns.startswith("http://"):
        scan_dns=scan_dns.lstrip("http://")
        if scan_dns.startswith("https://"):
            scan_dns=scan_dns.lstrip("https://")
            if scan_dns.endswith("/"):
                scan_dns=scan_dns.rstrip("/")
    return scan_dns
def tmp_dir_name(scan_dns):
    time.sleep(2)
    '''houzhui_list=[]
    file=open("houzhui.txt")
    for line in file.readlines():
        line = line.strip('\n')
        houzhui_list.append(line)
    file.close()
    for i in houzhui_list[0:]:
        scan_dns=scan_dns.rstrip("."+i.lower())'''
    scan_dns=strip_start_end(scan_dns)
    #scan_dns = scan_dns.rstrip(".tw").rstrip(".cn")
    tmp_dir = scan_dns.split(".")[0]
    #print tmp_dir
    return tmp_dir
def root_dir_name(scan_dns):
    time.sleep(2)
    '''houzhui_list=[]
    file=open("houzhui.txt")
    for line in file.readlines():
        line = line.strip('\n')
        houzhui_list.append(line)
    file.close()
    for i in houzhui_list[0:]:
        scan_dns=scan_dns.rstrip("."+i.lower())'''
    scan_dns=strip_start_end(scan_dns)
    #scan_dns = scan_dns.rstrip(".tw").rstrip(".cn")
    root_dir = scan_dns.split(".")[1]
    #print root_dir
    return root_dir
