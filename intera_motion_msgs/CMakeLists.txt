cmake_minimum_required(VERSION 2.8.3)

project(intera_motion_msgs)

find_package(catkin REQUIRED COMPONENTS actionlib_msgs message_generation std_msgs
                                        geometry_msgs intera_core_msgs)

add_message_files(DIRECTORY msg
                  FILES
                    EndpointTrackingError.msg
                    InterpolatedPath.msg
                    JointTrackingError.msg
                    MotionStatus.msg
                    TrackingOptions.msg
                    Trajectory.msg
                    TrajectoryAnalysis.msg
                    TrajectoryOptions.msg
                    Waypoint.msg
                    WaypointOptions.msg
                    WaypointSimple.msg
                    )

add_action_files(DIRECTORY action FILES MotionCommand.action)

generate_messages(DEPENDENCIES std_msgs geometry_msgs intera_core_msgs actionlib_msgs)

catkin_package(CATKIN_DEPENDS message_runtime std_msgs
                              geometry_msgs intera_core_msgs actionlib_msgs)
