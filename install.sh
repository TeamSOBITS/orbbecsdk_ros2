#!/bin/bash

echo "╔══╣ Install: Orbbecsdk ROS2 (STARTING) ╠══╗"


# Keep track of the current directory
DIR=`pwd`


sudo apt update

sudo apt install -y \
    curl \
    gnupg \
    lsb-release \
    libgflags-dev \
    nlohmann-json3-dev  \
    ros-${ROS_DISTRO}-image-transport \
    ros-${ROS_DISTRO}-image-transport-plugins \
    ros-${ROS_DISTRO}-compressed-image-transport \
    ros-${ROS_DISTRO}-image-publisher \
    ros-${ROS_DISTRO}-camera-info-manager \
    ros-${ROS_DISTRO}-diagnostic-updater \
    ros-${ROS_DISTRO}-diagnostic-msgs \
    ros-${ROS_DISTRO}-statistics-msgs \
    ros-${ROS_DISTRO}-backward-ros \
    libdw-dev

sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] \
http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/ros2.list'
sudo apt update

sudo /lib/systemd/systemd-udevd --daemon
cd orbbec_camera/scripts/
sudo bash install_udev_rules.sh
sudo udevadm control --reload-rules && sudo udevadm trigger

# Go back to previous directory
cd ${DIR}


echo "╚══╣ Install: Orbbecsdk ROS2 (FINISHED) ╠══╝"
