# This message will be published from ArmStateEstimator.
# It contains pose metrics information and their gradients.
# Each metric is normalized in the range of [0, 1], and
# a pose with higher numbers indicates it is a better pose
# in the sense of the metrics.
# The gradients of the metrics can be used to inform the user
# how to remedy the pose in the sense of the metric as well as
# to optimize the pose.

Header header

# the velocity manipulability measure weighted by joint limit distance
# it measures the capability of generating velocities
# in all different Cartesian directions
# while it goes to 0 when any of the joints is at its limit.
float64 velocityManipulability
float64[] velocityManipulabilityGradient

# an indicator for twisted poses (measured from J2 and J4 positions)
# it is 0 when J2 and J4 are at the limits.
float64 armTwist
float64[] armTwistGradient

# a measure for distances between each of different pairs of the links
# it decreases to 0 as any pair of two links are getting close to each other,
# (i.e., self-collision situation).
float64 collisionDistance
float64[] collisionDistanceGradient





