# These are the different strategies for searching around an IK seed:
#  ONLY_SEED: Only uses the passed in seed.
#  W2_ROTATIONS: Uses three orientations of w2 besides the passed in seed.
#  NEAR_TO_SEED: Uses several joint positions near to the seed.
int32 DEFAULT = 0
int32 ONLY_SEED = 1  # default
int32 W2_ROTATIONS = 2
int32 NEAR_TO_SEED = 3
int32 strategy