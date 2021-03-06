# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A recovery behavior that uses the sbpl lattice planner and the pose\
	fo[...]"
HOMEPAGE="http://wiki.ros.org/sbpl_recovery"
SRC_URI="https://github.com/ros-gbp/navigation_experimental-release/archive/release/lunar/${PN}/0.2.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/base_local_planner
	ros-lunar/costmap_2d
	ros-lunar/nav_core
	ros-lunar/pluginlib
	ros-lunar/pose_follower
	ros-lunar/roscpp
	ros-lunar/sbpl_lattice_planner
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
