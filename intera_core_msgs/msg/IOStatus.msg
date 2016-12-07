## IO status data
#
string tag             # one of the values listed below
#   down     Inoperative, not fully instantiated
#   ready    OK, fully operational
#   busy     OK, not ready to output data; input data value may be stale
#   unready  OK, not operational; data is invalid
#   error    Error, not operational
string DOWN      = down
string READY     = ready
string BUSY      = busy
string UNREADY   = unready
string ERROR     = error
#
string key             # status key
# The "key" is a descriptive path starting with "io" and ending with
# the status tag.  It should uniquely identify the status within a
# device, so it can be used to lookup information such as localized
# messages and behaviors. Examples:
#   "io/ready"
#   "io/modbus_tcp/disconnected/error"
#
string msg             # optional additional status detail
#
