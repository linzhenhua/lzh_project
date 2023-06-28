set(bridge_SRCS
 bridge.cc
  )

# 生成动态库(SHARED)
add_library(bridge SHARED ${bridge_SRCS})

# 安装文件到目录下
install(TARGETS bridge LIBRARY DESTINATION ${PROJECT_SOURCE_DIR}/lib)
