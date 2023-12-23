#!/bin/bash

source devel/setup.bash

roslaunch kobuki_node minimal.launch &
sleep 2
echo "launch kobuki_node successfully"

roslaunch pepperl_fuchs_r2000 r2000.launch &
sleep 2
echo "launch pepperl_fuchs_r2000 successfully"

roslaunch astra_camera astra_pro.launch &
sleep 2
echo "launch astra_camera successfully"

roslaunch turtlebot_teleop joy.launch &
sleep 2
echo "launch turtlebot_teleop joy"

wait 
exit 0
