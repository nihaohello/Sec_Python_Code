#coding=utf-8
import requests
import sys
from concurrent.futures import ThreadPoolExecutor
def Request_url(url):
    s=requests.get(url)
    #print s.text
    if s.status_code==200:
        print url
def Shell_Broken(domain,catalog_dict):
    with open(catalog_dict,"r") as f:
        passwords=[]
        for i in f.readlines():
            passwords.append(i.rstrip("\n"))
        #print passwords
        with ThreadPoolExecutor("100") as executor:
            for i in passwords[0:]:
				url=domain+"/"+i
				sys.stdout.write(' ' * 30 + '\r')
                sys.stdout.flush()
                sys.stdout.write("%s \r" % (url))
                sys.stdout.flush()
                executor.submit(Request_url,url)
    f.close()
def main():
    if len(sys.argv)<=2:
        print "python Shell_Broken.py www.baidu.com dict.txt"
        sys.exit()
    domain=sys.argv[1]
    if not domain.startswith("http"):
        domain="http://"+domain
    catalog_dict=sys.argv[2]
    Shell_Broken(domain,catalog_dict)
if __name__=='__main__':
    main()