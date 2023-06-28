set(barbaraLiskov_SRCS
 barbaraLiskov.cc
  )

# 生成动态库(SHARED)
add_library(barbaraLiskov SHARED ${barbaraLiskov_SRCS})

# 安装文件到目录下
install(TARGETS barbaraLiskov LIBRARY DESTINATION ${PROJECT_SOURCE_DIR}/lib)
