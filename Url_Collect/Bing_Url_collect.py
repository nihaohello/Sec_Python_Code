#coding=utf-8
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
import time
from selenium import webdriver
import selenium.webdriver.support.ui as ui
from selenium.webdriver.common.keys import Keys
from selenium.common.exceptions import TimeoutException
#引入ActionChains鼠标操作类
from selenium.webdriver.common.action_chains import ActionChains
start_url="https://cn.bing.com/search?q=inurl%3aphp%3fid%3d&qs=HS&sc=8-0&cvid=2EEF822D8FE54B6CAAA1CE0169CA5BC5&sp=1&first=53&FORM=PERE3"
urls=range(800)
m=0
s=[1,2,3,4,5,6,7,8,9,10,11,12,13,14]
driver=webdriver.Chrome(executable_path="D:/selenium/chrome/chromedriver.exe")
wait=ui.WebDriverWait(driver,20)
driver.get(start_url)
for i in range(1,50):
	for j in s[0:]:
		try:
			urls[m]=wait.until(lambda x:x.find_element_by_xpath('//*[@id="b_results"]/li['+str(j)+']/h2/a').get_attribute("href"))
			print urls[m]
			m=m+1
		except Exception as e:
			e.message
	print i
	try:
		ActionChains(driver).click(wait.until(lambda x: x.find_element_by_css_selector("#b_results > li.b_pag > nav > ul > li:nth-child(7) > a"))).perform()
	except Exception as e:
		continue
print m
with open("urls.txt","a+") as f:
	for url in urls[0:]:
		f.write(str(url))
		f.write('\n')
f.close()
driver.quit()