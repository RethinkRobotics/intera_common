# See KinematicsTools/JointTrajectoryWithLimits.h comment to parameterize() for
# an explanation of each of these.
int32 DEFAULT_PARAMETERIZATION_TYPE = 0  # Use the default type chosen via the parameter server.
int32 GIVEN_VELOCITIES_ENFORCE_CONSTRAINTS = 1
int32 GIVEN_VELOCITIES_DO_NOT_ENFORCE_CONSTRAINTS = 2
int32 CLAMPED_CUBIC_SPLINE = 4
int32 CLAMPED_CUBIC_SPLINE_ENFORCE_CONSTRAINTS = 5
int32 type