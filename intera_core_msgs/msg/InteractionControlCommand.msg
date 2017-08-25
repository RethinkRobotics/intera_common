# Message sets the interaction (impedance/force) control on or off
# It also contains desired cartesian stiffness K, damping D, and force values

Header header
bool      interaction_control_active

## Cartesian Impedance Control Parameters
# Stiffness units are (N/m) for first 3 and (Nm/rad) for second 3 values
float64[] K_impedance
# Force certain directions to have maximum possible impedance for a given pose
bool[] max_impedance
# Damping units are (Ns/m) for first 3 and (Nms/rad) for the second 3 values
float64[] D_impedance
# Joint Nullspace stiffness units are in (Nm/rad) (length == number of joints)
float64[] K_nullspace

## Parameters for force control or impedance control with force limit
# If in force mode, this is the vector of desired forces/torques
# to be regulated in (N) and (Nm)
# If in impedance with force limit mode, this vector specifies the
# magnitude of forces/torques (N and Nm) that the command will not exceed.
float64[] force_command

## Desired frame
geometry_msgs/Pose interaction_frame
string endpoint_name
# True if impedance and force commands are defined in endpoint frame
bool in_endpoint_frame

# Set to true to disable damping during force control. Damping is used
# to slow down robot motion during force control in free space.
# Option included for SDK users to disable damping in force control
bool disable_damping_in_force_control

# Set to true to disable reference resetting. Reference resetting is
# used when interaction parameters change, in order to avoid jumps/jerks.
# Option included for SDK users to disable reference resetting if the
# intention is to change interaction parameters.
bool disable_reference_resetting

## Mode Selection Parameters
# The possible interaction control modes are:
# Impedance mode: implements desired endpoint stiffness and damping.
uint8 IMPEDANCE_MODE=1
# Force mode: applies force/torque in the specified dimensions.
uint8 FORCE_MODE=2
# Impedance with force limit: impedance control while ensuring the commanded
# forces/torques do not exceed force_command.
uint8 IMPEDANCE_WITH_FORCE_LIMIT_MODE=3
# Force with motion bounds: force control while ensuring the current
# pose/velocities do not exceed forceMotionThreshold (currenetly defined in yaml)
uint8 FORCE_WITH_MOTION_LIMIT_MODE=4

# Specifies the interaction control mode for each Cartesian dimension (6)
uint8[] interaction_control_mode

# All 6 values in force and impedance parameter vectors have to be filled,
# If a control mode is not used in a Cartesian dimension,
# the corresponding parameters will be ignored.

## Parameters for Constrained Zero-G Behaviors
# Allow for arbitrary rotational displacements from the current orientation
# for constrained zero-G. Setting 'rotations_for_constrained_zeroG = True'
# will disable the rotational stiffness field which limits rotational
# displacements to +/- 82.5 degree.
# NOTE: it will be only enabled for a stationary reference orientation
bool rotations_for_constrained_zeroG
