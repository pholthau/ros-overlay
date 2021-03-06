# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="These are regression tests for the osm_cartography and\
	 route_network [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-geographic-info/open_street_map-release/archive/release/lunar/${PN}/0.2.4-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/geodesy
	ros-lunar/geographic_msgs
	ros-lunar/osm_cartography
	ros-lunar/route_network
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
