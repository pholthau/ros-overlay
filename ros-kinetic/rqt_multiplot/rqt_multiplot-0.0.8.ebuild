# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rqt_multiplot provides a GUI plugin for visualizing numeric values\
	in [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/anybotics/${PN}_plugin-release/archive/release/kinetic/${PN}/0.0.8-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rosbag
	ros-kinetic/roscpp
	ros-kinetic/rqt_gui
	ros-kinetic/rqt_gui_cpp
	ros-kinetic/variant_topic_tools
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	x11-libs/qwt:6
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
