# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Demo nodes to demonstrate the usage of the grid map library."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ethz-asl/grid_map-release/archive/release/indigo/grid_map_demos/1.4.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/geometry_msgs
    ros-indigo/grid_map_msgs
    ros-indigo/grid_map_ros
    ros-indigo/grid_map_loader
    ros-indigo/roscpp
    ros-indigo/grid_map_visualization
    ros-indigo/grid_map_cv
    ros-indigo/sensor_msgs
    ros-indigo/cv_bridge
    ros-indigo/grid_map_rviz_plugin
"
DEPEND="${RDEPEND}
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}