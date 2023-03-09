先去官网下载安装包 下载x86格式

![image](https://raw.githubusercontent.com/Helpdesk2500/Image/main/%E6%90%9C%E7%8B%971.jpeg)

然后打开终端
先安装框架（因为搜狗输入法用的是FCITX的框架模式  默认的框架不支持）

sudo apt-get install fcitx-bin    
sudo apt-get install fcitx-table
运行结束之后打开 Lanuage support


![image](https://raw.githubusercontent.com/Helpdesk2500/Image/main/%E6%90%9C%E7%8B%972.jpg)

重启电脑

![image](https://raw.githubusercontent.com/Helpdesk2500/Image/main/%E6%90%9C%E7%8B%973.jpg)
![image](https://raw.githubusercontent.com/Helpdesk2500/Image/main/%E6%90%9C%E7%8B%974.jpg)

！！！！！！！！！！！！！！！！切记 去掉Only show Current Lanuage的勾选 不然找不到搜狗输入法！！！！！！！！！！！！！！！！！

找到搜狗输入法确定就可以了

一部分用户装完不能打中文  打开终端

sudo apt install libqt5qml5 libqt5quick5 libqt5quickwidgets5 qml-module-qtquick2
 
sudo apt install libgsettings-qt1

安装即可
