# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="p"
HOMEPAGE="http://ros.org/wiki/pr2_mechanism_model"
SRC_URI="https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/indigo/pr2_mechanism_model/1.8.16-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/angles
	ros-indigo/hardware_interface
	ros-indigo/kdl_parser
	ros-indigo/pluginlib
	ros-indigo/pr2_hardware_interface
	ros-indigo/roscpp
	ros-indigo/urdf
	dev-libs/urdfdom
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/rostest
	ros-indigo/rosunit
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

