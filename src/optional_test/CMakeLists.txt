set(optional_SRCS
 optional_test.cc
  )

# 生成动态库(SHARED)
add_library(optional SHARED ${optional_SRCS})

# 安装文件到目录下
install(TARGETS optional LIBRARY DESTINATION ${PROJECT_SOURCE_DIR}/lib)
