# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "level_three_projects: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ilevel_three_projects:/home/ros/catkin_ws/src/level_three_projects/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(level_three_projects_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ros/catkin_ws/src/level_three_projects/msg/Location_monitor.msg" NAME_WE)
add_custom_target(_level_three_projects_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "level_three_projects" "/home/ros/catkin_ws/src/level_three_projects/msg/Location_monitor.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(level_three_projects
  "/home/ros/catkin_ws/src/level_three_projects/msg/Location_monitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/level_three_projects
)

### Generating Services

### Generating Module File
_generate_module_cpp(level_three_projects
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/level_three_projects
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(level_three_projects_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(level_three_projects_generate_messages level_three_projects_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/level_three_projects/msg/Location_monitor.msg" NAME_WE)
add_dependencies(level_three_projects_generate_messages_cpp _level_three_projects_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(level_three_projects_gencpp)
add_dependencies(level_three_projects_gencpp level_three_projects_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS level_three_projects_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(level_three_projects
  "/home/ros/catkin_ws/src/level_three_projects/msg/Location_monitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/level_three_projects
)

### Generating Services

### Generating Module File
_generate_module_lisp(level_three_projects
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/level_three_projects
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(level_three_projects_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(level_three_projects_generate_messages level_three_projects_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/level_three_projects/msg/Location_monitor.msg" NAME_WE)
add_dependencies(level_three_projects_generate_messages_lisp _level_three_projects_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(level_three_projects_genlisp)
add_dependencies(level_three_projects_genlisp level_three_projects_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS level_three_projects_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(level_three_projects
  "/home/ros/catkin_ws/src/level_three_projects/msg/Location_monitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/level_three_projects
)

### Generating Services

### Generating Module File
_generate_module_py(level_three_projects
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/level_three_projects
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(level_three_projects_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(level_three_projects_generate_messages level_three_projects_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/catkin_ws/src/level_three_projects/msg/Location_monitor.msg" NAME_WE)
add_dependencies(level_three_projects_generate_messages_py _level_three_projects_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(level_three_projects_genpy)
add_dependencies(level_three_projects_genpy level_three_projects_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS level_three_projects_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/level_three_projects)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/level_three_projects
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/level_three_projects)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/level_three_projects
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/level_three_projects)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/level_three_projects\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/level_three_projects
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
