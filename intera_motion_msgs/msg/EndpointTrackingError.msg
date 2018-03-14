# This message will be published from the TrackingController
# It contains the endpoint tracking error data for diagnostics.
Header header

# ID for the trajectory.
uint32 trajectory_id

# Reference time since start of trajectory in seconds.
float64 trajectory_time

# Name of the endpoint that is currently active (coordinate frame name)
string active_endpoint

# pose_error transforms from pose_command to pose_measured
# units: translation (meters) ; orientation (quaternion)
geometry_msgs/Pose pose_error

# twist_error = twist_measured) - twist_command
# units: linear (meters) ; angular (radians per second)
geometry_msgs/Twist twist_error

# pose that is commanded at the active_endpoint
# units: translation (meters) ; orientation (quaternion)
geometry_msgs/Pose pose_command

# twist that is commanded at the active_endpoint
# units: linear (meters) ; angular (radians per second)
geometry_msgs/Twist twist_command
