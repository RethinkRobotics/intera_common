cmake_minimum_required(VERSION 2.8.3)

project(intera_core_msgs)

find_package(catkin REQUIRED COMPONENTS 
        message_generation
        std_msgs
        geometry_msgs
        sensor_msgs
)

add_message_files( DIRECTORY msg 
        FILES
        NavigatorStates.msg
        SEAJointState.msg
        EndEffectorProperties.msg
        CollisionAvoidanceState.msg
        NavigatorStates.msg
        HeadState.msg
        AnalogIOStates.msg
        EndEffectorCommand.msg
        CameraControl.msg
        AnalogOutputCommand.msg
        EndpointState.msg
        DigitalIOStates.msg
        HeadPanCommand.msg
        AnalogIOState.msg
        DigitalOutputCommand.msg
        AssemblyStates.msg
        CameraSettings.msg
        AssemblyState.msg
        NavigatorState.msg
        EndEffectorState.msg
        JointCommand.msg
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
)

add_service_files( DIRECTORY srv 
        FILES
        CloseCamera.srv
        ListCameras.srv
        OpenCamera.srv
        SolvePositionIK.srv
        IOComponentCommandSrv.srv
)


## Build
generate_messages(DEPENDENCIES std_msgs geometry_msgs sensor_msgs)

catkin_package(CATKIN_DEPENDS message_runtime std_msgs geometry_msgs sensor_msgs)


## Install


## Testing
