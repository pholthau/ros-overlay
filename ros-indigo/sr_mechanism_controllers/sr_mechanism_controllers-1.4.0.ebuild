# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The sr_mechanism_controllers package contains different types of
     controller"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/shadow-robot/sr-ros-interface-release/archive/release/indigo/sr_mechanism_controllers/1.4.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/actionlib
    ros-indigo/angles
    ros-indigo/control_msgs
    ros-indigo/control_toolbox
    ros-indigo/controller_interface
    ros-indigo/controller_manager_msgs
    ros-indigo/pluginlib
    ros-indigo/realtime_tools
    ros-indigo/ros_ethercat_model
    ros-indigo/rosconsole
    ros-indigo/roscpp
    ros-indigo/sr_hardware_interface
    ros-indigo/sr_robot_msgs
    ros-indigo/sr_utilities
    ros-indigo/std_msgs
    ros-indigo/std_srvs
    ros-indigo/velocity_controllers
    ros-indigo/xmlrpcpp
"
DEPEND="${RDEPEND}
    dev-python/catkin
    ros-indigo/catkin
    ros-indigo/cmake_modules
    ros-indigo/rostest
    dev-libs/tinyxml
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

src_unpack() {
    default
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
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    if [[ ! -d ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages ]]; then
        mkdir -p ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages
    fi

    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
