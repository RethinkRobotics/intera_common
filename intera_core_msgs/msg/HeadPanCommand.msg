float32 target              # radians for target, 0 str
float32 speed_ratio         # Percentage of max speed [0-1]
#
  float32 MAX_SPEED_RATIO = 1.0
  float32 MIN_SPEED_RATIO = 0.0
#
uint8   pan_mode  # set to one of constants below to change pan mode
# pan_mode possible states
  uint8   SET_PASSIVE_MODE = 0
  uint8   SET_ACTIVE_MODE = 1
  uint8   SET_ACTIVE_CANCELLATION_MODE = 2
  uint8   NO_MODE_CHANGE = 3
#
