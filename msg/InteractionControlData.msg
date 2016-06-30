# This message contains a variable to turn the interaction (impedance) control on or off.
# It also contains desired cartesian stiffness K and damping D values to be used.

Header header
bool      interactionControlState

## Impedance Control Parameters
# Stiffness units are (N/m) and (Nm/rad) for the first and second three values
float64[] K_Impedance
# Damping units are (Ns/m) and (Nms/rad) for the first and second three values
float64[] D_Impedance
# NullSpace stiffness units are in (Nm/rad)
float64[] K_NullSpace

## Parameters for force control or impedance control with force limit
# If in force mode, this is the Vector of desired forces/torques
# to be regulated in (N) and (Nm)
# If in impedance with force limit mode, this vector specifies the
# magnitude of forces/torques (N and Nm) that the command will not exceed.
float64[] forceCommand

## Desired frame
geometry_msgs/Pose interactionFrame

## Mode Selection Parameters
# The possible interaction control modes are:
# Impedance mode implements desired endpoint stiffness and damping.
uint8 IMPEDANCE_MODE=1
# Force mode applies force/torque in the specified dimensions.
uint8 FORCE_MODE=2
# Impedance with force limit, does impedance control while ensuring the commanded
# forces/torques do not exceed the ones specified by absolute value of forceCommand.
uint8 IMPEDANCE_WITH_FORCE_LIMIT_MODE=3

# Six dimensional vector that specifies the interaction control mode for each dimenstion.
uint8[] interactionControlMode

# All 6 values in force and impedance parameter vectors have to be filled, independent of
# what mode is chosen for that dimension. In the case that a control mode is not used in
# a particular dimension, the corresponding parameters will be ignored.
