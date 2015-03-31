Header header
#incoming command
geometry_msgs/TwistStamped incomingTwistStamped #incoming command from RC or other

#EndEffector State
geometry_msgs/Pose statePose     #FK on current joints
geometry_msgs/Twist stateTwist   #FJ on current joint vel
geometry_msgs/Wrench stateWrench #FJTi on current torques
geometry_msgs/Pose commandPose   #FK on final joint setpoints
geometry_msgs/Twist commandTwist #incoming command, in the base frame

#Joint State
float64[] stateJointAngles
float64[] stateJointVelocities
float64[] stateJointTorques
float64[] commandJointAngles     #final velocity, integrated ready to send to JCBs
float64[] commandJointVelocities #final velocity after all capping (ns + coll avoid + cmd, then capped)
float64[] commandJointTorques    #final efforts after capping to be sent JCBs, exclusive of torque_bias

#Internal States
float64[] nullspaceSetpoint               #Joint angles used to calculate nullspace velocity
float64[] nullspaceCommandJointVelocities #Joint velocities used to move the elbow
float64[] collAvoidCommandJointVelocities #Joint velocities used to avoid head/body
float64[] jointVelocityDesired            #initial desired joint velocity, raw JTi on base frame twist
float64[] scaledJointError                #How far off the joints are from setpoint, scaled by velocity cmd
int32 ikVelValid         #Is IK Valid?
float64 deltaTimeMax     #Max time (since last publish) of entire VelolictyControl7DOF loop
float64 ikVelTimeMax     #Max time (since last publish) of the IK velocity calculation
float64 ikUpdateTimeMax  #Max time (since last publish) of the IK call only
float64 conditionNumber  #Condition number of the jacobian
