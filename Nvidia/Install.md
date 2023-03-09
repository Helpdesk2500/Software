！！！！！！！安装之前把bios里面的SECURE BOOT关闭一下！！！！！！！

对于显卡的安装有很多办法  我这里用的方式很简单 成功率很高（仅限于我个人来说成功率很高）

先更新系统源以及包

sudo apt update

sudo apt upgrade

sudo apt-get install nvidia- （在输入nvidia-后我们按TAB输入Y可以看到我们的源所包括的所有的驱动版本）

![image](https://raw.githubusercontent.com/Helpdesk2500/Image/main/nvidia.jpg)

我这里默认都装sudo apt-get install nvidia-driver-435 (我不装高版本防止和内核不兼容有问题）

安装完成之后重启电脑输入nvidia-smi

![image](https://raw.githubusercontent.com/Helpdesk2500/Image/main/nvidia2.jpg)

有这个提示即成功

这个连接里面有另外两种安装方式 我这种不成功可以换方式尝试

https://blog.csdn.net/Perfect886/article/details/119109380
