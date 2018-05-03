bool running
bool paused
bool error
std_msgs/Duration customer_task_time      # time running current task since last stop
std_msgs/Duration customer_robot_runtime  # total time spent running any task
std_msgs/Duration customer_uptime         # time since last sw boot
std_msgs/Duration customer_total_uptime   # total time sw has ever been up
