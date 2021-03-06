# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Driver file descriptions for P2OS/ARCOS robot"
HOMEPAGE="http://ros.org/wiki/p2os_driver"
SRC_URI="https://github.com/allenh1/p2os-release/archive/release/lunar/${PN}/2.1.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/diagnostic_updater
	ros-lunar/geometry_msgs
	ros-lunar/kdl_parser
	ros-lunar/message_runtime
	ros-lunar/nav_msgs
	ros-lunar/p2os_msgs
	ros-lunar/roscpp
	ros-lunar/std_msgs
	ros-lunar/tf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
