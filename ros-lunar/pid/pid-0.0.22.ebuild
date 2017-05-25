# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Launch a PID control node."
HOMEPAGE="http://wiki.ros.org/pid"
SRC_URI="https://github.com/AndyZe/pid-release/archive/release/lunar/pid/0.0.22-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/dynamic_reconfigure
    ros-lunar/message_runtime
    ros-lunar/std_msgs
    ros-lunar/roscpp
"
DEPEND="
    ros-lunar/message_generation
    ros-lunar/dynamic_reconfigure
    ros-lunar/std_msgs
    ros-lunar/roscpp
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
