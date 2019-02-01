#!/usr/bin/env python
# coding=utf-8
import requests
import codecs
import os
from bs4 import BeautifulSoup
from lxml import html
from common_function import root_dir_name
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
def online_domain_collect(scan_dns):
    root_dir=root_dir_name(scan_dns)
    headers = {
        "Host": "webscan.360.cn",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0",
        # "Accept":" text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        "Accept-Encoding": "gzip, deflate",
        "Accept-Language": "zh-CN,zh;q=0.8,zh-TW;q=0.7,zh-HK;q=0.5,en-US;q=0.3,en;q=0.2",
        "Connection": "keep-alive",
        "Content-Type": "application/x-www-form-urlencoded",
        "Referer": "http://webscan.360.cn/index/checkwebsite/"
    }
    url = "http://webscan.360.cn/sub/index/?url="
    try:
        response = requests.get(url=url, headers=headers)
        soup = BeautifulSoup(response.content, "lxml")
        n=0
        sum_num = []
        while True:
            res = soup.select("#sub_conlist > dl:nth-of-type(1) > dd:nth-of-type(" + str(n) + ") > strong:nth-of-type(1)")
            # print n
            if len(res) == 0:
                break
            n=n+1
            sum_num.append(res[0].string)
        root_dir=root_dir+"/360_online_domain_collect.txt"
        with codecs.open(root_dir,"a+") as f:
            for i in sum_num[:]:
                f.write(i)
                f.write("\n")
        f.close()
    except Exception as e:
        print e