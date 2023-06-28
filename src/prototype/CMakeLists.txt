set(prototype_SRCS
  prototype.cc
  )

# 生成动态库(SHARED)
add_library(prototype SHARED ${prototype_SRCS})

# 安装文件到目录下
install(TARGETS prototype LIBRARY DESTINATION ${PROJECT_SOURCE_DIR}/lib)
