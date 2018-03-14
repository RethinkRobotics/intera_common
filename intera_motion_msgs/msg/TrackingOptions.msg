# Minimum trajectory tracking time rate:  (default = less than one)
bool     use_min_time_rate
float64  min_time_rate

# Maximum trajectory tracking time rate:  (1.0 = real-time = default)
bool     use_max_time_rate
float64  max_time_rate

# How quickly to change the tracking time rate
bool     use_time_rate_accel
float64  time_rate_accel

# How close (in rad) each joint should be to the final goal
float64[] goal_joint_tolerance

# Settling time after reaching the end of the trajectory
bool     use_goal_time_tolerance
float64  goal_time_tolerance
