# This message contains data related to tracking performance at the motion controller level
Header header

# name associated with each element for the vectors in this message
string[] joint_names

# (reference position) - (measured position) in radians
float64[] position_error

# (reference velocity) - (measured velocity) in radians per second
float64[] velocity_error

# Norm of the tracking error in radians
float64 position_error_norm

# Tracking lag in seconds (command point time - time at closest point on trajectory)
float64 tracking_time_lag

# Dimensionless play-back rate. 1.0 = planned, 0.5 = half speed, 2.0 = double speed
float64 tracking_time_rate

# Id for the next waypoint that we are moving towards
uint32 next_waypoint_id
