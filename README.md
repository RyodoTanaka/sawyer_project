# Welcome to sawyer_project
This package provides following packages.  


- sawyer_robot
- sawyer_simulator
- sawyer_moveit
- intera_sdk
- intera_common
- ompl
- moveit

# Installation
### 1. Create your catkinized workspace
```bash
mkdir <catkin_ws>/src -p
```

### 2. Clone this package
```bash
cd <catkin_ws>/src
git clone https://github.com/RyodoTanaka/sawyer_project.git
```

### 3. Run the install script
```bash
cd <catkin_ws>
source src/sawyer_project/kinetic_install.bash
```

# For Developper
You can modify the source of OMPL, and can work with Moveit!.  
But you have a limitation... That is...
### OMPL versin must be 1.2.0 or 1.2.1

# Memo
### SDK Mode
1. Push the left side of the robot button.
2. If there is "SDK" word on the robot monitor, it's working.

### Intera Mode
1. Plug a keyboard to the robot.
2. Push the start button, and keep pushing the F11 button.
3. If there is "Intera" word on the robot monitor, it's working.

### Gripper Calibration
1. Run the Sawyer robot and your server PC.
2. Run the `intera.sh` script.
3. Run ipython, and do following.
  ```python
  import rospy
  from intera_interface import Gripper
  
  rospy.init_node("example")
  gr = Gripper()
  gr.calibrate()
  ```
4. If the gripper start to move open & close, that means the robot starts the calibration.

