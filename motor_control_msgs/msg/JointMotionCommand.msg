Header header

# Joint position target (contains names and positions for all joints)
MotorControlMsgs/JointPosition target
float64[] velocities
float64[] accelerations

# Speed ratio (1.0 is max speed)
float64 speed_ratio

# set to true if this is a point on a trajectory and should just be passed
# directly to the motor controller.  speed ratio will be ignored.
bool is_trajectory