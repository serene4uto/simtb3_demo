#!/bin/bash

cd /workspaces/simtb3_demo/simtb3_ws
source /opt/ros/iron/setup.bash
source install/setup.bash


export DISPLAY=:0
ros2 launch simtb3_robot sim_bringup.launch.py


