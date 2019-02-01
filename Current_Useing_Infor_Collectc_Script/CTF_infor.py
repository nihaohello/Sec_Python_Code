#coding=utf-8
import sys
import requests
from iis_shortname_Scan import iis_shortname_Scan
from SourceLeakHacker import SourceLeakHacker
def SvnHack(domain):
    m="/.svn/entries"
    url=domain+m
    if not url.startswith("http"):
        url="http://"+url
    s=requests.get(url=url)
    if s.status_code == 200:
        print "/.svn/entries   泄露"
def GitHack(domain):
    m="/.git/"
    url=domain+m
    if not url.startswith("http"):
        url="http://"+url
    s=requests.get(url=url)
    if s.status_code == 200:
        print "/.git/    泄露"
def Request_url(url):
    s=requests.get(url)
    #print s.text
    if s.status_code==200:
        print url

def CTF_Check(domain):
    try:
        SvnHack(domain)
        GitHack(domain)
        iis_shortname_Scan(domain)
        SourceLeakHacker(domain)
    except Exception as e:
        print e
