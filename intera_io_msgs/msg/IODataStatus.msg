## IO Data Status
string name       # IO Data Component name
string format     # data format:
                  # A JSON object containing one or more of the following fields:
                  # Required:
                  #   "type" : "<type>"  JSON Type, one of:
                  #                      "bool", "int", "float", "string", "object", "array"
                  #
                  # Optional:
                  #   "dimensions" : [ N,...] if absent, [ 1 ] is assumed.
                  #   "role"       : Signal: "input", "output"; Port:  "sink", "source"
                  #   "data_type"  : qualifier for the JSON type, may be device-specific
                  #                  int data_types:  "uN", "sN", "NqM"
                  #   other device-specific qualifiers may be used and will be passed through.
string data       # JSON data value.  An Array is expected, for example "[ 0 ]"
IOStatus status   # Data Component status
