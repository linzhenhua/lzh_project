# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/git/lzh_project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/git/lzh_project/build

# Include any dependencies generated for this target.
include src/CMakeFiles/cmake_test.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/cmake_test.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/cmake_test.dir/flags.make

src/CMakeFiles/cmake_test.dir/main.cc.o: src/CMakeFiles/cmake_test.dir/flags.make
src/CMakeFiles/cmake_test.dir/main.cc.o: ../src/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/git/lzh_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/cmake_test.dir/main.cc.o"
	cd /root/git/lzh_project/build/src && c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cmake_test.dir/main.cc.o -c /root/git/lzh_project/src/main.cc

src/CMakeFiles/cmake_test.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmake_test.dir/main.cc.i"
	cd /root/git/lzh_project/build/src && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/git/lzh_project/src/main.cc > CMakeFiles/cmake_test.dir/main.cc.i

src/CMakeFiles/cmake_test.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmake_test.dir/main.cc.s"
	cd /root/git/lzh_project/build/src && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/git/lzh_project/src/main.cc -o CMakeFiles/cmake_test.dir/main.cc.s

# Object files for target cmake_test
cmake_test_OBJECTS = \
"CMakeFiles/cmake_test.dir/main.cc.o"

# External object files for target cmake_test
cmake_test_EXTERNAL_OBJECTS =

bin/cmake_test: src/CMakeFiles/cmake_test.dir/main.cc.o
bin/cmake_test: src/CMakeFiles/cmake_test.dir/build.make
bin/cmake_test: lib/libnet.so
bin/cmake_test: lib/libbase.so
bin/cmake_test: src/CMakeFiles/cmake_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/git/lzh_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/cmake_test"
	cd /root/git/lzh_project/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cmake_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/cmake_test.dir/build: bin/cmake_test

.PHONY : src/CMakeFiles/cmake_test.dir/build

src/CMakeFiles/cmake_test.dir/clean:
	cd /root/git/lzh_project/build/src && $(CMAKE_COMMAND) -P CMakeFiles/cmake_test.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/cmake_test.dir/clean

src/CMakeFiles/cmake_test.dir/depend:
	cd /root/git/lzh_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/git/lzh_project /root/git/lzh_project/src /root/git/lzh_project/build /root/git/lzh_project/build/src /root/git/lzh_project/build/src/CMakeFiles/cmake_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/cmake_test.dir/depend
