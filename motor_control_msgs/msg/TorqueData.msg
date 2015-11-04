# This message will be published from VelocityController7DOF
# It contains measured and commanded (feedforward) torques that can be published at high frequencies.
# Currently, we are using this for collision detection.

Header header
string[]  name
float64[] measuredTorques
float64[] feedforwardTorques
