set(plugin_SRCS
 plugin_test.cc
  )

# 生成动态库(SHARED)
add_library(plugin SHARED ${plugin_SRCS})

# 安装文件到目录下
install(TARGETS plugin LIBRARY DESTINATION ${PROJECT_SOURCE_DIR}/lib)
