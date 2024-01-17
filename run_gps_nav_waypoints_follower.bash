#!/bin/bash

cd /workspaces/simtb3_demo/simtb3_ws
source /opt/ros/iron/setup.bash
source install/setup.bash

ros2 launch simtb3_navigation gps_nav_waypoints_follower.launch.py
