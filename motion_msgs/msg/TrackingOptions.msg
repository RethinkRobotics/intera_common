# Minimum trajectory tracking time rate:  (default = less than one)
motor_control_msgs/OptionalFloat min_time_rate

# Maximum trajectory tracking time rate:  (1.0 = real-time = default)
motor_control_msgs/OptionalFloat max_time_rate

# How quickly to change the tracking time rate
motor_control_msgs/OptionalFloat time_rate_accel

# How close (in rad) each joint should be to the final goal
float64[] goal_joint_tolerance

# Settling time after reaching the end of the trajectory
motor_control_msgs/OptionalFloat goal_time_tolerance
