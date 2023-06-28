intera_common
==============

Common repository for Intera messages, and common end effector URDF & meshes the
Intera robots from Rethink Robotics

Code & Tickets
--------------

+-----------------+-------------------------------------------------------------------------------+
| Documentation   | http://sdk.rethinkrobotics.com/intera/                                        |
+-----------------+-------------------------------------------------------------------------------+
| Issues          | https://github.com/RethinkRobotics/intera_common/issues                       |
+-----------------+-------------------------------------------------------------------------------+
| Contributions   | https://github.com/RethinkRobotics/intera_common/blob/master/CONTRIBUTING.md  |
+-----------------+-------------------------------------------------------------------------------+

intera_common Repository Overview
---------------------------------

::

     .
     |
     +-- intera_common/             intera_common metapackage
     |
     +-- intera_core_msgs/          messages and services for communication with Intera robots
     |   +-- action/
     |   +-- msgs/
     |   +-- srvs/
     |
     +-- intera_motion_msgs/        package containing intera motion command action and trajectory messages
     |   +-- action/
     |   +-- msg/
     |
     +-- intera_tools_description/  urdf and meshes describing end effectors
     |   +-- urdf/
     |   +-- meshes/
     |
     +-- motor_control_msgs/        package containing joint motion commands, collisions, debugs and other messages
     |   +-- msg/


Other Intera Repositories
-------------------------

+------------------+-----------------------------------------------------+
| intera_sdk       | https://github.com/RethinkRobotics/intera_sdk       |
+------------------+-----------------------------------------------------+

Latest Release Information
--------------------------

http://sdk.rethinkrobotics.com/intera/Release-Changes
