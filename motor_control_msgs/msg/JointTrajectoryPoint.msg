float64[] angles

# OPTIONAL PARAMETERS

# NOTE: If you add a vector that assumes the same order as names, you MUST
# update the reorderTrajectoryPoint function in JointTrajectoryWithLimits!

# If you already know the time you want between points fill this in
# This is time from the start of the whole trajectory, not the last
# point!
float64 timeFromStart

# Ignored if the value is zero or less.
float64[] maxAccelerations

string label

# If left at 0, will default to 1.0
float64 speedRatio
# If left at 0, will be ignored
float64 euclideanTolerance
# If left at 0, will be ignored
float64 angularTolerance
# If left empty, will be ignored
float64[] jointTolerances

# If this is enabled for a point, the joint trajectory will complete
# successfully  if one of the guarded conditions is fulfilled.
bool isGuarded

# Conditions on which the guarded trajectory will exit.
# This is a bitmask for which multiple conditions can be set.
#
# NOTE: These values must be kept synchronized with the equivalent
# parameters in CartesianWaypointData for now.

uint8 GUARDED_EXIT_CONDITION_CONTACT  = 1
uint8 GUARDED_EXIT_CONDITION_PATH_END = 2
uint8 GUARDED_EXIT_CONDITION_GRIPPING = 4

uint8 guardedSuccessCondition
uint8 guardedFailureCondition

# Set to check the distance from a line rather than a specific point.
float64 euclideanLineTolerance
geometry_msgs/Point lineStart
geometry_msgs/Point lineEnd

# This is the speed at which tolerances decrease coming into this point.
# Let point i have euclidean tolerance e an tolerance speed s, and let
# the time from point i - 1 to point i be t.  The tolerance of the joint
# trajectory right after point i - 1 will be
# e + s * t
# If not filled in a default that grows with the speed of the trajectory
# will be used.
OptionalFloat euclideanToleranceSpeed
OptionalFloat angularToleranceSpeed