# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yxj/code/ros1_try/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yxj/code/ros1_try/build

# Include any dependencies generated for this target.
include ser_cli/CMakeFiles/server.dir/depend.make

# Include the progress variables for this target.
include ser_cli/CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include ser_cli/CMakeFiles/server.dir/flags.make

ser_cli/CMakeFiles/server.dir/src/server.cpp.o: ser_cli/CMakeFiles/server.dir/flags.make
ser_cli/CMakeFiles/server.dir/src/server.cpp.o: /home/yxj/code/ros1_try/src/ser_cli/src/server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yxj/code/ros1_try/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ser_cli/CMakeFiles/server.dir/src/server.cpp.o"
	cd /home/yxj/code/ros1_try/build/ser_cli && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/src/server.cpp.o -c /home/yxj/code/ros1_try/src/ser_cli/src/server.cpp

ser_cli/CMakeFiles/server.dir/src/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/server.cpp.i"
	cd /home/yxj/code/ros1_try/build/ser_cli && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yxj/code/ros1_try/src/ser_cli/src/server.cpp > CMakeFiles/server.dir/src/server.cpp.i

ser_cli/CMakeFiles/server.dir/src/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/server.cpp.s"
	cd /home/yxj/code/ros1_try/build/ser_cli && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yxj/code/ros1_try/src/ser_cli/src/server.cpp -o CMakeFiles/server.dir/src/server.cpp.s

# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/src/server.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

/home/yxj/code/ros1_try/devel/lib/ser_cli/server: ser_cli/CMakeFiles/server.dir/src/server.cpp.o
/home/yxj/code/ros1_try/devel/lib/ser_cli/server: ser_cli/CMakeFiles/server.dir/build.make
/home/yxj/code/ros1_try/devel/lib/ser_cli/server: /opt/ros/noetic/lib/libroscpp.so
/home/yxj/code/ros1_try/devel/lib/ser_cli/server: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/yxj/code/ros1_try/devel/lib/ser_cli/server: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/yxj/code/ros1_try/devel/lib/ser_cli/server: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/yxj/code/ros1_try/devel/lib/ser_cli/server: /opt/ros/noetic/lib/librosconsole.so
/home/yxj/code/ros1_try/devel/lib/ser_cli/server: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/yxj/code/ros1_try/devel/lib/ser_cli/server: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/yxj/code/ros1_try/devel/lib/ser_cli/server: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/yxj/code/ros1_try/devel/lib/ser_cli/server: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/yxj/code/ros1_try/devel/lib/ser_cli/server: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/yxj/code/ros1_try/devel/lib/ser_cli/server: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/yxj/code/ros1_try/devel/lib/ser_cli/server: /opt/ros/noetic/lib/librostime.so
/home/yxj/code/ros1_try/devel/lib/ser_cli/server: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/yxj/code/ros1_try/devel/lib/ser_cli/server: /opt/ros/noetic/lib/libcpp_common.so
/home/yxj/code/ros1_try/devel/lib/ser_cli/server: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/yxj/code/ros1_try/devel/lib/ser_cli/server: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/yxj/code/ros1_try/devel/lib/ser_cli/server: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/yxj/code/ros1_try/devel/lib/ser_cli/server: ser_cli/CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yxj/code/ros1_try/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/yxj/code/ros1_try/devel/lib/ser_cli/server"
	cd /home/yxj/code/ros1_try/build/ser_cli && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ser_cli/CMakeFiles/server.dir/build: /home/yxj/code/ros1_try/devel/lib/ser_cli/server

.PHONY : ser_cli/CMakeFiles/server.dir/build

ser_cli/CMakeFiles/server.dir/clean:
	cd /home/yxj/code/ros1_try/build/ser_cli && $(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : ser_cli/CMakeFiles/server.dir/clean

ser_cli/CMakeFiles/server.dir/depend:
	cd /home/yxj/code/ros1_try/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yxj/code/ros1_try/src /home/yxj/code/ros1_try/src/ser_cli /home/yxj/code/ros1_try/build /home/yxj/code/ros1_try/build/ser_cli /home/yxj/code/ros1_try/build/ser_cli/CMakeFiles/server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ser_cli/CMakeFiles/server.dir/depend
