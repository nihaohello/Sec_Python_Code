#coding=utf-8
import codecs
import os
import time
import requests
from common_function import tmp_dir_name,root_dir_name
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
def nmap_scan(scan_ip):
    command="nmap --script vuln " + scan_ip +" | tee " + root_dir + "/"+tmp_dir+"/nmap_vuln_script_result.txt"
    os.system(command)
    time.sleep(2)
def nikto_vuln_scan(scan_dns):
    command="nikto -h " + scan_dns +" | tee " + root_dir + "/"+tmp_dir+"/nikto_result.txt"
    os.system(command)
    time.sleep(2)
def struts2_vuln_scan(scan_dns):
    command="python struts-scan-master/struts-scan.py " + scan_dns +" | tee " + root_dir +"/"+tmp_dir+ "/struts2_result.txt"
    os.system(command)
    time.sleep(2)
def jexboss_vuln_scan(scan_dns):
    command="python jexboss/jexboss.py -u " + scan_dns +" | tee " + root_dir +"/"+tmp_dir+ "/jexboss_result.txt"
    os.system(command)
    time.sleep(2)
def java_vuln_scan(scan_dns):
    jexboss_vuln_scan(scan_dns)
    struts2_vuln_scan(scan_dns)
def cms_info_check(scan_dns):
    time.sleep(2)
    command="python3 AngelSword/AngelSword.py -u " + scan_dns +" | tee " + root_dir + "/"+tmp_dir+"/cmsinfo_check_result.txt"
    os.system(command)
def gather_vuln_text():
    time.sleep(2)
    command="cat " + root_dir + "/"+tmp_dir+"/struts2_result.txt " + root_dir +"/"+tmp_dir+ "/jexboss_result.txt " + root_dir +"/"+tmp_dir+ "/cmsinfo_check_result.txt " + root_dir + "/"+tmp_dir+"/nmap_vuln_script_result.txt " +root_dir +"/"+tmp_dir+ "/nikto_result.txt " + " > " + root_dir + "/"+tmp_dir+"/gather_vuln_text.txt"
    os.system(command)
def check_http_or_https(scan_dns):
    try:
        check_dns = "https://" + scan_dns + ":443"
        response = requests.get(url=check_dns)
        if response.status_code == 200:
            scan_dns = check_dns
        else:
            scan_dns = "http://" + scan_dns
        return scan_dns
    except Exception as e:
        print e
def local_vuln_scan(scan_dns,scan_ip):
    try:
        global tmp_dir
        global root_dir
        root_dir = root_dir_name(scan_dns)
        tmp_dir = tmp_dir_name(scan_dns)
        if not scan_dns.startswith("http"):
            scan_dns = check_http_or_https(scan_dns)
        java_vuln_scan(scan_dns)  # 还是对特定页面的效果要好点
        cms_info_check(scan_dns)
        if scan_ip != None:
            nmap_scan(scan_ip)
        nikto_vuln_scan(scan_ip)
        gather_vuln_text()
    except Exception as e:
        print e
#local_vuln_scan("www.ricoh.com.tw","60.251.109.197")
