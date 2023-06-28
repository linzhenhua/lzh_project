set(ocp_SRCS
 ocp.cc
  )

# 生成动态库(SHARED)
add_library(ocp_test SHARED ${ocp_SRCS})

# 安装文件到目录下
install(TARGETS ocp_test LIBRARY DESTINATION ${PROJECT_SOURCE_DIR}/lib)
