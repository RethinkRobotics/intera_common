# The duration of the reference trajectory, as originally planned
float64 planned_duration

# The measured duration of the trajectory, as executed
float64 measured_duration

# Minimum commanded angle during trajectory for each joint
float64[] min_angle_command

# Maximum commanded angle during trajectory for each joint
float64[] max_angle_command

# Peak speed command = max(abs(reference velocity)) for each joint
float64[] peak_speed_command

# Peak accel command = max(abs(reference acceleration)) for each joint
float64[] peak_accel_command

# Peak jerk command = max(abs(reference jerk)) for each joint
float64[] peak_jerk_command

# Minimum trajectory time rate observed
float64 min_time_rate

# Maximium trajectory time rate observed
float64 max_time_rate

# Max joint position error = max(abs(position error)) for each joint
float64[] max_position_error

# Max joint velocity error = max(abs(velocity error)) for each joint
float64[] max_velocity_error
