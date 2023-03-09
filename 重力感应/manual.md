有一部分UBUNTU的机器 会有重力感应的问题  屏幕旋转无法控制

第一种办法: 可以通过设置来锁定屏幕

![image](https://raw.githubusercontent.com/Helpdesk2500/Image/main/%E9%87%8D%E5%8A%9B.jpg)

第二种办法: 

$ xrandr -o left   //向左旋转90度

$ xrandr -o right //向右旋转90度

$ xrandr -o inverted //上下翻转

$ xrandr -o normal //回到正常角度

缺点：每次开机都要改一次  如果有兴趣的用户可以自己写一个自动化脚本每次开机自己修改 我就不说明了太长了

第三种办法: 涉及到修改显示器的配置文件  一般也不适用  就尝试前两种即可
