# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Generic Mechanism Controller Library"
HOMEPAGE="http://ros.org/wiki/robot_mechanism_controllers"
SRC_URI="https://github.com/pr2-gbp/pr2_controllers-release/archive/release/lunar/${PN}/1.10.15-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib
	ros-lunar/angles
	ros-lunar/control_msgs
	ros-lunar/control_toolbox
	ros-lunar/diagnostic_msgs
	ros-lunar/eigen_conversions
	ros-lunar/filters
	ros-lunar/geometry_msgs
	ros-lunar/kdl_parser
	ros-lunar/message_filters
	ros-lunar/message_runtime
	ros-lunar/pluginlib
	ros-lunar/pr2_controller_interface
	ros-lunar/pr2_controller_manager
	ros-lunar/pr2_controllers_msgs
	ros-lunar/pr2_mechanism_model
	ros-lunar/realtime_tools
	ros-lunar/roscpp
	ros-lunar/rospy
	ros-lunar/std_msgs
	ros-lunar/tf
	ros-lunar/tf_conversions
	ros-lunar/trajectory_msgs
	sys-devel/libtool
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
