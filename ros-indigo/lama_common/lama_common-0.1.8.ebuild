# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Utilities for the LaMa package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/lama-imr/lama_utilities-release/archive/release/indigo/lama_common/0.1.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/angles
	ros-indigo/geometry_msgs
	ros-indigo/laser_geometry
	ros-indigo/map_ray_caster
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

