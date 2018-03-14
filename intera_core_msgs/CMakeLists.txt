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
        NavigatorStates.msg
        SEAJointState.msg
        CollisionAvoidanceState.msg
        NavigatorStates.msg
        HeadState.msg
        AnalogIOStates.msg
        CameraControl.msg
        AnalogOutputCommand.msg
        EndpointNamesArray.msg
        EndpointState.msg
        DigitalIOStates.msg
        HeadPanCommand.msg
        AnalogIOState.msg
        DigitalOutputCommand.msg
        AssemblyStates.msg
        CameraSettings.msg
        AssemblyState.msg
        NavigatorState.msg
        JointCommand.msg
        JointLimits.msg
        NavigatorState.msg
        EndpointStates.msg
        DigitalIOState.msg
        CollisionDetectionState.msg
        HomingCommand.msg
        HomingState.msg
        IOComponentCommand.msg
        IOComponentConfiguration.msg
        IOComponentStatus.msg
        IODataStatus.msg
        IODeviceConfiguration.msg
        IODeviceStatus.msg
        IONodeConfiguration.msg
        IOStatus.msg
        IONodeStatus.msg
        URDFConfiguration.msg
        InteractionControlCommand.msg
        InteractionControlState.msg
)

add_service_files( DIRECTORY srv
        FILES
        SolvePositionIK.srv
        SolvePositionFK.srv
        IOComponentCommandSrv.srv
)

add_action_files(DIRECTORY action FILES CalibrationCommand.action)

## Build
generate_messages(DEPENDENCIES std_msgs geometry_msgs sensor_msgs actionlib_msgs)

catkin_package(CATKIN_DEPENDS message_runtime std_msgs geometry_msgs sensor_msgs actionlib_msgs)


## Install


## Testing
