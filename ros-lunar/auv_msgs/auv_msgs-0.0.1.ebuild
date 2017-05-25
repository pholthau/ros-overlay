# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package provides message types commonly used with Autonomous Underwater Vehicles"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/oceansystemslab/auv_msgs-release/archive/release/lunar/auv_msgs/0.0.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/sensor_msgs
    ros-lunar/geometry_msgs
    ros-lunar/message_runtime
    ros-lunar/std_msgs
    ros-lunar/geographic_msgs
"
DEPEND="
    ros-lunar/message_generation
    ros-lunar/geometry_msgs
    ros-lunar/std_msgs
    ros-lunar/sensor_msgs
    ros-lunar/geographic_msgs
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
