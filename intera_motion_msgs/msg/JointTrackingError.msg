# This message will be published from TrackingErrorPlugin.
# It contains the joint-space tracking error data for diagnostics.
Header header

# ID for the trajectory.
uint32 trajectory_id

# Reference time since start of trajectory in seconds.
float64 trajectory_time

# name associated with each element for the vectors in this message
string[] joint_names

# position_error = position_measured - position_command
# units:  radians
float64[] position_error

# velocity_error = velocity_measured - velocity_command
# units:  radians per second
float64[] velocity_error

# joint position that is commanded for each joint, in radians
float64[] position_command

# joint velocity that is commanded for each joint, in radians per second
float64[] velocity_command
