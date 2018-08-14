# motion status
Header header
string motion_status
string current_trajectory
uint32 current_waypoint
uint32 motion_request

# motion_status enum values:
string MOTION_IDLE=idle
string MOTION_PENDING=pending
string MOTION_RUNNING=running
string MOTION_STOPPING=stopping
string MOTION_DONE=done
string MOTION_PREEMPTED=preempted
string MOTION_ERROR=error
