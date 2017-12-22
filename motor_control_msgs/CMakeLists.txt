cmake_minimum_required(VERSION 2.8.3)

project(motor_control_msgs)

find_package(catkin REQUIRED COMPONENTS message_generation std_msgs geometry_msgs sensor_msgs)

find_package(rethink_build_support REQUIRED)
rethink_configure()

add_message_files(DIRECTORY msg
                  FILES
                    ApproachAlert.msg
                    ApproachCtrl.msg
                    ApproachMapMsg.msg
                    AccelerometerStates.msg
                    ArmStateEstimate.msg
                    CollisionDetection.msg
                    Constraint.msg
                    DebugJointCommand.msg
                    DebugJointState.msg
                    DebugNodeState.msg
                    DebugServoLoopState.msg
                    DebugServoLoopStateDetail.msg
                    DebugVelocityController.msg
                    GripperConfiguration.msg
                    IKSearchStrategy.msg
                    Inertia.msg
                    InteractionControlDebug.msg
                    JointCollisionEstimatorDebug.msg
                    JointMotionCommand.msg
                    JointPosition.msg
                    JointTrajectory.msg
                    JointTrajectoryPoint.msg
                    LimbState.msg
                    LimbStates.msg
                    NullspaceTwistStamped.msg
                    ObjectMass.msg
                    OptionalBool.msg
                    OptionalFloat.msg
                    PoseFixed.msg
                    PoseMetrics.msg
                    SeededIKPose.msg
                    SonarState.msg
                    SonarStates.msg
                    SpeedConstraint.msg
                    SpeedLimit.msg
                    SpeedLimitScale.msg
                    SplineProfileParameters.msg
                    Stiffness.msg
                    StiffnessConstraint.msg
                    StringArray.msg
                    TaskState.msg
                    TorqueData.msg
                    TwistConstraint.msg
                    TwistFixed.msg
                    TwistLevel.msg
                    TwistOrient.msg
                    URDFSegment.msg
                    Vector3Fixed.msg
                    VelocityControllerState.msg
                    WeightIntegralTerm.msg
                    WeightIntegralTerms.msg
                    WrenchConstraint.msg
                    WrenchLevel.msg
  )


generate_messages(DEPENDENCIES std_msgs geometry_msgs sensor_msgs)

catkin_package(CATKIN_DEPENDS message_runtime std_msgs geometry_msgs sensor_msgs)
