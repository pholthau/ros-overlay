# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package provides ROS specific hooks for stage"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/stage_ros-release/archive/release/lunar/stage_ros/1.8.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/nav_msgs
    ros-lunar/std_srvs
    ros-lunar/roscpp
    ros-lunar/std_msgs
    ros-lunar/sensor_msgs
    ros-lunar/geometry_msgs
    ros-lunar/tf
    ros-lunar/stage
    boost
"
DEPEND="
    ros-lunar/nav_msgs
    ros-lunar/std_srvs
    ros-lunar/roscpp
    ros-lunar/std_msgs
    ros-lunar/sensor_msgs
    ros-lunar/rostest
    ros-lunar/geometry_msgs
    ros-lunar/tf
    ros-lunar/stage
    boost
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
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/lunar" || die
}
