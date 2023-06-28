set(decorator_SRCS
 decorator.cc
  )

# 生成动态库(SHARED)
add_library(decorator SHARED ${decorator_SRCS})

# 安装文件到目录下
install(TARGETS decorator LIBRARY DESTINATION ${PROJECT_SOURCE_DIR}/lib)
