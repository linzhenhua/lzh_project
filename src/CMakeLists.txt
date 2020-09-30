# cmake版本要求
cmake_minimum_required(VERSION 3.10)

# 设置可执行文件名字
set(project_name cmake_test)
project(${project_name})

# 设置C++编译选项
set(CMAKE_CXX_COMPILER "c++")
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_CXX_FLAGS 
-g 
-Wall 
-Wextra 
-Werror 
-Wconversion 
-Wno-unused-parameter 
-Wold-style-cast 
-Woverloaded-virtual 
-Wpointer-arith 
-Wshadow 
-Wwrite-strings 
-march=native)
message(STATUS "CMAKE_CXX_FLAGS: " "${CMAKE_CXX_FLAGS}")
string(REPLACE ";" " " CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY bin/)

message(STATUS "source dir: " ${PROJECT_SOURCE_DIR})
message(STATUS "binary dir: " ${PROJECT_BINARY_DIR})
message(STATUS "output dir: " "${PROJECT_BINARY_DIR}/${CMAKE_RUNTIME_OUTPUT_DIRECTORY}")

# 添加多个头文件搜索路径
include_directories(util/base/ util/net/)

# 在目录中查找所有源文件，并将这些源文件存储在变量 SOURCE_DIR 中；需要注意这个指令不会递归包含子目录
aux_source_directory(util/base/ util/net/ SOURCE_DIR)

set(base src/util/base)
set(net src/util/net)

# 使用指定的源文件生成库文件
add_library(base SHARED ${base}
add_library(net SHARED ${net})

add_executable(${project_name} ${SOURCE_DIR})
target_link_libraries(${project_name} base net)




