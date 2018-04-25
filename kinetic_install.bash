#!/bin/bash

SCRIPT_PATH=$( dirname ${BASH_SOURCE:-$0} )
CURRENT=$(pwd)

cd $CURRENT
wstool init src
wstool merge -t src src/sawyer_project/.kinetic_depends.rosinstall
wstool up -t src
wstool merge -t src src/sawyer_moveit/sawyer_moveit.rosinstall
wstool merge -t src src/sawyer_robot/sawyer_robot.rosinstall
wstool merge -t src src/sawyer_simulation/sawyer_simulation.rosinstall
wstool up -t src
rosdep update
rosdep install -i -y -r --from-paths src
cd $CURRENT
catkin b
echo "### SawYer Project Installation Finished !! ###"
