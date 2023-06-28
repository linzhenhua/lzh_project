set(ctpl_SRCS
 ctpl.cc
  )

# 生成动态库(SHARED)
add_library(ctpl SHARED ${ctpl_SRCS})

# 安装文件到目录下
install(TARGETS ctpl LIBRARY DESTINATION ${PROJECT_SOURCE_DIR}/lib)
