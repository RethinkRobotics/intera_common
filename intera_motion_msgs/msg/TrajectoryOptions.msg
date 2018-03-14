# Trajectory interpolation type
string CARTESIAN=CARTESIAN
string JOINT=JOINT
string interpolation_type

# True if the trajectory uses interaction control, false for position control.
bool interaction_control

# Interaction control parameters
intera_core_msgs/InteractionControlCommand interaction_params

# Allow small joint adjustments at the beginning of Cartesian trajectories.
# Set to false for 'small' motions.
bool nso_start_offset_allowed

# Check the offset at the end of a Cartesian trajectory from the final waypoint nullspace goal.
bool nso_check_end_offset

# Options for the tracking controller:
TrackingOptions tracking_options

# Desired trajectory end time, ROS timestamp
time end_time

# The rate in seconds that the path is interpolated and returned back to the user
# No interpolation will happen if set to zero
float64 path_interpolation_step
