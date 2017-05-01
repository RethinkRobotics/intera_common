# Representation of a waypoint returned during path interpolation
# Does not include extra options

# Desired joint positions
float64[] joint_positions

# Name of the endpoint that is currently active
string active_endpoint

# Cartesian pose
geometry_msgs/Pose pose

int32 segment_index
float64 time

