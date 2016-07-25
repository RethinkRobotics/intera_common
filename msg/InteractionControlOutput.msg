## InteractionControlOutput.msg ##
# Message to communicate the internal state of the interaction controller
# including whether the controller is active, current impedence
# parameters, and the forces that the interaction controler
# is currently commanding at the active endpoint.

Header header

bool      interactionControlState

## Impedance Control Parameters
float64[] K_Impedance
float64[] D_Impedance

## Force Control Parameters
# Vector of forces (wrench) (N and Nm) that is commanded by the interaction controller
# for the active endpoint.
float64[] activeEndpointForceCommand
