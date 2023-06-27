motor_control_msgs
==============

This package containing joint motion commands, collisions, debugs and other messages. Some of these messages are JointMotionCommand, JointTrajectory, LimbState and used by Intera to control and debug the states of RethinkRobotics robots, see more in the messages categories section below.


### Disclaimer
**Some of these messages allows direct control of the robot joints, therefore although subscribing to them for debugging purposes poses no risk, publishing messages on this topics should be done with precaution and in a safe manner by experts.**

## Motion Control Messages Categories

### Joints
Message used to control the robot joints motors
* JointMotionCommand.msg
* NullspaceTwistStamped.msg
* PositionInterpolationCommand.msg
* JointPathReply.msg
* JointPathRequest.msg
* JointPlanReply.msg
* JointPlanRequest.msg
* JointPosition.msg
* JointTrajectory.msg
* JointTrajectoryPoint.msg

### States
Messages reflecting the robot components, sensors and tasks states.
* AccelerometerStates.msg
* LimbStates.msg
* SonarState.msg
* SonarStates.msg
* LimbState.msg
* TaskState.msg
* ArmStateEstimate.msg
* CameraStrobe.msg

### Collision
* CollisionDetection.msg
* ApproachAlert.msg
* ApproachCtrl.msg
* ApproachMapMsg.msg

### Constraints and Parameters
* Constraint.msg
* WeightIntegralTerm.msg
* WeightIntegralTerms.msg
* WrenchConstraint.msg
* SpeedConstraint.msg
* StiffnessConstraint.msg
* TwistConstraint.msg
* SpeedLimit.msg
* SpeedLimitScale.msg
* SplineProfileParameters.msg
* OptionalBool.msg
* OptionalFloat.msg
* PoseFixed.msg
* PoseMetrics.msg
* SeededIKPose.msg
* Stiffness.msg
* StringArray.msg
* TwistFixed.msg
* TwistLevel.msg
* TwistOrient.msg
* Vector3Fixed.msg
* WrenchLevel.msg
* IKSearchStrategy.msg

### URDF and Gripper Configuration
* Inertia.msg
* ObjectMass.msg
* GripperConfiguration.msg
* URDFSegment.msg
