5.3.0 (2018-8-14)
---------------------------------
- Renamed AssemblyState.msg to RobotAssemblyState.msg
- Added error strings to MotionCommand.action
- Made TackingOptions.msg fields more readable

5.2.0 (2018-4-16)
---------------------------------
- Added interaction control and state messages
- Added camera settings and control messages
- Added endpoint names array messages
- Modified IO configuration messages
- Added intera_motion_msgs package for motion_interface
- Modified eletrical gripper xacro for gazebo

5.1.0 (2017-3-27)
---------------------------------
- Moved to Apache 2.0 license
- Added Contribution Guidelines
- Updates to Inverse Kinematics service to determine if endpoint requested is missing
- Updates to Forward Kinematics service to determine if requested position is in collision

5.0.4 (2016-12-06)
---------------------------------
- Initial release of intera_common intera_core_msgs intera_tools_description packages
- See intera_core_msgs API Docs:
  https://rethinkrobotics.github.io/intera_sdk_docs/5.0.4/intera_core_msgs/html/index-msg.html
- intera_core_msgs package contains all messages required to communicate with an Intera robot
- intera_tools_description is a package for urdf's & meshes for tools like the rethink electric gripper or controller box
- intera_common is a metapackage for intera_core_msgs and intera_tools_description
