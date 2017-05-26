# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="ROS driver for miscellaneous sensors on NAO.
    Python bindings for camera, sonar and octomap
    C++: bindings for camera only (requires NAOqi to build)"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/naoqi_bridge-release/archive/release/kinetic/naoqi_sensors_py/0.5.5-0.tar.gz"

LICENSE="LGPL and Apache2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rospy
    ros-kinetic/naoqi_driver_py
    ros-kinetic/camera_info_manager_py
    ros-kinetic/octomap
    ros-kinetic/sensor_msgs
    ros-kinetic/camera_info_manager
    ros-kinetic/dynamic_reconfigure
    dev-libs/boost
"
DEPEND="
    ros-kinetic/naoqi_driver_py
    ros-kinetic/octomap
    ros-kinetic/camera_info_manager
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/octomap_msgs
    dev-libs/boost
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    echo ""
}

src_install() {
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}