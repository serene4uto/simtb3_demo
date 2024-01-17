#!/bin/bash

sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get install -y python3-pip
sudo apt-get install -y python3-tk
sudo apt-get install -y curl
sudo apt-get install -y ros-iron-turtlebot3*

# Install Gazebo
curl -sSL http://get.gazebosim.org | sh

# Create a workspace
mkdir -p /workspaces/simtb3_demo/simtb3_ws/src
cd /workspaces/simtb3_demo/simtb3_ws/src
git clone https://github.com/serene4uto/simtb3.git
cd ..

source /opt/ros/iron/setup.bash

# Install ROS2 dependencies
rosdep install -y --from-paths src --ignore-src

# Build the source code
colcon build --symlink-install