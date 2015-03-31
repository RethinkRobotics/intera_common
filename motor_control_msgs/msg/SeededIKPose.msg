# A Rethink message for inverse kinematics containing the pose to perform
# inverse kinematics on and a configuration seed to try and make the result
# similar to

# the pose to perform an IK calculation on
geometry_msgs/PoseStamped pose_stamp

# an (optional) seed to make the arm conform to. a seed with
# empty .angles/.names subcomponenets will be ignored
MotorControlMsgs/JointPosition seed

# Whether to use other seeds
MotorControlMsgs/IKSearchStrategy ik_search_strategy