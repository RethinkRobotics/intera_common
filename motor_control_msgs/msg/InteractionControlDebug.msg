Header header

bool      interactionControlActive
uint8[]   interactionControlMode

## Impedance Control Parameters
float64[] K_Impedance
float64[] D_Impedance
float64[] K_NullSpace
bool[] max_Impedance

## Force Control Parameters
# Vector of user-specified force commands in (N) and (Nm)
float64[] forceCommand
# Vector of flags indicating whether motion bounds are reached during force control {false,true}
bool[]    poseLimitReached
bool[]    velocityLimitReached

## Internal states
geometry_msgs/Pose poseActual
geometry_msgs/Pose poseReference

float64[]         forceDesired
float64[]         torquesInteraction
float64[]         torquesNullSpaceDesired
float64[]         torquesNullSpaceProjected
float64[]         quatError
float64[]         poseError
float64[]         velError
float64[]         torquesCollisionAvoidance
float64[]         endptVelocityActual
float64[]         endptVelocityActualFiltered
float64[]         jointPositionMeasured
float64[]         jointPositionCommand
float64           QPoutput
bool              disableDampingInForceControl
bool              disableReferenceResetting

## Rotational Stiffness Behavior Related Parameters
bool disableRotationalStiffnessField
float64[]         quatReferenceStitch
float64[]         quatErrorDelta
float64[]         quatErrorVecSum
float64[]         quatErrorVecTotal

## Parameters used for Arbitrary TCP Frames
float64           tipLength
string            endpointName
float64           betaEMAFilter
