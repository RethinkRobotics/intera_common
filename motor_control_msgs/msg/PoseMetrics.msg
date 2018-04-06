# This message will be published from ArmStateEstimator.
# It contains pose metrics information and their gradients.
# Each metric is normalized in the range of [0, 1], and
# a pose with higher numbers indicates it is a better pose
# in the sense of the metrics.
# The gradients of the metrics can be used to inform the user
# how to remedy the pose in the sense of the metric as well as
# to optimize the pose. Note that the gradients are with respect
# to the joint angles, (in order J0 ... J6).

Header header

# The velocity manipulability measure weighted by joint limit distance.
# It measures the capability of generating velocities
# in all different Cartesian directions
# while it goes to 0 when any of the joints is at its limit.
float64 velocityManipulability
float64[] velocityManipulabilityGradient

# An indicator for twisted poses (measured from J2 and J4 positions).
# It is 0 when J2 and J4 are at the limits.
float64 armTwist
float64[] armTwistGradient

# A measure for distances between each of different pairs of the links,
# which decreases to 0 as any pair of two links are getting close to each other,
# (i.e., self-collision situation).
float64 collisionDistance
float64[] collisionDistanceGradient

# A measure for the distance to joint limits for all the joints.
# An optimal pose maximizing this measure can increase the success rate
# in a pattern task.
float64 rangeOfMotion
float64[] rangeOfMotionGradient

# A measure of the joint effort that is left after compensating for gravity
# An optimal pose maximizing this measure uses less torques for gravity
# compensation, thus increasing the feasibility and motion speed for
# heavy-payload situations.
float64 jointEffort
float64[] jointEffortGradient
