# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="octomap_ros provides conversion functions between ROS and OctoMap\'s native[...]"
HOMEPAGE="http://ros.org/wiki/octomap_ros"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.4.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/octomap
	ros-melodic/octomap_msgs
	ros-melodic/sensor_msgs
	ros-melodic/tf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
