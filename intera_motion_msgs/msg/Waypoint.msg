# Representation of a waypoint used by the motion controller

# Desired joint positions
# For Cartesian segments, the joint positions are used as nullspace biases
float64[] joint_positions

# Name of the endpoint that is currently active
string active_endpoint

# Cartesian pose
# This is not used in trajectories using joint interpolation
geometry_msgs/PoseStamped pose

# Waypoint specific options
# Default values will be used if not set
# All waypoint options are applied to the segment moving to that waypoint
WaypointOptions options
