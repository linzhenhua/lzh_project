set(builder_SRCS
 builder.cc
  )

# 生成动态库(SHARED)
add_library(builder SHARED ${builder_SRCS})

# 安装文件到目录下
install(TARGETS builder LIBRARY DESTINATION ${PROJECT_SOURCE_DIR}/lib)
