set(pointer_SRCS
  pointer.cc
  )

# 生成动态库(SHARED)
add_library(pointer SHARED ${pointer_SRCS})

# 安装文件到目录下
install(TARGETS pointer LIBRARY DESTINATION ${PROJECT_SOURCE_DIR}/lib)
