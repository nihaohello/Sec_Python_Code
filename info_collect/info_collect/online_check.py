#coding=utf-8
import requests
import codecs
import re
import time
import os
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
from bs4 import BeautifulSoup
from common_function import checkip,root_dir_name
#在线检测，if是ip
def ip_online_check(scan_dns):
    try:
        # 站长之家在线http://ip.tool.chinaz.com/60.251.109.197
        # 好像也是要js反应
        '''chinaz_url="http://ip.tool.chinaz.com/"+scan_dns
        response=requests.get(url=chinaz_url)
        soup=BeautifulSoup(response.content,"lxml")
        response=soup.select("p.WhwtdWrap:nth-child(1) ")
        print response'''
        '''#爱站网，需要js等待，暂时不写这部分
        aizhan_url_ip="https://dns.aizhan.com"+"/"+scan_dns
        response=requests.get(url=aizhan_url_ip)
        time.sleep(5)
        print response.content'''
        # 查询网在线
        chaxun_url_ip = "http://site.ip138.com/" + scan_dns
        response = requests.get(chaxun_url_ip)
        time.sleep(2)
        response = requests.get(chaxun_url_ip)
        soup = BeautifulSoup(response.content, "lxml")
        domain_tmp = soup.select("#list")
        domain_time_tmp = re.findall(r'"date">.*?</span>', str(domain_tmp))
        domain_name_tmp = re.findall("a href=.*?target", str(domain_tmp))
        results = []
        chaxun_num = 0
        for i in domain_name_tmp:
            j = domain_time_tmp[chaxun_num]
            i = i.split("/")[1]
            j = j.split(">")[1].rstrip("</span>")
            chaxun_num = chaxun_num + 1
            results.append(i)
            results.append(j)
        print
        results
        with codecs.open(online_root_dir + "/" + tmp_dir + "/" + "chaxun_dns_results.txt", "w+") as f:
            for i in results[:]:
                f.write(i)
                f.write("\n")
        f.close()
        return results[1]
    except Exception as e:
        print e
#在线检测，if是domain
def domain_online_cheak(scan_dns):
    #查询网
    try:
        chaxun_url = "http://site.ip138.com/" + scan_dns
        print
        chaxun_url
        response = requests.get(url=chaxun_url)
        time.sleep(2)
        response = requests.get(url=chaxun_url)
        soup = BeautifulSoup(response.content, "lxml")
        response = soup.select("#curadress > p:nth-of-type(1) > a:nth-of-type(2)")
        with codecs.open(online_root_dir + "/" + tmp_dir + "/" + "chaxun_dns_results.txt", "w+") as f:
            f.write(response)
        f.close()
        return response
    except Exception as e:
        print e
    #站长之家  未编写
    #爱站网    未编写
def online_check(scan_dns):
    try:
        global tmp_dir
        global online_root_dir
        online_root_dir = root_dir_name(scan_dns)
        tmp_dir = root_dir_name(scan_dns)
        if checkip(scan_dns):
            ip_online_check(scan_dns)
        else:
            domain_online_cheak(scan_dns)
    except Exception as e:
        print e
