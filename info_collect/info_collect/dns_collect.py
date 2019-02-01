#coding=utf-8
import os
import time
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
from online_check import online_check
from online_domain_collect import online_domain_collect
from local_tool_domain_collect import local_tool_domain_collect
from lcoal_script_domain_collect import lcoal_script_domain_collect
from common_function import root_dir_name,tmp_dir_name,get_ip
#对收集到的dns去重
def sort_domain(root_dir):
    time.sleep(1.5)
    command="cat "+scan_name+".txt "+" | awk '{print $1}' | tee "+scan_name+".txt"
    #command = "cat " + scan_name + ".txt " + " | awk '{print $1,$2}' | tee " + scan_name + ".txt"
    os.system(command)
    time.sleep(1)
    command="cat "+root_dir+"/*.txt "+scan_name+".txt "+" | grep "+"."+root_dir+"."+" | sort -u > "+root_dir+"/domain_gather.txt"
    os.system(command)
    print "收集的域名已经在"+root_dir+"/domain_gather.txt"+" 文件中."
    time.sleep(2)
def dns_collect(scan_dns):
    time.sleep(2)
    global scan_name
    scan_name=scan_dns
    try:
        root_dir = root_dir_name(scan_dns)  # 创建一个
        if not os.path.exists(root_dir):
            os.mkdir(root_dir)
        # 在线收集domain
        time.sleep(2)
        online_domain_collect(scan_dns)
        time.sleep(2)
        #本地tools收集domains,fierce和dnsmap,由于用这两个会很费时间,可以考虑是否使用
        #isno_fierce_dnsmap=1
        #if isno_fierce_dnsmap==1:
          #  local_tool_domain_collect(scan_dns,isno_fierce_dnsmap)
        #三个脚本工具
        lcoal_script_domain_collect(scan_dns)
        sort_domain(root_dir)
    except Exception as e:
        print e
#dns_collect()
