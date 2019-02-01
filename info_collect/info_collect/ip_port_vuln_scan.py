#coding=utf-8
from online_check import online_check
from local_check import local_check
from common_function import root_dir_name,tmp_dir_name
import os,time
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
#代码思路
'''1.
ip
在线网址的探测：爱站网（超级ping），站长之家，查询网
本地工具测试：ping，whatweb
2.
whois
本地工具：nslookup，dig，whatweb，whois
3.
port
本地工具：masscan，nmap'''

def ip_port_vuln_scan(scan_dns,scan_ip,flag):
    global tmp_dir
    global root_dir
    root_dir=root_dir_name(scan_dns)
    tmp_dir=tmp_dir_name(scan_dns)
    if not os.path.exists(root_dir):  # linux下
        os.mkdir(root_dir)
    if not os.path.exists(root_dir + "/" + tmp_dir):
        os.mkdir(root_dir + "/" + tmp_dir)
    # 第一部分，本地检查ip和域名和子域名
    local_check(scan_dns,scan_ip,flag)
    time.sleep(2)
    # 第二部分,在线检测ip和domain,效果不是很好
    online_check(scan_dns)
