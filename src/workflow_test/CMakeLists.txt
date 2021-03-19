set(workflowtest_SRCS
  tutorial-01-wget.cc
  )

# 生成动态库(SHARED)
add_library(workflowtest SHARED ${workflowtest_SRCS})
target_link_libraries(workflowtest
 workflow)

# 安装文件到目录下
install(TARGETS workflowtest LIBRARY DESTINATION ${PROJECT_SOURCE_DIR}/lib)
