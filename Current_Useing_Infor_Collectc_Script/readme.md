# Current_Useing_Infor_Collectc_Script
使用：python Information_Collect url


前段时间写的infor脚本不是很满意，太臃肿，这次就精简了下，具体漏洞具体扫描器实施

脚本主要实现功能

1.ip获取

2.whois

3.windows  Linux主机判别

4.端口扫描自己的脚本效果不好，就注释了

5.http://whatweb.bugscaner.com/  在线识别cms

6.输出提示 手动使用AngelSword框架检查漏洞

7.
CTF中4个常用脚本，

其中将一个iis短文件扫描脚本改写了下

/.git/  /.svn/entries泄露  自己写的简单判别函数

源文件目录，自己写了个简单的脚本遍历

8.
目录爆破（只嵌入了目录的爆破，其他文件路径的爆破没有添加到文件中）

9.
输出接下来的提示信息，也是主要做的，很重要

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


