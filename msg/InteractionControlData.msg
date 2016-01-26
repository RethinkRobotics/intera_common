# This message contains a variable to turn the interaction (impedance) control on or off.
# It also contains desired cartesian stiffness K and damping D values to be used.
# In the future, this will include a desired frame as well. Right now, all interaction
# control is done with respect to the base frame.

Header header
bool      interactionControlState
# Stiffness units are (N/m) and (Nm/rad) for the first and second three values
float64[] K_Impedance
# Damping units are (Ns/m) and (Nms/rad) for the first and second three values
float64[] D_Impedance
