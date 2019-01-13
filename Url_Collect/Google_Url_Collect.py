#coding=utf-8
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
import time,random
from selenium import webdriver
import selenium.webdriver.support.ui as ui
from selenium.webdriver.common.keys import Keys
from selenium.common.exceptions import TimeoutException
#引入ActionChains鼠标操作类
from selenium.webdriver.common.action_chains import ActionChains
#start_url="https://www.google.com/search?q=inurl:login.do&ei=kf_sW9TEDOGs0PEP8LOW4A8&start=50&sa=N&ved=0ahUKEwiU0ZX10NXeAhVhFjQIHfCZBfw4PBDy0wMIhQE&biw=1034&bih=277"
#start_url="https://www.google.com/search?q=inurl:login.do&ei=YxXtW4qkLY-t0PEPvPmluAI&start=240&sa=N&ved=0ahUKEwjK4YTd5dXeAhWPFjQIHbx8CSc45gEQ8tMDCIMB&biw=1034&bih=277"
start_url="https://www.google.com/search?q=inurl:.action%3F&ei=5SvtW6nnB-jB0PEPlPO92Ac&start=50&sa=N&ved=0ahUKEwjp7aOY-9XeAhXoIDQIHZR5D3sQ8tMDCJsB&cshid=1542270136699000&biw=1366&bih=626"
urls=[]
# 6-25 8  25 9
s=[1,2,3,4,5,6,7,8,9,10,11]
driver=webdriver.Chrome(executable_path="D:/selenium/chrome/chromedriver.exe")
wait=ui.WebDriverWait(driver,20)
driver.get(start_url)
for n in range(1,40):
	for j in s[0:]:
		try:
			#//*[@id="b_results"]/li[1]/h2/a 国际版本
			#print wait.until(lambda x:x.find_element_by_xpath('//*[@id="b_results"]/li['+str(j)+']/h2/a').get_attribute("href"))
			#urls[m]=wait.until(lambda x:x.find_element_by_xpath('//*[@id="b_results"]/li['+str(j)+']/h2/a').get_attribute("href"))
			#国内版本
			#rso > div > div > div:nth-child(1) > div > div > div.r > a:nth-child(1)
			#rso > div > div > div:nth-child(2) > div > div > div.r > a:nth-child(1)

			print wait.until(lambda x:x.find_element_by_xpath('//*[@id="rso"]/div/div/div['+str(j)+']/div/div/div[1]/a[1]').get_attribute("href"))
			urls.append(wait.until(lambda x:x.find_element_by_xpath('//*[@id="rso"]/div/div/div['+str(j)+']/div/div/div[1]/a[1]').get_attribute("href")))
		except Exception as e:
			e.message
	time.sleep(random.randint(3,5))
	try:  #nav > tbody > tr > td:nth-child(8) > a
	#nav > tbody > tr > td:nth-child(8) > a
		ActionChains(driver).click(wait.until(lambda x: x.find_element_by_css_selector('#nav > tbody > tr > td:nth-child(9) > a'))).perform()
	except Exception as e:
		e.message
with open("urlss.txt","a+") as f:
	for url in urls[0:]:
		f.write(str(url))
		f.write('\n')
f.close()
driver.quit()