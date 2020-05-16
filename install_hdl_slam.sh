#!/bin/bash

source /opt/ros/$(ls /opt/ros)/setup.bash

# create workspace
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace
cd ~/catkin_ws
catkin build

# clone hdl_slam
cd ~/catkin_ws/src
git clone https://github.com/koide3/hdl_graph_slam
cd ~/catkin_ws
catkin build -DCMAKE_BUILD_TYPE=Release
