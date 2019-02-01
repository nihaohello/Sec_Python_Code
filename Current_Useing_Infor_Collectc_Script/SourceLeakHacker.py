import requests
import threading
import sys
def Request_url(url):
    if not url.startswith("http"):
        url="http://"+url
    s=requests.get(url)
    #print s.text
    if s.status_code == 200:
        print url
def SourceLeakHacker(domain):
    try:
        m = []
        listFile = open("list.txt", "r")
        for i in listFile:
            i = i.rstrip("\n").rstrip("\r")
            if "?" in i:
                fileFile = open('file.txt', 'r')
                for j in fileFile:
                    j = j.replace("\n", "")
                    j = j.replace("\r", "")
                    temp = i.replace("?", j)
                    m.append(temp)
        print "Start Sourceleak Scan:"
        m_length=len(m)
        m_num=0
        for i in m[0:]:
            url = i + "/"
            m_num = m_num + 1
            sys.stdout.write(' ' * 30 + '\r')
            sys.stdout.flush()
            sys.stdout.write("%s/%s \r" % (m_num, m_length))
            sys.stdout.flush()
            Request_url(url)
        print "Sourceleak Scan over!"



    except Exception as e:
        print e