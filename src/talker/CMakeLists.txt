cmake_minimum_required(VERSION 3.0.2)
project(talker)

find_package(catkin REQUIRED COMPONENTS std_msgs)

catkin_package(CATKIN_DEPENDS std_msgs)

catkin_install_python(PROGRAMS
  # scripts/talker.pyc
  scripts/talker.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

# do not wildcard install files since the root folder of the package will contain a debian folder for releasing
#catkin_install_python(PROGRAMS
#  001_talker_listener/listener
#  001_talker_listener/listener.py
#  001_talker_listener/talker
#  001_talker_listener/talker.py
#  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/001_talker_listener
#)
#install(FILES
#  001_talker_listener/README
#  001_talker_listener/talker_listener.launch
#  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/001_talker_listener
#)

#catkin_install_python(PROGRAMS
#  002_headers/listener_header.py
#  002_headers/talker_header.py
#  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/002_headers
#)
#install(FILES
#  002_headers/headers.launch
#  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/002_headers
#)

#catkin_install_python(PROGRAMS
#  003_listener_with_user_data/listener_with_user_data.py
#  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/003_listener_with_user_data
#)
#install(FILES
#  003_listener_with_user_data/listener_with_user_data.launch
#  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/003_listener_with_user_data
#)

#catkin_install_python(PROGRAMS
#  004_listener_subscribe_notify/listener_subscribe_notify.py
#  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/004_listener_subscribe_notify
#)
#install(FILES
#  004_listener_subscribe_notify/listener_subscribe_notify.launch
#  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/004_listener_subscribe_notify
#)
