#coding=utf-8
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
import time
import sys
reload( sys )
sys.setdefaultencoding('gbk')
from selenium import webdriver
import selenium.webdriver.support.ui as ui
from selenium.webdriver.common.keys import Keys
from selenium.common.exceptions import TimeoutException
#引入ActionChains鼠标操作类
from selenium.webdriver.common.action_chains import ActionChains
start_url="https://sso.telnet404.com/cas/login/?next=/"
driver=webdriver.Chrome(executable_path="D:/selenium/chrome/chromedriver.exe",service_args=['--ignore-ssl-errors=true', '--ssl-protocol=TLSv1'])
wait=ui.WebDriverWait(driver,20)
urls=[]
#登陆
driver.get(start_url)
wait.until(lambda x:x.find_element_by_xpath('//*[@id="login_form"]/div[2]/input')).send_keys("")
wait.until(lambda x:x.find_element_by_xpath('//*[@id="inputPassword"]')).send_keys("")
time.sleep(10)
driver.get("https://www.zoomeye.org/")
wait.until(lambda x:x.find_element_by_css_selector('#appZoomEye > div > div > div.home-content > div.home-search-body > form > div > div > div > ul > li > div > input')).send_keys("app:phpmyadmin")
wait.until(lambda x:x.find_element_by_css_selector('#appZoomEye > div > div > div.home-content > div.home-search-body > form > img')).click()
for i in range(2,21):
	print "start:"
	for j in range(4,24):
		print j
		url=wait.until(lambda x:x.find_element_by_css_selector('#appZoomEye > div > div > div.content-width.main-content > div > div.search-result-left > div.search-result-list > div:nth-child('+str(j)+') > div.search-result-item-info > a').get_attribute("href"))
		url="http:"+url
		print url
		urls.append(url)
	try:
		ActionChains(driver).click(wait.until(lambda x: x.find_element_by_css_selector("#appZoomEye > div > div > div.content-width.main-content > div > div.search-result-left > div.search-result-list > div.search-result-pagination.clearfix > ul > li.ant-pagination-item.ant-pagination-item-"+str(i) +"> a"))).perform()
	except Exception as e:
		continue
with open("urlss.txt","a+") as f:
	for url in urls[0:]:
		f.write(str(url))
		f.write('\n')
f.close()
driver.quit()