#!/bin/bash

source /opt/ros/noetic/setup.bash
source /home/ubuntu/kobuki_ws/devel/setup.bash

roslaunch kobuki_node minimal.launch &
sleep 4
echo "launch kobuki_node successfully"

roslaunch pepperl_fuchs_r2000 r2000.launch &
sleep 4
echo "launch pepperl_fuchs_r2000 successfully"

roslaunch astra_camera astra_pro.launch &
sleep 4
echo "launch astra_camera successfully"

roslaunch turtlebot_teleop joy.launch &
sleep 4
echo "launch turtlebot_teleop joy"

wait 
exit 0
