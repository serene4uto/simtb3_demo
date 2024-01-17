#!/bin/bash

# Install necessary packages
sudo apt-get update
sudo apt-get install -y python3-pip
sudo apt-get install -y python3-tk

# Install Gazebo
curl -sSL http://get.gazebosim.org | sh

# Create a workspace
mkdir -p /workspaces/simtb3_demo/simtb3_ws/src
cd /workspaces/simtb3_demo/simtb3_ws/src
git clone https://github.com/serene4uto/simtb3.git
cd ..

# Install ROS2 dependencies
source /opt/ros/iron/setup.bash
rosdep install -y --from-paths src --ignore-src

# Build the source code
colcon build --symlink-install
