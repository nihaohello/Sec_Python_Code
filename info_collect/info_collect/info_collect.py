#coding=utf-8
from dns_collect import dns_collect
from ip_port_vuln_scan import ip_port_vuln_scan
import time
from many_ip_port_vuln_scan import many_domain_scan
from common_function import checkip,strip_start_end
from argparse import ArgumentParser
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
def main():
    try:
        arg = ArgumentParser(description='Web_Information_Collect By Naivete')
        arg.add_argument('-u', '--url', help='url site', dest='url')
        arg.add_argument('-d', '--domain', help='domain site', dest='domain' )
        arg.add_argument('-a', '--all',help='domains site',dest='all')
        result = arg.parse_args()
        print "Now Start Web_Information_Collect:"
        if result.domain:
            print result.domain
            if checkip(result.domain):
                print "请输入有效域名,如www.baidu.com"
                sys.exit()
            scan_dns = strip_start_end(result.domain)
            dns_collect(scan_dns)
        elif result.url:
            scan_url = strip_start_end(result.url)
            scan_ip="null"
            ip_port_vuln_scan(scan_url,scan_ip,1)
        elif result.all:
            if checkip(result.all):
                print "请输入有效域名,如www.baidu.com"
                sys.exit()
            scan_dns = strip_start_end(result.all)
            dns_collect(scan_dns)
            many_domain_scan(scan_dns)
    except Exception as e:
        print e
if __name__=='__main__':
    main()
