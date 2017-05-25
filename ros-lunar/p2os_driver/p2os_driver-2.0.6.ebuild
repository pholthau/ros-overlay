# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Driver file descriptions for P2OS/ARCOS robot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/allenh1/p2os-release/archive/release/lunar/p2os_driver/2.0.6-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/nav_msgs
    ros-lunar/roscpp
    ros-lunar/std_msgs
    ros-lunar/kdl_parser
    ros-lunar/diagnostic_updater
    ros-lunar/geometry_msgs
    ros-lunar/tf
    ros-lunar/p2os_msgs
"
DEPEND="
    ros-lunar/nav_msgs
    ros-lunar/roscpp
    ros-lunar/diagnostic_updater
    ros-lunar/std_msgs
    ros-lunar/kdl_parser
    ros-lunar/tf
    ros-lunar/geometry_msgs
    ros-lunar/p2os_msgs
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
