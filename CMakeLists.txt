# cmake版本要求
cmake_minimum_required(VERSION 3.6)

set(CMAKE_C_COMPILER /usr/bin/gcc)
set(CMAKE_CXX_COMPILER /usr/bin/g++)
# set(CMAKE_C_COMPILER /usr/local/bin/gcc)
# set(CMAKE_CXX_COMPILER /usr/local/bin/g++)

# 设置可执行文件名字
set(project_name test)
project(${project_name})

# 设置默认为Debug版本
if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE "RelWithDebInfo")
endif()

# 设置C++编译选项
set(CMAKE_CXX_FLAGS_DEBUG "-O0 -g")
set(CMAKE_CXX_FLAGS_RELEASE "-g -O2 -DNDEBUG")
set(CMAKE_CXX_FLAGS
 -g
 -DCHECK_PTHREAD_RETURN_VALUE
 -D_FILE_OFFSET_BITS=64
 #-Wall
 #-Wextra
 #-Werror
 # -Wconversion
 #-Wno-unused-parameter
 # -Wold-style-cast
 #-Woverloaded-virtual
 #-Wpointer-arith
 #-Wshadow
 #-Wwrite-strings
 -march=native
 -std=c++20
 -rdynamic
 )

string(REPLACE ";" " " CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")

message(STATUS "CMAKE_CXX_FLAGS: " "${CMAKE_CXX_FLAGS}")

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)

find_package(Boost REQUIRED)

# 添加多个头文件搜索路径
include_directories(
    ${PROJECT_SOURCE_DIR}/src
    ${PROJECT_SOURCE_DIR}/thirdparty/include
 )

 link_directories(${PROJECT_SOURCE_DIR}/thirdparty/lib/nghttp2)

add_subdirectory(src/)
