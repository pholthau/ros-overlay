# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Knowledge messages for adding and updating the model in the SQUIRREL knowledge b"
HOMEPAGE="http://www.squirrel-project.eu"
SRC_URI="https://github.com/squirrel-project/squirrel_common-release/archive/release/indigo/squirrel_planning_knowledge_msgs/0.0.24-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_msgs
	ros-indigo/message_runtime
	ros-indigo/sensor_msgs
	ros-indigo/squirrel_object_perception_msgs
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

