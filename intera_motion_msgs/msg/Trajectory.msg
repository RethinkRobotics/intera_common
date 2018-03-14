# Representation of a trajectory used by the engine and motion controller.

# optional label
string label

# Array of joint names that correspond to the waypoint joint_positions
string[] joint_names

# Array of waypoints that comprise the trajectory
Waypoint[] waypoints

# Trajectory level options
TrajectoryOptions trajectory_options