## InteractionControlState.msg ##
# Internal state of the interaction controller including
# whether the controller is active, current impedence parameters,
# and the commanded endpoint forces by the interaction controller

Header header

bool      interaction_control_active

## Impedance Control Parameters
float64[] K_impedance
float64[] D_impedance

## Force Control Parameters
# Vector of forces (wrench) (N and Nm) commanded by the interaction controller
# for the endpoint.
float64[] endpoint_force_command

string endpoint_name
bool in_endpoint_frame
bool disable_damping_in_force_control
bool disable_reference_resetting

## Parameters for Constrained Zero-G Behaviors
# Please refer to InteractionControlCommand.msg for more details
bool rotations_for_constrained_zeroG