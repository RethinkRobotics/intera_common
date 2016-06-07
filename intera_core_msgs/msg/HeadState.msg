float32 pan
bool isTurning

# isBlocked will be true during active cancellation when the desired head position
# can not be reached because of j0's current position
bool isBlocked

# panMode will be one of
uint8 PASSIVE_MODE             = 0
uint8 ACTIVE_MODE              = 1
uint8 ACTIVE_CANCELLATION_MODE = 2
#
uint8 panMode


