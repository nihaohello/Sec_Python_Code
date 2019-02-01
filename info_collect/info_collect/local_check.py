#coding=utf-8
import socket
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
from local_ip_port_check import local_ip_port_scan
from local_vuln_scan import local_vuln_scan
from common_function import get_ip,checkip
def local_check(scan_dns,scan_ip,flag):
    #scan_dns = raw_input("请输入你的目标ip或者域名:")
    if flag==1 or flag ==2:
        if checkip(scan_dns):
            local_ip_port_scan(scan_dns, scan_dns)  # 第一，ip和port
            local_vuln_scan(scan_dns, scan_dns)  # 第二，vuln的检测
        else:
            scan_ip = socket.gethostbyname(scan_dns)
            local_ip_port_scan(scan_dns, scan_ip)  # 第一，ip和port
            local_vuln_scan(scan_dns, scan_ip)  # 第二，vuln的检测
    else:
        local_ip_port_scan(scan_dns,scan_ip)
        local_vuln_scan(scan_dns,scan_ip)
