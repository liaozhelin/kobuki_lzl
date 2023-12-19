# kobuki堆栈启动文档

### 一.功能包主要节点启动

 1.底盘kobuki节点启动（驱动底盘电机/odom）

```
roslaunch kobuki_node minimal.launch
```

 2.RGB-D相机启动（LeTMC-520）最好插在USB3.0的口上

```
cd astra_ws
source devel/setup.bash
roslaunch astra_camera astrapro.launch
```

 3.激光雷达启动(A1M8)

```
cd rplidar_ws
source devel/setup.bash
roslaunch rplidar_ros rplidar_a1.launch
```

### 二.环境部署

1. 树莓派部署：

   > https://old-releases.ubuntu.com/releases/focal/ 

   ![image-20231211144905244](https://raw.githubusercontent.com/liaozhelin/picgo/master/picpath3/image-20231211144905244.png)

2. 超频及系统配置：

   > https://qengineering.eu/install-ubuntu-20.04-on-raspberry-pi-4.html

   默认账户密码：ubuntu-ubuntu 要等一两分钟后再登录,图形化没加载出来前登录是一直提示账户错误。

3. raspiberry端中文乱码不显示

   ```
   sudo locale-gen zh_CN.GB18030
   ```

4. 安装SSH工具

   ```
   sudo apt update
   sudo apt install openssh-server
   sudo systemctl status ssh
   sudo ufw allow ssh
   ```

5. 手动安装kobuki的noetic节点：

   **参考：**

   > https://blog.csdn.net/weixin_43563233/article/details/113046351

   > https://github.com/yujinrobot/kobuki/issues/427#issuecomment-779439686

