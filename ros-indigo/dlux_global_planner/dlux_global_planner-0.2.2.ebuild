# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Plugin based global planner implementing the nav_core2::GlobalPlanner inter[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/locusrobotics/robot_navigation-release/archive/release/indigo/${PN}/0.2.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/nav_2d_msgs
	ros-indigo/nav_2d_utils
	ros-indigo/nav_core2
	ros-indigo/nav_grid
	ros-indigo/nav_grid_pub_sub
	ros-indigo/nav_msgs
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/visualization_msgs
	test? ( ros-indigo/roslint )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
