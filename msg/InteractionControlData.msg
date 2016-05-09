# This message contains a variable to turn the interaction (impedance) control on or off.
# It also contains desired cartesian stiffness K and damping D values to be used.
# In the future, this will include a desired frame as well. Right now, all interaction
# control is done with respect to the base frame.

Header header
bool      interactionControlState

## Impedance Control Parameters
# Stiffness units are (N/m) and (Nm/rad) for the first and second three values
float64[6] K_Impedance
# Damping units are (Ns/m) and (Nms/rad) for the first and second three values
float64[6] D_Impedance
# NullSpace stiffness units are in (Nm/rad)
float64[] K_NullSpace

## Force Control Parameters
# Vector of desired forces to be regulated in (N) and (Nm)
float64[6] forceCommand

## Desired frame
geometry_msgs/Pose interactionFrame

## Mode Selection Parameters
# The possible interaction control modes are:
uint8 IMPEDANCE_MODE=1
uint8 FORCE_MODE=2
# Six dimensional vector that specifies the interaction control mode for each dimenstion.
# the control mode in each dimension.
uint8[6] interactionControlMode

# All 6 values in force and impedance parameter vectors have to be filled, independent of
# what mode is chosen for that dimension. In the case that a control mode is not used in
# a particular dimension, the corresponding parameters will be ignored.
