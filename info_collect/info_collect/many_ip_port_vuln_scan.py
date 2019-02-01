#coding=utf-8
import os
import codecs
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
from ip_port_vuln_scan import ip_port_vuln_scan
from common_function import root_dir_name,tmp_dir_name
def many_domain_scan(scan_dns):
    root_dir=root_dir_name(scan_dns)
    domain_list=[]
    #ip_list=[]
    file=open(root_dir+"/domain_gather.txt")
    for line in file.readlines():
        line = line.strip('\n')
        domain_list.append(line)
    for domain in domain_list[0:] :
        tmp_dir=tmp_dir_name(domain)
        if not os.path.exists(root_dir + "/" + tmp_dir):
            os.mkdir(root_dir + "/" + tmp_dir)
        # 第一部分，本地检查ip和域名和子域名
        ip_port_vuln_scan(domain,"ip_list[i]",2)
        # 第二部分,在线检测ip和domain
        #online_check(scan_dns)
