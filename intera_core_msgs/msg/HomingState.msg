# This holds the homing state for each movable joint on the robot.
# A joint is in the HOMING state when a HomingCommand message enables
# homing and the joint is not yet homed.
# Joints that do not need homing are always in the HOMED state.
string[] name
int32[]  state
# Valid homing states:
int32 HOMED=0
int32 HOMING=1
int32 NOT_HOMED=2

