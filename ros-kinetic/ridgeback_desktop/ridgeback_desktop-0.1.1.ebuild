# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Packages for working with Ridgeback from a ROS desktop."
HOMEPAGE="http://wiki.ros.org/ridgeback_desktop"
SRC_URI="https://github.com/clearpath-gbp/${PN}-release/archive/release/kinetic/${PN}/0.1.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ridgeback_msgs
	ros-kinetic/ridgeback_viz
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
