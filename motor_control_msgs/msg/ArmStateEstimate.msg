# This message will be published from ArmStateEstimator
# It contains measured and filtered values for the arm state.

Header header
string[]  jointName
float64[] filteredPosition
float64[] filteredVelocity
float64[] filteredAcceleration
float64[] filteredTorque
