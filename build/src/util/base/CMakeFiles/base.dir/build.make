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
include src/util/base/CMakeFiles/base.dir/depend.make

# Include the progress variables for this target.
include src/util/base/CMakeFiles/base.dir/progress.make

# Include the compile flags for this target's objects.
include src/util/base/CMakeFiles/base.dir/flags.make

src/util/base/CMakeFiles/base.dir/AsyncLogging.cc.o: src/util/base/CMakeFiles/base.dir/flags.make
src/util/base/CMakeFiles/base.dir/AsyncLogging.cc.o: ../src/util/base/AsyncLogging.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/git/lzh_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/util/base/CMakeFiles/base.dir/AsyncLogging.cc.o"
	cd /root/git/lzh_project/build/src/util/base && c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/base.dir/AsyncLogging.cc.o -c /root/git/lzh_project/src/util/base/AsyncLogging.cc

src/util/base/CMakeFiles/base.dir/AsyncLogging.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/AsyncLogging.cc.i"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/git/lzh_project/src/util/base/AsyncLogging.cc > CMakeFiles/base.dir/AsyncLogging.cc.i

src/util/base/CMakeFiles/base.dir/AsyncLogging.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/AsyncLogging.cc.s"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/git/lzh_project/src/util/base/AsyncLogging.cc -o CMakeFiles/base.dir/AsyncLogging.cc.s

src/util/base/CMakeFiles/base.dir/Condition.cc.o: src/util/base/CMakeFiles/base.dir/flags.make
src/util/base/CMakeFiles/base.dir/Condition.cc.o: ../src/util/base/Condition.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/git/lzh_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/util/base/CMakeFiles/base.dir/Condition.cc.o"
	cd /root/git/lzh_project/build/src/util/base && c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/base.dir/Condition.cc.o -c /root/git/lzh_project/src/util/base/Condition.cc

src/util/base/CMakeFiles/base.dir/Condition.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/Condition.cc.i"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/git/lzh_project/src/util/base/Condition.cc > CMakeFiles/base.dir/Condition.cc.i

src/util/base/CMakeFiles/base.dir/Condition.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/Condition.cc.s"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/git/lzh_project/src/util/base/Condition.cc -o CMakeFiles/base.dir/Condition.cc.s

src/util/base/CMakeFiles/base.dir/CountDownLatch.cc.o: src/util/base/CMakeFiles/base.dir/flags.make
src/util/base/CMakeFiles/base.dir/CountDownLatch.cc.o: ../src/util/base/CountDownLatch.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/git/lzh_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/util/base/CMakeFiles/base.dir/CountDownLatch.cc.o"
	cd /root/git/lzh_project/build/src/util/base && c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/base.dir/CountDownLatch.cc.o -c /root/git/lzh_project/src/util/base/CountDownLatch.cc

src/util/base/CMakeFiles/base.dir/CountDownLatch.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/CountDownLatch.cc.i"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/git/lzh_project/src/util/base/CountDownLatch.cc > CMakeFiles/base.dir/CountDownLatch.cc.i

src/util/base/CMakeFiles/base.dir/CountDownLatch.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/CountDownLatch.cc.s"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/git/lzh_project/src/util/base/CountDownLatch.cc -o CMakeFiles/base.dir/CountDownLatch.cc.s

src/util/base/CMakeFiles/base.dir/CurrentThread.cc.o: src/util/base/CMakeFiles/base.dir/flags.make
src/util/base/CMakeFiles/base.dir/CurrentThread.cc.o: ../src/util/base/CurrentThread.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/git/lzh_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/util/base/CMakeFiles/base.dir/CurrentThread.cc.o"
	cd /root/git/lzh_project/build/src/util/base && c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/base.dir/CurrentThread.cc.o -c /root/git/lzh_project/src/util/base/CurrentThread.cc

src/util/base/CMakeFiles/base.dir/CurrentThread.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/CurrentThread.cc.i"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/git/lzh_project/src/util/base/CurrentThread.cc > CMakeFiles/base.dir/CurrentThread.cc.i

src/util/base/CMakeFiles/base.dir/CurrentThread.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/CurrentThread.cc.s"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/git/lzh_project/src/util/base/CurrentThread.cc -o CMakeFiles/base.dir/CurrentThread.cc.s

src/util/base/CMakeFiles/base.dir/Date.cc.o: src/util/base/CMakeFiles/base.dir/flags.make
src/util/base/CMakeFiles/base.dir/Date.cc.o: ../src/util/base/Date.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/git/lzh_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/util/base/CMakeFiles/base.dir/Date.cc.o"
	cd /root/git/lzh_project/build/src/util/base && c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/base.dir/Date.cc.o -c /root/git/lzh_project/src/util/base/Date.cc

src/util/base/CMakeFiles/base.dir/Date.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/Date.cc.i"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/git/lzh_project/src/util/base/Date.cc > CMakeFiles/base.dir/Date.cc.i

src/util/base/CMakeFiles/base.dir/Date.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/Date.cc.s"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/git/lzh_project/src/util/base/Date.cc -o CMakeFiles/base.dir/Date.cc.s

src/util/base/CMakeFiles/base.dir/Exception.cc.o: src/util/base/CMakeFiles/base.dir/flags.make
src/util/base/CMakeFiles/base.dir/Exception.cc.o: ../src/util/base/Exception.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/git/lzh_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/util/base/CMakeFiles/base.dir/Exception.cc.o"
	cd /root/git/lzh_project/build/src/util/base && c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/base.dir/Exception.cc.o -c /root/git/lzh_project/src/util/base/Exception.cc

src/util/base/CMakeFiles/base.dir/Exception.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/Exception.cc.i"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/git/lzh_project/src/util/base/Exception.cc > CMakeFiles/base.dir/Exception.cc.i

src/util/base/CMakeFiles/base.dir/Exception.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/Exception.cc.s"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/git/lzh_project/src/util/base/Exception.cc -o CMakeFiles/base.dir/Exception.cc.s

src/util/base/CMakeFiles/base.dir/FileUtil.cc.o: src/util/base/CMakeFiles/base.dir/flags.make
src/util/base/CMakeFiles/base.dir/FileUtil.cc.o: ../src/util/base/FileUtil.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/git/lzh_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/util/base/CMakeFiles/base.dir/FileUtil.cc.o"
	cd /root/git/lzh_project/build/src/util/base && c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/base.dir/FileUtil.cc.o -c /root/git/lzh_project/src/util/base/FileUtil.cc

src/util/base/CMakeFiles/base.dir/FileUtil.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/FileUtil.cc.i"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/git/lzh_project/src/util/base/FileUtil.cc > CMakeFiles/base.dir/FileUtil.cc.i

src/util/base/CMakeFiles/base.dir/FileUtil.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/FileUtil.cc.s"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/git/lzh_project/src/util/base/FileUtil.cc -o CMakeFiles/base.dir/FileUtil.cc.s

src/util/base/CMakeFiles/base.dir/LogFile.cc.o: src/util/base/CMakeFiles/base.dir/flags.make
src/util/base/CMakeFiles/base.dir/LogFile.cc.o: ../src/util/base/LogFile.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/git/lzh_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/util/base/CMakeFiles/base.dir/LogFile.cc.o"
	cd /root/git/lzh_project/build/src/util/base && c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/base.dir/LogFile.cc.o -c /root/git/lzh_project/src/util/base/LogFile.cc

src/util/base/CMakeFiles/base.dir/LogFile.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/LogFile.cc.i"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/git/lzh_project/src/util/base/LogFile.cc > CMakeFiles/base.dir/LogFile.cc.i

src/util/base/CMakeFiles/base.dir/LogFile.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/LogFile.cc.s"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/git/lzh_project/src/util/base/LogFile.cc -o CMakeFiles/base.dir/LogFile.cc.s

src/util/base/CMakeFiles/base.dir/Logging.cc.o: src/util/base/CMakeFiles/base.dir/flags.make
src/util/base/CMakeFiles/base.dir/Logging.cc.o: ../src/util/base/Logging.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/git/lzh_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/util/base/CMakeFiles/base.dir/Logging.cc.o"
	cd /root/git/lzh_project/build/src/util/base && c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/base.dir/Logging.cc.o -c /root/git/lzh_project/src/util/base/Logging.cc

src/util/base/CMakeFiles/base.dir/Logging.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/Logging.cc.i"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/git/lzh_project/src/util/base/Logging.cc > CMakeFiles/base.dir/Logging.cc.i

src/util/base/CMakeFiles/base.dir/Logging.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/Logging.cc.s"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/git/lzh_project/src/util/base/Logging.cc -o CMakeFiles/base.dir/Logging.cc.s

src/util/base/CMakeFiles/base.dir/LogStream.cc.o: src/util/base/CMakeFiles/base.dir/flags.make
src/util/base/CMakeFiles/base.dir/LogStream.cc.o: ../src/util/base/LogStream.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/git/lzh_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/util/base/CMakeFiles/base.dir/LogStream.cc.o"
	cd /root/git/lzh_project/build/src/util/base && c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/base.dir/LogStream.cc.o -c /root/git/lzh_project/src/util/base/LogStream.cc

src/util/base/CMakeFiles/base.dir/LogStream.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/LogStream.cc.i"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/git/lzh_project/src/util/base/LogStream.cc > CMakeFiles/base.dir/LogStream.cc.i

src/util/base/CMakeFiles/base.dir/LogStream.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/LogStream.cc.s"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/git/lzh_project/src/util/base/LogStream.cc -o CMakeFiles/base.dir/LogStream.cc.s

src/util/base/CMakeFiles/base.dir/ProcessInfo.cc.o: src/util/base/CMakeFiles/base.dir/flags.make
src/util/base/CMakeFiles/base.dir/ProcessInfo.cc.o: ../src/util/base/ProcessInfo.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/git/lzh_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/util/base/CMakeFiles/base.dir/ProcessInfo.cc.o"
	cd /root/git/lzh_project/build/src/util/base && c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/base.dir/ProcessInfo.cc.o -c /root/git/lzh_project/src/util/base/ProcessInfo.cc

src/util/base/CMakeFiles/base.dir/ProcessInfo.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/ProcessInfo.cc.i"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/git/lzh_project/src/util/base/ProcessInfo.cc > CMakeFiles/base.dir/ProcessInfo.cc.i

src/util/base/CMakeFiles/base.dir/ProcessInfo.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/ProcessInfo.cc.s"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/git/lzh_project/src/util/base/ProcessInfo.cc -o CMakeFiles/base.dir/ProcessInfo.cc.s

src/util/base/CMakeFiles/base.dir/Timestamp.cc.o: src/util/base/CMakeFiles/base.dir/flags.make
src/util/base/CMakeFiles/base.dir/Timestamp.cc.o: ../src/util/base/Timestamp.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/git/lzh_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object src/util/base/CMakeFiles/base.dir/Timestamp.cc.o"
	cd /root/git/lzh_project/build/src/util/base && c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/base.dir/Timestamp.cc.o -c /root/git/lzh_project/src/util/base/Timestamp.cc

src/util/base/CMakeFiles/base.dir/Timestamp.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/Timestamp.cc.i"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/git/lzh_project/src/util/base/Timestamp.cc > CMakeFiles/base.dir/Timestamp.cc.i

src/util/base/CMakeFiles/base.dir/Timestamp.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/Timestamp.cc.s"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/git/lzh_project/src/util/base/Timestamp.cc -o CMakeFiles/base.dir/Timestamp.cc.s

src/util/base/CMakeFiles/base.dir/Thread.cc.o: src/util/base/CMakeFiles/base.dir/flags.make
src/util/base/CMakeFiles/base.dir/Thread.cc.o: ../src/util/base/Thread.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/git/lzh_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object src/util/base/CMakeFiles/base.dir/Thread.cc.o"
	cd /root/git/lzh_project/build/src/util/base && c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/base.dir/Thread.cc.o -c /root/git/lzh_project/src/util/base/Thread.cc

src/util/base/CMakeFiles/base.dir/Thread.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/Thread.cc.i"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/git/lzh_project/src/util/base/Thread.cc > CMakeFiles/base.dir/Thread.cc.i

src/util/base/CMakeFiles/base.dir/Thread.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/Thread.cc.s"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/git/lzh_project/src/util/base/Thread.cc -o CMakeFiles/base.dir/Thread.cc.s

src/util/base/CMakeFiles/base.dir/ThreadPool.cc.o: src/util/base/CMakeFiles/base.dir/flags.make
src/util/base/CMakeFiles/base.dir/ThreadPool.cc.o: ../src/util/base/ThreadPool.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/git/lzh_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object src/util/base/CMakeFiles/base.dir/ThreadPool.cc.o"
	cd /root/git/lzh_project/build/src/util/base && c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/base.dir/ThreadPool.cc.o -c /root/git/lzh_project/src/util/base/ThreadPool.cc

src/util/base/CMakeFiles/base.dir/ThreadPool.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/ThreadPool.cc.i"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/git/lzh_project/src/util/base/ThreadPool.cc > CMakeFiles/base.dir/ThreadPool.cc.i

src/util/base/CMakeFiles/base.dir/ThreadPool.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/ThreadPool.cc.s"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/git/lzh_project/src/util/base/ThreadPool.cc -o CMakeFiles/base.dir/ThreadPool.cc.s

src/util/base/CMakeFiles/base.dir/TimeZone.cc.o: src/util/base/CMakeFiles/base.dir/flags.make
src/util/base/CMakeFiles/base.dir/TimeZone.cc.o: ../src/util/base/TimeZone.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/git/lzh_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object src/util/base/CMakeFiles/base.dir/TimeZone.cc.o"
	cd /root/git/lzh_project/build/src/util/base && c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/base.dir/TimeZone.cc.o -c /root/git/lzh_project/src/util/base/TimeZone.cc

src/util/base/CMakeFiles/base.dir/TimeZone.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/base.dir/TimeZone.cc.i"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/git/lzh_project/src/util/base/TimeZone.cc > CMakeFiles/base.dir/TimeZone.cc.i

src/util/base/CMakeFiles/base.dir/TimeZone.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/base.dir/TimeZone.cc.s"
	cd /root/git/lzh_project/build/src/util/base && c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/git/lzh_project/src/util/base/TimeZone.cc -o CMakeFiles/base.dir/TimeZone.cc.s

# Object files for target base
base_OBJECTS = \
"CMakeFiles/base.dir/AsyncLogging.cc.o" \
"CMakeFiles/base.dir/Condition.cc.o" \
"CMakeFiles/base.dir/CountDownLatch.cc.o" \
"CMakeFiles/base.dir/CurrentThread.cc.o" \
"CMakeFiles/base.dir/Date.cc.o" \
"CMakeFiles/base.dir/Exception.cc.o" \
"CMakeFiles/base.dir/FileUtil.cc.o" \
"CMakeFiles/base.dir/LogFile.cc.o" \
"CMakeFiles/base.dir/Logging.cc.o" \
"CMakeFiles/base.dir/LogStream.cc.o" \
"CMakeFiles/base.dir/ProcessInfo.cc.o" \
"CMakeFiles/base.dir/Timestamp.cc.o" \
"CMakeFiles/base.dir/Thread.cc.o" \
"CMakeFiles/base.dir/ThreadPool.cc.o" \
"CMakeFiles/base.dir/TimeZone.cc.o"

# External object files for target base
base_EXTERNAL_OBJECTS =

lib/libbase.so: src/util/base/CMakeFiles/base.dir/AsyncLogging.cc.o
lib/libbase.so: src/util/base/CMakeFiles/base.dir/Condition.cc.o
lib/libbase.so: src/util/base/CMakeFiles/base.dir/CountDownLatch.cc.o
lib/libbase.so: src/util/base/CMakeFiles/base.dir/CurrentThread.cc.o
lib/libbase.so: src/util/base/CMakeFiles/base.dir/Date.cc.o
lib/libbase.so: src/util/base/CMakeFiles/base.dir/Exception.cc.o
lib/libbase.so: src/util/base/CMakeFiles/base.dir/FileUtil.cc.o
lib/libbase.so: src/util/base/CMakeFiles/base.dir/LogFile.cc.o
lib/libbase.so: src/util/base/CMakeFiles/base.dir/Logging.cc.o
lib/libbase.so: src/util/base/CMakeFiles/base.dir/LogStream.cc.o
lib/libbase.so: src/util/base/CMakeFiles/base.dir/ProcessInfo.cc.o
lib/libbase.so: src/util/base/CMakeFiles/base.dir/Timestamp.cc.o
lib/libbase.so: src/util/base/CMakeFiles/base.dir/Thread.cc.o
lib/libbase.so: src/util/base/CMakeFiles/base.dir/ThreadPool.cc.o
lib/libbase.so: src/util/base/CMakeFiles/base.dir/TimeZone.cc.o
lib/libbase.so: src/util/base/CMakeFiles/base.dir/build.make
lib/libbase.so: src/util/base/CMakeFiles/base.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/git/lzh_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking CXX shared library ../../../lib/libbase.so"
	cd /root/git/lzh_project/build/src/util/base && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/base.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/util/base/CMakeFiles/base.dir/build: lib/libbase.so

.PHONY : src/util/base/CMakeFiles/base.dir/build

src/util/base/CMakeFiles/base.dir/clean:
	cd /root/git/lzh_project/build/src/util/base && $(CMAKE_COMMAND) -P CMakeFiles/base.dir/cmake_clean.cmake
.PHONY : src/util/base/CMakeFiles/base.dir/clean

src/util/base/CMakeFiles/base.dir/depend:
	cd /root/git/lzh_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/git/lzh_project /root/git/lzh_project/src/util/base /root/git/lzh_project/build /root/git/lzh_project/build/src/util/base /root/git/lzh_project/build/src/util/base/CMakeFiles/base.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/util/base/CMakeFiles/base.dir/depend

