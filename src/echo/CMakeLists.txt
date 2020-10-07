set(echo_SRCS
  EchoServer.cc
  )

# 生成动态库(SHARED)
add_library(echo SHARED ${echo_SRCS})
target_link_libraries(echo
 base
 net)

# 安装文件到目录下
install(TARGETS echo LIBRARY DESTINATION ${PROJECT_SOURCE_DIR}/lib)
