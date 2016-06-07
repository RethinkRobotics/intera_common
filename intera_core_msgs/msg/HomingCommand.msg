# This message is used to command the homing state of all joints on the robot.
# For each joint in the name array the corresponding value in the command
# sets the homing mode for that joint.
# MANUAL disengages the joint brake and puts the joint in a "gumby" mode.
# AUTO disengages the joint brake and automatically homes the joint.
# If a joint is already homed the command has no effect.
string[] name
int32[]  command
# Valid homing commands:
int32 MANUAL=1
int32 AUTO=2
# Invalid, value is used internally:
int32 NONE=0


