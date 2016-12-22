Header header

bool      interactionControlActive
uint8[]   interactionControlMode

## Impedance Control Parameters
float64[] K_Impedance
float64[] D_Impedance
float64[] K_NullSpace

## Force Control Parameters
# Vector of desired forces to be regulated in (N) and (Nm)
float64[] forceCommand
# Vector of flags indicating whether motion bounds are reached during force control {false,true}
bool[]    poseLimitReached
bool[]    velocityLimitReached

## Internal states
geometry_msgs/Pose poseActual
geometry_msgs/Pose poseReference

float64[]         forceDesired
float64[]         torquesImpedance
float64[]         torquesNullSpaceDesired
float64[]         torquesNullSpaceProjected
float64[]         quatError
float64[]         torquesCollisionAvoidance
float64[]         endptVelocityActualFiltered
float64[]         jointPosition
float64           QPoutput
