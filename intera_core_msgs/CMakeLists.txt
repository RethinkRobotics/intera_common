cmake_minimum_required(VERSION 2.8.3)

project(intera_core_msgs)

find_package(catkin REQUIRED COMPONENTS
        message_generation
        actionlib_msgs
        std_msgs
        geometry_msgs
        sensor_msgs
)

add_message_files( DIRECTORY msg
        FILES
        AnalogIOState.msg
        AnalogIOStates.msg
        AnalogOutputCommand.msg
        RobotAssemblyState.msg
        CameraControl.msg
        CameraSettings.msg
        CollisionAvoidanceState.msg
        CollisionDetectionState.msg
        DigitalIOState.msg
        DigitalIOStates.msg
        DigitalOutputCommand.msg
        EndpointNamesArray.msg
        EndpointState.msg
        EndpointStates.msg
        HeadPanCommand.msg
        HeadState.msg
        HomingCommand.msg
        HomingState.msg
        InteractionControlCommand.msg
        InteractionControlState.msg
        IOComponentCommand.msg
        IOComponentConfiguration.msg
        IOComponentStatus.msg
        IODataStatus.msg
        IODeviceConfiguration.msg
        IODeviceStatus.msg
        IONodeConfiguration.msg
        IONodeStatus.msg
        IOStatus.msg
        JointCommand.msg
        JointLimits.msg
        NavigatorState.msg
        NavigatorStates.msg
        SEAJointState.msg
        URDFConfiguration.msg
)

add_service_files( DIRECTORY srv
        FILES
        IOComponentCommandSrv.srv
        SolvePositionFK.srv
        SolvePositionIK.srv
)

add_action_files(DIRECTORY action FILES CalibrationCommand.action)

## Build
generate_messages(DEPENDENCIES std_msgs geometry_msgs sensor_msgs actionlib_msgs)

catkin_package(CATKIN_DEPENDS message_runtime std_msgs geometry_msgs sensor_msgs actionlib_msgs)


## Install


## Testing
