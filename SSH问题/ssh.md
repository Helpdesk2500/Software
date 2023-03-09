用SSH 先安装服务

sudo apt-get install openssh-server

一般装完默认是开启SSH服务的  我们可以用命令查看

ps -e | grep ssh  或者   sudo service sshd status  （都可以看）

一般装完我们是不需要改任何文件  用户有不同的需求自己去改配置文件 

路径   /etc/ssh/sshd_config

如果有用户反馈SSH不能连接使用（原因就是22端口被拒绝  为什么是22端口   因为SSH的创始人就默认22端口）

修改配置文件

sudo vim /etc/ssh/sshd_config

里面找到#port 22 这一行 删除# 回车再加一行 port 10013（另加一行的端口选择多少  尽量选择10000往上  防止和本地端口冲突 具体电脑具体分析）

改完之后SSH链接改一下命令  

ssh -p 10013 用户名@IP

ssh 重启与关闭命令

sudo /etc/init.d/ssh stop   sudo /etc/init.d/ssh restart

![image](https://raw.githubusercontent.com/Helpdesk2500/Image/main/ssh.jpg)
