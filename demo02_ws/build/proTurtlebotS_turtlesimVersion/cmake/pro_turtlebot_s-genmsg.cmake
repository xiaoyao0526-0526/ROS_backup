# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pro_turtlebot_s: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ipro_turtlebot_s:/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pro_turtlebot_s_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/msg/Location_monitor.msg" NAME_WE)
add_custom_target(_pro_turtlebot_s_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pro_turtlebot_s" "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/msg/Location_monitor.msg" ""
)

get_filename_component(_filename "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/srv/turtle_control.srv" NAME_WE)
add_custom_target(_pro_turtlebot_s_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pro_turtlebot_s" "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/srv/turtle_control.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pro_turtlebot_s
  "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/msg/Location_monitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pro_turtlebot_s
)

### Generating Services
_generate_srv_cpp(pro_turtlebot_s
  "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/srv/turtle_control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pro_turtlebot_s
)

### Generating Module File
_generate_module_cpp(pro_turtlebot_s
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pro_turtlebot_s
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pro_turtlebot_s_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pro_turtlebot_s_generate_messages pro_turtlebot_s_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/msg/Location_monitor.msg" NAME_WE)
add_dependencies(pro_turtlebot_s_generate_messages_cpp _pro_turtlebot_s_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/srv/turtle_control.srv" NAME_WE)
add_dependencies(pro_turtlebot_s_generate_messages_cpp _pro_turtlebot_s_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pro_turtlebot_s_gencpp)
add_dependencies(pro_turtlebot_s_gencpp pro_turtlebot_s_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pro_turtlebot_s_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pro_turtlebot_s
  "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/msg/Location_monitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pro_turtlebot_s
)

### Generating Services
_generate_srv_eus(pro_turtlebot_s
  "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/srv/turtle_control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pro_turtlebot_s
)

### Generating Module File
_generate_module_eus(pro_turtlebot_s
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pro_turtlebot_s
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pro_turtlebot_s_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pro_turtlebot_s_generate_messages pro_turtlebot_s_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/msg/Location_monitor.msg" NAME_WE)
add_dependencies(pro_turtlebot_s_generate_messages_eus _pro_turtlebot_s_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/srv/turtle_control.srv" NAME_WE)
add_dependencies(pro_turtlebot_s_generate_messages_eus _pro_turtlebot_s_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pro_turtlebot_s_geneus)
add_dependencies(pro_turtlebot_s_geneus pro_turtlebot_s_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pro_turtlebot_s_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pro_turtlebot_s
  "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/msg/Location_monitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pro_turtlebot_s
)

### Generating Services
_generate_srv_lisp(pro_turtlebot_s
  "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/srv/turtle_control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pro_turtlebot_s
)

### Generating Module File
_generate_module_lisp(pro_turtlebot_s
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pro_turtlebot_s
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pro_turtlebot_s_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pro_turtlebot_s_generate_messages pro_turtlebot_s_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/msg/Location_monitor.msg" NAME_WE)
add_dependencies(pro_turtlebot_s_generate_messages_lisp _pro_turtlebot_s_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/srv/turtle_control.srv" NAME_WE)
add_dependencies(pro_turtlebot_s_generate_messages_lisp _pro_turtlebot_s_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pro_turtlebot_s_genlisp)
add_dependencies(pro_turtlebot_s_genlisp pro_turtlebot_s_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pro_turtlebot_s_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pro_turtlebot_s
  "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/msg/Location_monitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pro_turtlebot_s
)

### Generating Services
_generate_srv_nodejs(pro_turtlebot_s
  "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/srv/turtle_control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pro_turtlebot_s
)

### Generating Module File
_generate_module_nodejs(pro_turtlebot_s
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pro_turtlebot_s
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pro_turtlebot_s_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pro_turtlebot_s_generate_messages pro_turtlebot_s_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/msg/Location_monitor.msg" NAME_WE)
add_dependencies(pro_turtlebot_s_generate_messages_nodejs _pro_turtlebot_s_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/srv/turtle_control.srv" NAME_WE)
add_dependencies(pro_turtlebot_s_generate_messages_nodejs _pro_turtlebot_s_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pro_turtlebot_s_gennodejs)
add_dependencies(pro_turtlebot_s_gennodejs pro_turtlebot_s_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pro_turtlebot_s_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pro_turtlebot_s
  "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/msg/Location_monitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pro_turtlebot_s
)

### Generating Services
_generate_srv_py(pro_turtlebot_s
  "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/srv/turtle_control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pro_turtlebot_s
)

### Generating Module File
_generate_module_py(pro_turtlebot_s
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pro_turtlebot_s
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pro_turtlebot_s_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pro_turtlebot_s_generate_messages pro_turtlebot_s_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/msg/Location_monitor.msg" NAME_WE)
add_dependencies(pro_turtlebot_s_generate_messages_py _pro_turtlebot_s_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yss/demo02_ws/src/proTurtlebotS_turtlesimVersion/srv/turtle_control.srv" NAME_WE)
add_dependencies(pro_turtlebot_s_generate_messages_py _pro_turtlebot_s_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pro_turtlebot_s_genpy)
add_dependencies(pro_turtlebot_s_genpy pro_turtlebot_s_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pro_turtlebot_s_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pro_turtlebot_s)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pro_turtlebot_s
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pro_turtlebot_s)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pro_turtlebot_s
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pro_turtlebot_s)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pro_turtlebot_s
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pro_turtlebot_s)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pro_turtlebot_s
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pro_turtlebot_s)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pro_turtlebot_s\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pro_turtlebot_s
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
