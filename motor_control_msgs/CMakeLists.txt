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
                    InteractionControlData.msg
                    InteractionControlDebug.msg
                    InterpolationType.msg
                    JointCollisionEstimatorDebug.msg
                    JointLimits.msg
                    JointMotionCommand.msg
                    JointPosition.msg
                    JointTrajectory.msg
                    JointTrajectoryPoint.msg
                    LimbState.msg
                    LimbStates.msg
                    NamedTrajectoryParameterizationType.msg
                    NullspaceTwistStamped.msg
                    ObjectMass.msg
                    OptionalBool.msg
                    OptionalFloat.msg
                    PoseFixed.msg
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
                    SuckerState.msg
                    SuckerStates.msg
                    TorqueData.msg
                    TrajectoryParameterizationType.msg
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

