# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The ROS client library in C++."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/crystal/${PN}/0.6.0-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/ament_cmake
	ros-crystal/builtin_interfaces
	ros-crystal/rcl
	ros-crystal/rcl_interfaces
	ros-crystal/rcl_yaml_param_parser
	ros-crystal/rmw
	ros-crystal/rmw_implementation
	ros-crystal/rosgraph_msgs
	ros-crystal/rosidl_generator_cpp
	ros-crystal/rosidl_typesupport_c
	ros-crystal/rosidl_typesupport_cpp
	test? ( ros-crystal/ament_cmake_gmock )
	test? ( ros-crystal/ament_cmake_gtest )
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
	test? ( ros-crystal/rmw )
	test? ( ros-crystal/rmw_implementation_cmake )
	test? ( ros-crystal/test_msgs )
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
