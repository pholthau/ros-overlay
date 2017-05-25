# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The interactive_marker_tutorials package"
HOMEPAGE="http://ros.org/wiki/interactive_marker_tutorials"
SRC_URI="https://github.com/ros-gbp/visualization_tutorials-release/archive/release/lunar/interactive_marker_tutorials/0.10.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/tf
    ros-lunar/interactive_markers
    ros-lunar/roscpp
    ros-lunar/visualization_msgs
"
DEPEND="
    ros-lunar/tf
    ros-lunar/interactive_markers
    ros-lunar/roscpp
    ros-lunar/visualization_msgs
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
