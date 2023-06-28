set(asio_test_SRCS
  asio_test.cc
  )

# 生成动态库(SHARED)
add_library(asio_test SHARED ${asio_test_SRCS})

# 安装文件到目录下
install(TARGETS asio_test LIBRARY DESTINATION ${PROJECT_SOURCE_DIR}/lib)
