# Ratio of max allowed joint speed : max planned joint speed (from 0.0 to 1.0)
float64 max_joint_speed_ratio

# Joint tracking tolerances before slowdown heuristic is used. In radians.
float64[] joint_tolerances

# Maximum linear speed of endpoint (for cartesian paths). m/s.
float64 max_linear_speed

# Maximum linear acceleration of endpoint (for cartesian paths). m/s^2.
float64 max_linear_accel

# Maximum rotational speed of endpoint (for cartesian paths). rad/s.
float64 max_rotational_speed

# Maximum rotational acceleration of endpoint (for cartesian paths). rad/s^2.
float64 max_rotational_accel

# Maximum accelerations for each joint, for joint paths. rad/s^2.
float64[] max_joint_accel

# Optional waypoint label
string label
