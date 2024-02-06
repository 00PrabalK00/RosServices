# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "base_joy_controller_pkg: 1 messages, 2 services")

set(MSG_I_FLAGS "-Ibase_joy_controller_pkg:/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(base_joy_controller_pkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/msg/base_msgs.msg" NAME_WE)
add_custom_target(_base_joy_controller_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "base_joy_controller_pkg" "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/msg/base_msgs.msg" ""
)

get_filename_component(_filename "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/adcm.srv" NAME_WE)
add_custom_target(_base_joy_controller_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "base_joy_controller_pkg" "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/adcm.srv" ""
)

get_filename_component(_filename "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/modes.srv" NAME_WE)
add_custom_target(_base_joy_controller_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "base_joy_controller_pkg" "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/modes.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(base_joy_controller_pkg
  "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/msg/base_msgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/base_joy_controller_pkg
)

### Generating Services
_generate_srv_cpp(base_joy_controller_pkg
  "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/adcm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/base_joy_controller_pkg
)
_generate_srv_cpp(base_joy_controller_pkg
  "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/modes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/base_joy_controller_pkg
)

### Generating Module File
_generate_module_cpp(base_joy_controller_pkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/base_joy_controller_pkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(base_joy_controller_pkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(base_joy_controller_pkg_generate_messages base_joy_controller_pkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/msg/base_msgs.msg" NAME_WE)
add_dependencies(base_joy_controller_pkg_generate_messages_cpp _base_joy_controller_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/adcm.srv" NAME_WE)
add_dependencies(base_joy_controller_pkg_generate_messages_cpp _base_joy_controller_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/modes.srv" NAME_WE)
add_dependencies(base_joy_controller_pkg_generate_messages_cpp _base_joy_controller_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(base_joy_controller_pkg_gencpp)
add_dependencies(base_joy_controller_pkg_gencpp base_joy_controller_pkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS base_joy_controller_pkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(base_joy_controller_pkg
  "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/msg/base_msgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/base_joy_controller_pkg
)

### Generating Services
_generate_srv_eus(base_joy_controller_pkg
  "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/adcm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/base_joy_controller_pkg
)
_generate_srv_eus(base_joy_controller_pkg
  "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/modes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/base_joy_controller_pkg
)

### Generating Module File
_generate_module_eus(base_joy_controller_pkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/base_joy_controller_pkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(base_joy_controller_pkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(base_joy_controller_pkg_generate_messages base_joy_controller_pkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/msg/base_msgs.msg" NAME_WE)
add_dependencies(base_joy_controller_pkg_generate_messages_eus _base_joy_controller_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/adcm.srv" NAME_WE)
add_dependencies(base_joy_controller_pkg_generate_messages_eus _base_joy_controller_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/modes.srv" NAME_WE)
add_dependencies(base_joy_controller_pkg_generate_messages_eus _base_joy_controller_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(base_joy_controller_pkg_geneus)
add_dependencies(base_joy_controller_pkg_geneus base_joy_controller_pkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS base_joy_controller_pkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(base_joy_controller_pkg
  "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/msg/base_msgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/base_joy_controller_pkg
)

### Generating Services
_generate_srv_lisp(base_joy_controller_pkg
  "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/adcm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/base_joy_controller_pkg
)
_generate_srv_lisp(base_joy_controller_pkg
  "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/modes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/base_joy_controller_pkg
)

### Generating Module File
_generate_module_lisp(base_joy_controller_pkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/base_joy_controller_pkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(base_joy_controller_pkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(base_joy_controller_pkg_generate_messages base_joy_controller_pkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/msg/base_msgs.msg" NAME_WE)
add_dependencies(base_joy_controller_pkg_generate_messages_lisp _base_joy_controller_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/adcm.srv" NAME_WE)
add_dependencies(base_joy_controller_pkg_generate_messages_lisp _base_joy_controller_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/modes.srv" NAME_WE)
add_dependencies(base_joy_controller_pkg_generate_messages_lisp _base_joy_controller_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(base_joy_controller_pkg_genlisp)
add_dependencies(base_joy_controller_pkg_genlisp base_joy_controller_pkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS base_joy_controller_pkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(base_joy_controller_pkg
  "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/msg/base_msgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/base_joy_controller_pkg
)

### Generating Services
_generate_srv_nodejs(base_joy_controller_pkg
  "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/adcm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/base_joy_controller_pkg
)
_generate_srv_nodejs(base_joy_controller_pkg
  "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/modes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/base_joy_controller_pkg
)

### Generating Module File
_generate_module_nodejs(base_joy_controller_pkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/base_joy_controller_pkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(base_joy_controller_pkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(base_joy_controller_pkg_generate_messages base_joy_controller_pkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/msg/base_msgs.msg" NAME_WE)
add_dependencies(base_joy_controller_pkg_generate_messages_nodejs _base_joy_controller_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/adcm.srv" NAME_WE)
add_dependencies(base_joy_controller_pkg_generate_messages_nodejs _base_joy_controller_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/modes.srv" NAME_WE)
add_dependencies(base_joy_controller_pkg_generate_messages_nodejs _base_joy_controller_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(base_joy_controller_pkg_gennodejs)
add_dependencies(base_joy_controller_pkg_gennodejs base_joy_controller_pkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS base_joy_controller_pkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(base_joy_controller_pkg
  "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/msg/base_msgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/base_joy_controller_pkg
)

### Generating Services
_generate_srv_py(base_joy_controller_pkg
  "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/adcm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/base_joy_controller_pkg
)
_generate_srv_py(base_joy_controller_pkg
  "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/modes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/base_joy_controller_pkg
)

### Generating Module File
_generate_module_py(base_joy_controller_pkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/base_joy_controller_pkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(base_joy_controller_pkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(base_joy_controller_pkg_generate_messages base_joy_controller_pkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/msg/base_msgs.msg" NAME_WE)
add_dependencies(base_joy_controller_pkg_generate_messages_py _base_joy_controller_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/adcm.srv" NAME_WE)
add_dependencies(base_joy_controller_pkg_generate_messages_py _base_joy_controller_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pk/newrepo/yo_pussy/src/base_joy_controller_pkg/srv/modes.srv" NAME_WE)
add_dependencies(base_joy_controller_pkg_generate_messages_py _base_joy_controller_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(base_joy_controller_pkg_genpy)
add_dependencies(base_joy_controller_pkg_genpy base_joy_controller_pkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS base_joy_controller_pkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/base_joy_controller_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/base_joy_controller_pkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(base_joy_controller_pkg_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(base_joy_controller_pkg_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(base_joy_controller_pkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/base_joy_controller_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/base_joy_controller_pkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(base_joy_controller_pkg_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(base_joy_controller_pkg_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(base_joy_controller_pkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/base_joy_controller_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/base_joy_controller_pkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(base_joy_controller_pkg_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(base_joy_controller_pkg_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(base_joy_controller_pkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/base_joy_controller_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/base_joy_controller_pkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(base_joy_controller_pkg_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(base_joy_controller_pkg_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(base_joy_controller_pkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/base_joy_controller_pkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/base_joy_controller_pkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/base_joy_controller_pkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(base_joy_controller_pkg_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(base_joy_controller_pkg_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(base_joy_controller_pkg_generate_messages_py std_msgs_generate_messages_py)
endif()
