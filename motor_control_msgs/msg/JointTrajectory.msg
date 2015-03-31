string[] names
JointTrajectoryPoint[] waypoints

# OPTIONAL PARAMETERS

# NOTE: If you add a vector that assumes the same order as names, you
# MUST update the reorderTrajectory function in JointTrajectoryWithLimits!

# We will wait this long at the end before giving up.  If not filled in,
# we will wait forever.
OptionalFloat maxPauseTime

# If we cannot reach the tolerance on the last point on the trajectory,
# we will return an error if we are not within at least these tolerances
# after maxPauseTime.  If left at 0, no error will be returned.
float64 maxAcceptableEuclideanTolerance
float64 maxAcceptableAngularTolerance
float64[] maxAcceptableJointTolerances

# If we are outside tolerances, we reduce the speed with which we are
# following the joint trajectory.  We will not reduce the speed below
# this fraction of the commanded speed.  If left at zero, the robot may
# appear to pause when out of tolerances.  If 1 or greater, the robot
# will not slow down at all when out of tolerances.
OptionalFloat minSlowDownFactor

# The rate at which we slow down to stay within tolerances.  If we
# are out of tolerances and traveling a fraction f of the
# commanded speed, on the next time step, we will slow down to a fraction
# f - trackingErrorAcceleration * deltaT
# where deltaT is the time between robust controller calls (0.01s as of this
# writing).  If we are within tolerances and traveling a fraction f of the
# commanded speed, we will speed up to a fraction
# f + trackingErrorAcceleration * deltaT
# If left at zero, we will use a default.
float64 trackingErrorAcceleration

OptionalBool enableIntegralDuringTrajectory

TrajectoryParameterizationType[] parameterizationTypes

# Contact confidence threshold, 0.0 - 1.0
# If not set 0.5 is used.
OptionalFloat contactConfidenceThreshold


