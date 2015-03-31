uint32              sequence_id
uint32              id       # target end effector id
float32             mass     # in kg
geometry_msgs/Point com      # center of mass in m relative to the gripper frame
Inertia             inertia  # in kg-m^2 in the gripper frame translated to the com
