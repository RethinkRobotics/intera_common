cmake_minimum_required(VERSION 2.8.3)

project(intera_io_msgs)

find_package(catkin REQUIRED COMPONENTS
        message_generation
        std_msgs
)

add_message_files( DIRECTORY msg
        FILES
        IOComponentCommand.msg
        IOComponentConfiguration.msg
        IOComponentStatus.msg
        IODataStatus.msg
        IODeviceConfiguration.msg
        IODeviceStatus.msg
        IONodeConfiguration.msg
        IOStatus.msg
        IONodeStatus.msg
)

add_service_files( DIRECTORY srv
        FILES
        IOComponentCommandSrv.srv
)

## Build
generate_messages(DEPENDENCIES std_msgs)

catkin_package(CATKIN_DEPENDS message_runtime std_msgs)


## Install


## Testing
