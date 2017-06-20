Header header

# Joint position target (contains names and positions for all joints)
motor_control_msgs/JointPosition target
float64[] velocities
float64[] accelerations

# if is_trajectory: speed ratio == time rate of the trajectory segment
# else: speed ratio of 1.0 corresponds to max speed at each joint
float64 speed_ratio

# set to True if this command is part of a trajectory
bool is_trajectory

# a unique number that is assigned to each distinct trajectory
uint32 trajectory_id

# Time since the trajectory started, in seconds. Only used if is_trajectory
float64 trajectory_time
