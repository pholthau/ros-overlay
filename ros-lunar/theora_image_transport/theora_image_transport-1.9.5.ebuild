# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Theora_image_transport provides a plugin to image_transport for
    transparently sending an image stream encoded with the Theora codec."
HOMEPAGE="http://www.ros.org/wiki/image_transport_plugins"
SRC_URI="https://github.com/ros-gbp/image_transport_plugins-release/archive/release/lunar/theora_image_transport/1.9.5-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/dynamic_reconfigure
    ros-lunar/pluginlib
    ros-lunar/rosbag
    ros-lunar/message_runtime
    ros-lunar/std_msgs
    ros-lunar/image_transport
    ros-lunar/cv_bridge
    libogg
    libtheora
"
DEPEND="
    ros-lunar/dynamic_reconfigure
    ros-lunar/pluginlib
    ros-lunar/rosbag
    ros-lunar/std_msgs
    ros-lunar/image_transport
    ros-lunar/message_generation
    ros-lunar/cv_bridge
    libogg
    libtheora
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
