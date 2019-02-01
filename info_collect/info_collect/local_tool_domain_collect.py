#coding=utf-8
import os
import time
from common_function import root_dir_name
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
def fierce_collect(scan_dns):
    time.sleep(2)
    command="fierce -dns " + scan_dns +" | tee " + tmp_dir + "/fierce_result.txt"
    os.system(command)
def dnsmap_collect(scan_dns):
    time.sleep(2)
    command="dnsmap " + scan_dns +" | tee " + tmp_dir + "/dnsmap_result.txt"
    os.system(command)
def local_tool_domain_collect(scan_dns):
    try:
        global tmp_dir
        tmp_dir = root_dir_name(scan_dns)
        fierce_collect(scan_dns)
        dnsmap_collect(scan_dns)
    except Exception as e:
        print e


