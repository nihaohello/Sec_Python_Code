#coding=utf-8
import os
import time
from common_function import root_dir_name
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
def DirBrute_collect(scan_dns):
    time.sleep(2)
    command="python dirbrute.py " + scan_dns +" | tee " + tmp_dir + "/DirBrute_result.txt"
    os.system(command)
def subDomainsBrute_collect(scan_dns):
    time.sleep(2)
    command="python subDomainsBrute-master/subDomainsBrute.py " + scan_dns +" | tee " + tmp_dir + "/subDomainsBrute_result.txt"
    os.system(command)
def Sublist3r_collect(scan_dns):
    time.sleep(2)
    command="python Sublist3r/sublist3r.py -d " + scan_dns +" | tee " + tmp_dir + "/sublist3r_result.txt"
    os.system(command)
def lcoal_script_domain_collect(scan_dns):
    try:
        global tmp_dir
        tmp_dir = root_dir_name(scan_dns)
        DirBrute_collect(scan_dns)
        subDomainsBrute_collect(scan_dns)
        Sublist3r_collect(scan_dns)
    except Exception as e:
        print e