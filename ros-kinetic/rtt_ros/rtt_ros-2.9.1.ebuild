# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides an RTT plugin to add a ROS node to the RTT process,\
[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/orocos-gbp/${PN}_integration-release/archive/release/kinetic/${PN}/2.9.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ocl
	ros-kinetic/roslib
	ros-kinetic/rospack
	ros-kinetic/rostime
	ros-kinetic/rtt
	dev-libs/libxml2
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
