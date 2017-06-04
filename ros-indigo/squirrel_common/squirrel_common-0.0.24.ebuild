# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Definitions for mesages, services and actions. Startup packages for the robots"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/squirrel-project/squirrel_common-release/archive/release/indigo/squirrel_common/0.0.24-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/robotino_description
    ros-indigo/robotino_msgs
    ros-indigo/softhand_description
    ros-indigo/squirrel_3d_localizer_msgs
    ros-indigo/squirrel_3d_mapping_msgs
    ros-indigo/squirrel_dynamic_filter_msgs
    ros-indigo/squirrel_hri_msgs
    ros-indigo/squirrel_kclhand_msgs
    ros-indigo/squirrel_localizer_msgs
    ros-indigo/squirrel_manipulation_msgs
    ros-indigo/squirrel_mhand_msgs
    ros-indigo/squirrel_navigation_msgs
    ros-indigo/squirrel_object_perception_msgs
    ros-indigo/squirrel_person_tracker_msgs
    ros-indigo/squirrel_planning_knowledge_msgs
    ros-indigo/squirrel_prediction_msgs
    ros-indigo/squirrel_rgbd_mapping_msgs
    ros-indigo/squirrel_sketch_interface_msgs
    ros-indigo/squirrel_speech_msgs
    ros-indigo/squirrel_vad_msgs
    ros-indigo/squirrel_view_controller_msgs
    ros-indigo/squirrel_waypoint_msgs
"
DEPEND="${RDEPEND}
    dev-python/catkin
    ros-indigo/catkin
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
