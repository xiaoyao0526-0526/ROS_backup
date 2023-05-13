# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "exp6_524: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iexp6_524:/home/ros/catkin_ws/src/exp6_524/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(exp6_524_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ros/catkin_ws/src/exp6_524/srv/DoSquare.srv" NAME_WE)
add_custom_target(_exp6_524_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exp6_524" "/home/ros/catkin_ws/src/exp6_524/srv/DoSquare.srv" ""
)

get_filename_component(_filename "/home/ros/catkin_ws/src/exp6_524/msg/Num.msg" NAME_WE)
add_custom_target(_exp6_524_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exp6_524" "/home/ros/catkin_ws/src/exp6_524/msg/Num.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(exp6_524
  "/home/ros/catkin_ws/src/exp6_524/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exp6_524
)

### Generating Services
_generate_srv_cpp(exp6_524
  "/home/ros/catkin_ws/src/exp6_524/srv/DoSquare.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exp6_524
)

### Generating Module File
_generate_module_cpp(exp6_524
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exp6_524
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(exp6_524_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(exp6_524_generate_messages exp6_524_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/exp6_524/srv/DoSquare.srv" NAME_WE)
add_dependencies(exp6_524_generate_messages_cpp _exp6_524_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/exp6_524/msg/Num.msg" NAME_WE)
add_dependencies(exp6_524_generate_messages_cpp _exp6_524_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exp6_524_gencpp)
add_dependencies(exp6_524_gencpp exp6_524_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exp6_524_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(exp6_524
  "/home/ros/catkin_ws/src/exp6_524/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exp6_524
)

### Generating Services
_generate_srv_lisp(exp6_524
  "/home/ros/catkin_ws/src/exp6_524/srv/DoSquare.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exp6_524
)

### Generating Module File
_generate_module_lisp(exp6_524
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exp6_524
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(exp6_524_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(exp6_524_generate_messages exp6_524_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/exp6_524/srv/DoSquare.srv" NAME_WE)
add_dependencies(exp6_524_generate_messages_lisp _exp6_524_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/exp6_524/msg/Num.msg" NAME_WE)
add_dependencies(exp6_524_generate_messages_lisp _exp6_524_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exp6_524_genlisp)
add_dependencies(exp6_524_genlisp exp6_524_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exp6_524_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(exp6_524
  "/home/ros/catkin_ws/src/exp6_524/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exp6_524
)

### Generating Services
_generate_srv_py(exp6_524
  "/home/ros/catkin_ws/src/exp6_524/srv/DoSquare.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exp6_524
)

### Generating Module File
_generate_module_py(exp6_524
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exp6_524
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(exp6_524_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(exp6_524_generate_messages exp6_524_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/exp6_524/srv/DoSquare.srv" NAME_WE)
add_dependencies(exp6_524_generate_messages_py _exp6_524_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/catkin_ws/src/exp6_524/msg/Num.msg" NAME_WE)
add_dependencies(exp6_524_generate_messages_py _exp6_524_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exp6_524_genpy)
add_dependencies(exp6_524_genpy exp6_524_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exp6_524_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exp6_524)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exp6_524
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(exp6_524_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exp6_524)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exp6_524
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(exp6_524_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exp6_524)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exp6_524\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exp6_524
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(exp6_524_generate_messages_py std_msgs_generate_messages_py)
