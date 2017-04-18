# Representation of a trajectory used by the engine and motion controller.

# optional label
string label

# Array of joint names that correspond to the waypoint joint_positions
string[] joint_names

# Array of waypoints that comprise the trajectory
motion_msgs/Waypoint[] waypoints

# Trajectory level options
motion_msgs/TrajectoryOptions trajectory_options