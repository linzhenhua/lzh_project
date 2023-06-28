set(composite_SRCS
 composite.cc
  )

# 生成动态库(SHARED)
add_library(composite SHARED ${composite_SRCS})

# 安装文件到目录下
install(TARGETS composite LIBRARY DESTINATION ${PROJECT_SOURCE_DIR}/lib)
