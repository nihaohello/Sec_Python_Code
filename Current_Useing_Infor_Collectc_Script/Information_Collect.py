#coding=utf-8
import whois
import socket
import  platform
import os
import requests
import re
from concurrent.futures import ThreadPoolExecutor
import json
from CTF_infor import CTF_Check
from scapy.all import *

def Get_Ip_By_Domain(domain):
    try:
        if domain.startswith("http"):
            domain = domain.lstrip("https://").lstrip("http://").rstrip("/")
        ip = socket.gethostbyname(domain)
        print u"ip is ", ip
        return ip
    except Exception as e:
        print e
def Connect_Port(ip,port):
    try:
        socket.setdefaulttimeout(3)
        s = socket.socket()
        s.connect((ip, port))
        print ip + " == " + str(port) + u" is open"
    except:
        pass
        #print ip + " == " + str(port) + " is closed"
def Port_scan(ip):
    print u"\nport scan start:"
    try:
        with ThreadPoolExecutor(20) as executor:
            for i in range(65536):
                sys.stdout.write(' ' * 30 + '\r')
                sys.stdout.flush()
                sys.stdout.write("Test port : %s \r" % (i))
                sys.stdout.flush()
                executor.submit(Connect_Port(ip, str(i)))
    except Exception as e:
        print e
def Get_Whois_By_Domain(domain):
    try:
        print u"\nwhois is:"
        print  whois(domain)
    except Exception as e:
        print e
def Check_win_Unix(ip):
    try:
        r = sr1(IP(dst=ip) / ICMP(), timeout=1, verbose=0)
        # print r[IP].ttl
        if r == None:
            print u"\nPlease 手动检查操作系统！"
        elif r[IP].ttl <= 64:
            print u"\nLinux or Unix!"
        elif r[IP].ttl > 64 and r[IP].ttl <= 128:
            print u"\n操作系统是Windows!"
        else:
            print u"\no ping"
    except Exception as e:
        print e
def Online_CMS_Check(domain):
    try:
        data = {"url": domain}
        headers = {
            "Host": "whatweb.bugscaner.com",
            "User - Agent": "Mozilla / 5.0(Windows NT 10.0;Win64;x64;rv:64.0) Gecko / 20100101Firefox / 64.0",
            "Accept": "application / json, text / javascript, * / *; q = 0.01",
            "Accept - Language": "zh - CN, zh;q = 0.8, zh - TW;q = 0.7, zh - HK;q = 0.5, en - US;q = 0.3, en;q = 0.2",
            "Accept - Encoding": "gzip, deflate",
            "Referer": "http: // whatweb.bugscaner.com / look /",
            "Content - Type": "application / x - www - form - urlencoded;,charset = UTF - 8",
            "X - Requested - With": "XMLHttpRequest",
            "Connection": "close",
            "Cookie": "saeut = CkMPIlxBQaMfY0LFBC8lAg ==;Hm_lvt_6809c4d9953f5afcfe906ac76fa71351 = 1547780883, 1547783475, 1547790302, 1547867129;uTimeCookie = 1;Hm_lpvt_6809c4d9953f5afcfe906ac76fa71351 = 1547867141"
        }
        s = requests.post(url="http://whatweb.bugscaner.com/what/", data=data, headers=headers, timeout=20)
        s1 = json.loads(s.content)
        m="no_CMS"
        for key, value in s1.items():
            print key, value
            if key == "CMS":
                m = value
        '''s2 = json.dumps(s.content)
            m = re.findall("CMS(.*)", s2)
        return str(m[0]).strip().lstrip(': ["').rstrip('"]}')'''
        return m  # CMS类别
    except Exception as e:
        print e
def AngelSword(CMS,domain):
    print u" Please 手动使用AngelSword框架检查漏洞！",CMS
def Check_CMS(domain):
    #whatweb
    try:
        domain = domain.strip("http://")
        os.system("whatweb " + domain)
    except Exception as e:
        pass
    #在线识别
    m=Online_CMS_Check(domain)
    #利用CMS，最好手工
    # 调用AngelSword框架   CMS
    if m!=None:
        AngelSword(m,domain)
def Request_url(url):
    s=requests.get(url,timeout=20)
    #print s.text
    if s.status_code == 200:
        print url
def Catalog_Broken(domain):
    try:
        if not domain.startswith("http"):
            url = "http://" + domain
        with open("catalog.txt", "r") as f:
            passwords = []
            for i in f.readlines():
                passwords.append(i.rstrip("\n"))
            # print passwords
            pa_length=len(passwords)
            pa_num=0
            print "Start web catalog scan:"
            with ThreadPoolExecutor(20) as executor:
                for i in passwords[0:]:
                    url = url + "/" + i
                    pa_num=pa_num+1
                    sys.stdout.write(' ' * 30 + '\r')
                    sys.stdout.flush()
                    sys.stdout.write("%s/%s \r" % (pa_num, pa_length))
                    sys.stdout.flush()
                    executor.submit(Request_url, url)
        f.close()
    except Exception as e:
        print e
def Online_vuln_check(domain):
    pass
def output_suggest():
    print u'''
\n
一系列的历史漏洞可参考：https://github.com/SecWiki  
浏览器书签
火狐插件
端口很重要
输入输出点
github
google hacking 
爆破   信息收集
php:thinkphp 
aspx:略
jsp:weblogic struts2 jboss tomcat  
开源可参考:nmap msf awvs nikto nessus w3af
1.框架漏洞，中间件漏洞  
2.找一下注入点
多关注下cookie注入点（特别是管理员登陆的地方cookie）和reference
3.找一下上传点（很少见了，利用解析漏洞也不好使，jpg后缀前面的所有全部重命名）
4.找一下EWebEditor（很少见了）
5.找一下备份
6.找一下命令执行（难找的漏洞）
7.找一下file=的文件包含（难找的漏洞）
8.找一下xss（常见的漏洞，主流的漏洞）
9.简单密码爆破一波，bp爆破；有验证码可以自己写，效果不是很好
10.c端旁注，很多都是在旁站找问题
11.xxe
12.ssrf（暂时无研究）
13.xssi（http://www.52bug.cn/%E9%BB%91%E5%AE%A2%E6%8A%80%E6%9C%AF/5267.html）
14.json截断
15.后台：
16.不安全的验证（越权）
17.点击劫持
18.子域名劫持
19.逻辑漏洞（如今的主流漏洞）
20.弱密码（真的挺不错的思路，不过会越来越少，不少产品现在都是强制修改强密码）
21.终极大杀招，owasp上的漏洞对试试。 
基础信息的收集：
1.
ip
在线网址的探测：爱站网（超级ping），站长之家，查询网
本地工具测试：ping，whatweb
2.
whois
本地工具：nslookup，dig，whatweb，whois
3.
port
本地工具：masscan，nmap
4.
语言和版本
在线网址：云溪，钟馗之眼，sofa
本地工具：whatweb
5.
dns的收集
在线网址：360
本地脚本：DirBrute，subDomainsBrute，Sublist3r
本地工具：fierce，dnsmap
6.
常见漏洞
在线网址：钟馗之眼
会用到本地工具：nmap，nikto
可能会用到的本地工具：msf，w3af
会用到的本地脚本：cms检测脚本，jexboss，struts2，webshell的检测
可能会用到的本地脚本：
    '''
def main():
    domain="192.168.0.101"
    ip=Get_Ip_By_Domain(domain)
    Check_win_Unix(ip)
    #   Port_scan(ip)
    Get_Whois_By_Domain(domain)
    Check_CMS(domain)
    CTF_Check(domain)
    Catalog_Broken(domain)
    output_suggest()
if __name__ == '__main__':
    main()

