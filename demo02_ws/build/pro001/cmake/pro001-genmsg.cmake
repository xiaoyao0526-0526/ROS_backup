# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pro001: 2 messages, 1 services")

set(MSG_I_FLAGS "-Ipro001:/home/yss/demo02_ws/src/pro001/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pro001_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yss/demo02_ws/src/pro001/msg/Location_monitor.msg" NAME_WE)
add_custom_target(_pro001_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pro001" "/home/yss/demo02_ws/src/pro001/msg/Location_monitor.msg" ""
)

get_filename_component(_filename "/home/yss/demo02_ws/src/pro001/msg/geometry_msgs.msg" NAME_WE)
add_custom_target(_pro001_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pro001" "/home/yss/demo02_ws/src/pro001/msg/geometry_msgs.msg" ""
)

get_filename_component(_filename "/home/yss/demo02_ws/src/pro001/srv/move.srv" NAME_WE)
add_custom_target(_pro001_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pro001" "/home/yss/demo02_ws/src/pro001/srv/move.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pro001
  "/home/yss/demo02_ws/src/pro001/msg/Location_monitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pro001
)
_generate_msg_cpp(pro001
  "/home/yss/demo02_ws/src/pro001/msg/geometry_msgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pro001
)

### Generating Services
_generate_srv_cpp(pro001
  "/home/yss/demo02_ws/src/pro001/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pro001
)

### Generating Module File
_generate_module_cpp(pro001
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pro001
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pro001_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pro001_generate_messages pro001_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yss/demo02_ws/src/pro001/msg/Location_monitor.msg" NAME_WE)
add_dependencies(pro001_generate_messages_cpp _pro001_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yss/demo02_ws/src/pro001/msg/geometry_msgs.msg" NAME_WE)
add_dependencies(pro001_generate_messages_cpp _pro001_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yss/demo02_ws/src/pro001/srv/move.srv" NAME_WE)
add_dependencies(pro001_generate_messages_cpp _pro001_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pro001_gencpp)
add_dependencies(pro001_gencpp pro001_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pro001_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pro001
  "/home/yss/demo02_ws/src/pro001/msg/Location_monitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pro001
)
_generate_msg_eus(pro001
  "/home/yss/demo02_ws/src/pro001/msg/geometry_msgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pro001
)

### Generating Services
_generate_srv_eus(pro001
  "/home/yss/demo02_ws/src/pro001/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pro001
)

### Generating Module File
_generate_module_eus(pro001
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pro001
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pro001_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pro001_generate_messages pro001_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yss/demo02_ws/src/pro001/msg/Location_monitor.msg" NAME_WE)
add_dependencies(pro001_generate_messages_eus _pro001_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yss/demo02_ws/src/pro001/msg/geometry_msgs.msg" NAME_WE)
add_dependencies(pro001_generate_messages_eus _pro001_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yss/demo02_ws/src/pro001/srv/move.srv" NAME_WE)
add_dependencies(pro001_generate_messages_eus _pro001_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pro001_geneus)
add_dependencies(pro001_geneus pro001_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pro001_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pro001
  "/home/yss/demo02_ws/src/pro001/msg/Location_monitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pro001
)
_generate_msg_lisp(pro001
  "/home/yss/demo02_ws/src/pro001/msg/geometry_msgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pro001
)

### Generating Services
_generate_srv_lisp(pro001
  "/home/yss/demo02_ws/src/pro001/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pro001
)

### Generating Module File
_generate_module_lisp(pro001
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pro001
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pro001_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pro001_generate_messages pro001_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yss/demo02_ws/src/pro001/msg/Location_monitor.msg" NAME_WE)
add_dependencies(pro001_generate_messages_lisp _pro001_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yss/demo02_ws/src/pro001/msg/geometry_msgs.msg" NAME_WE)
add_dependencies(pro001_generate_messages_lisp _pro001_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yss/demo02_ws/src/pro001/srv/move.srv" NAME_WE)
add_dependencies(pro001_generate_messages_lisp _pro001_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pro001_genlisp)
add_dependencies(pro001_genlisp pro001_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pro001_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pro001
  "/home/yss/demo02_ws/src/pro001/msg/Location_monitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pro001
)
_generate_msg_nodejs(pro001
  "/home/yss/demo02_ws/src/pro001/msg/geometry_msgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pro001
)

### Generating Services
_generate_srv_nodejs(pro001
  "/home/yss/demo02_ws/src/pro001/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pro001
)

### Generating Module File
_generate_module_nodejs(pro001
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pro001
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pro001_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pro001_generate_messages pro001_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yss/demo02_ws/src/pro001/msg/Location_monitor.msg" NAME_WE)
add_dependencies(pro001_generate_messages_nodejs _pro001_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yss/demo02_ws/src/pro001/msg/geometry_msgs.msg" NAME_WE)
add_dependencies(pro001_generate_messages_nodejs _pro001_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yss/demo02_ws/src/pro001/srv/move.srv" NAME_WE)
add_dependencies(pro001_generate_messages_nodejs _pro001_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pro001_gennodejs)
add_dependencies(pro001_gennodejs pro001_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pro001_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pro001
  "/home/yss/demo02_ws/src/pro001/msg/Location_monitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pro001
)
_generate_msg_py(pro001
  "/home/yss/demo02_ws/src/pro001/msg/geometry_msgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pro001
)

### Generating Services
_generate_srv_py(pro001
  "/home/yss/demo02_ws/src/pro001/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pro001
)

### Generating Module File
_generate_module_py(pro001
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pro001
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pro001_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pro001_generate_messages pro001_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yss/demo02_ws/src/pro001/msg/Location_monitor.msg" NAME_WE)
add_dependencies(pro001_generate_messages_py _pro001_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yss/demo02_ws/src/pro001/msg/geometry_msgs.msg" NAME_WE)
add_dependencies(pro001_generate_messages_py _pro001_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yss/demo02_ws/src/pro001/srv/move.srv" NAME_WE)
add_dependencies(pro001_generate_messages_py _pro001_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pro001_genpy)
add_dependencies(pro001_genpy pro001_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pro001_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pro001)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pro001
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pro001)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pro001
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pro001)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pro001
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pro001)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pro001
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pro001)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pro001\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pro001
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
