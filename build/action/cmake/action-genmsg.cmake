# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "action: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iaction:/home/yxj/code/ros1_try/devel/share/action/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(action_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsAction.msg" NAME_WE)
add_custom_target(_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "action" "/home/yxj/code/ros1_try/devel/share/action/msg/addintsAction.msg" "action/addintsGoal:action/addintsActionGoal:actionlib_msgs/GoalStatus:action/addintsActionResult:action/addintsResult:std_msgs/Header:action/addintsFeedback:actionlib_msgs/GoalID:action/addintsActionFeedback"
)

get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionGoal.msg" NAME_WE)
add_custom_target(_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "action" "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionGoal.msg" "action/addintsGoal:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionResult.msg" NAME_WE)
add_custom_target(_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "action" "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionResult.msg" "actionlib_msgs/GoalStatus:std_msgs/Header:action/addintsResult:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionFeedback.msg" NAME_WE)
add_custom_target(_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "action" "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionFeedback.msg" "actionlib_msgs/GoalStatus:std_msgs/Header:action/addintsFeedback:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg" NAME_WE)
add_custom_target(_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "action" "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg" ""
)

get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg" NAME_WE)
add_custom_target(_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "action" "/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg" ""
)

get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg" NAME_WE)
add_custom_target(_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "action" "/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionResult.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action
)
_generate_msg_cpp(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action
)
_generate_msg_cpp(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action
)
_generate_msg_cpp(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action
)
_generate_msg_cpp(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action
)
_generate_msg_cpp(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action
)
_generate_msg_cpp(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action
)

### Generating Services

### Generating Module File
_generate_module_cpp(action
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(action_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(action_generate_messages action_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsAction.msg" NAME_WE)
add_dependencies(action_generate_messages_cpp _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionGoal.msg" NAME_WE)
add_dependencies(action_generate_messages_cpp _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionResult.msg" NAME_WE)
add_dependencies(action_generate_messages_cpp _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionFeedback.msg" NAME_WE)
add_dependencies(action_generate_messages_cpp _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg" NAME_WE)
add_dependencies(action_generate_messages_cpp _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg" NAME_WE)
add_dependencies(action_generate_messages_cpp _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg" NAME_WE)
add_dependencies(action_generate_messages_cpp _action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(action_gencpp)
add_dependencies(action_gencpp action_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS action_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionResult.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action
)
_generate_msg_eus(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action
)
_generate_msg_eus(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action
)
_generate_msg_eus(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action
)
_generate_msg_eus(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action
)
_generate_msg_eus(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action
)
_generate_msg_eus(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action
)

### Generating Services

### Generating Module File
_generate_module_eus(action
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(action_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(action_generate_messages action_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsAction.msg" NAME_WE)
add_dependencies(action_generate_messages_eus _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionGoal.msg" NAME_WE)
add_dependencies(action_generate_messages_eus _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionResult.msg" NAME_WE)
add_dependencies(action_generate_messages_eus _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionFeedback.msg" NAME_WE)
add_dependencies(action_generate_messages_eus _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg" NAME_WE)
add_dependencies(action_generate_messages_eus _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg" NAME_WE)
add_dependencies(action_generate_messages_eus _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg" NAME_WE)
add_dependencies(action_generate_messages_eus _action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(action_geneus)
add_dependencies(action_geneus action_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS action_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionResult.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action
)
_generate_msg_lisp(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action
)
_generate_msg_lisp(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action
)
_generate_msg_lisp(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action
)
_generate_msg_lisp(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action
)
_generate_msg_lisp(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action
)
_generate_msg_lisp(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action
)

### Generating Services

### Generating Module File
_generate_module_lisp(action
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(action_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(action_generate_messages action_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsAction.msg" NAME_WE)
add_dependencies(action_generate_messages_lisp _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionGoal.msg" NAME_WE)
add_dependencies(action_generate_messages_lisp _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionResult.msg" NAME_WE)
add_dependencies(action_generate_messages_lisp _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionFeedback.msg" NAME_WE)
add_dependencies(action_generate_messages_lisp _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg" NAME_WE)
add_dependencies(action_generate_messages_lisp _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg" NAME_WE)
add_dependencies(action_generate_messages_lisp _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg" NAME_WE)
add_dependencies(action_generate_messages_lisp _action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(action_genlisp)
add_dependencies(action_genlisp action_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS action_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionResult.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action
)
_generate_msg_nodejs(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action
)
_generate_msg_nodejs(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action
)
_generate_msg_nodejs(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action
)
_generate_msg_nodejs(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action
)
_generate_msg_nodejs(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action
)
_generate_msg_nodejs(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action
)

### Generating Services

### Generating Module File
_generate_module_nodejs(action
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(action_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(action_generate_messages action_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsAction.msg" NAME_WE)
add_dependencies(action_generate_messages_nodejs _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionGoal.msg" NAME_WE)
add_dependencies(action_generate_messages_nodejs _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionResult.msg" NAME_WE)
add_dependencies(action_generate_messages_nodejs _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionFeedback.msg" NAME_WE)
add_dependencies(action_generate_messages_nodejs _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg" NAME_WE)
add_dependencies(action_generate_messages_nodejs _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg" NAME_WE)
add_dependencies(action_generate_messages_nodejs _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg" NAME_WE)
add_dependencies(action_generate_messages_nodejs _action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(action_gennodejs)
add_dependencies(action_gennodejs action_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS action_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionResult.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action
)
_generate_msg_py(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action
)
_generate_msg_py(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action
)
_generate_msg_py(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action
)
_generate_msg_py(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action
)
_generate_msg_py(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action
)
_generate_msg_py(action
  "/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action
)

### Generating Services

### Generating Module File
_generate_module_py(action
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(action_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(action_generate_messages action_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsAction.msg" NAME_WE)
add_dependencies(action_generate_messages_py _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionGoal.msg" NAME_WE)
add_dependencies(action_generate_messages_py _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionResult.msg" NAME_WE)
add_dependencies(action_generate_messages_py _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsActionFeedback.msg" NAME_WE)
add_dependencies(action_generate_messages_py _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsGoal.msg" NAME_WE)
add_dependencies(action_generate_messages_py _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsResult.msg" NAME_WE)
add_dependencies(action_generate_messages_py _action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yxj/code/ros1_try/devel/share/action/msg/addintsFeedback.msg" NAME_WE)
add_dependencies(action_generate_messages_py _action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(action_genpy)
add_dependencies(action_genpy action_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS action_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/action
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(action_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(action_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/action
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(action_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(action_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/action
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(action_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(action_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/action
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(action_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(action_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/action
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(action_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(action_generate_messages_py std_msgs_generate_messages_py)
endif()
