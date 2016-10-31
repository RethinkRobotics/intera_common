## IO Device status
time time                  # time the message was created
IOComponentStatus device   # device status data
IODataStatus[]    ports    # Ports status
IODataStatus[]    signals  # Signals status
time[]            commands # recent command timestamps, for syncing
string[]          responses # recent command responses

