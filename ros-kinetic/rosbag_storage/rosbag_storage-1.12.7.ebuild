# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This is a set of tools for recording from and playing back ROS
    message without relying on the ROS client library."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosbag_storage/1.12.7-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rostime
    ros-kinetic/roscpp_serialization
    ros-kinetic/roslz4
    ros-kinetic/roscpp_traits
    ros-kinetic/cpp_common
    dev-libs/boost
    app-arch/bzip2
    dev-libs/console_bridge
"
DEPEND="
    ros-kinetic/rostime
    ros-kinetic/roscpp_serialization
    ros-kinetic/roslz4
    ros-kinetic/roscpp_traits
    ros-kinetic/cpp_common
    dev-libs/boost
    app-arch/bzip2
    dev-libs/console_bridge
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