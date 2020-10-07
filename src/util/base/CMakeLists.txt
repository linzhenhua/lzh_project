set(base_SRCS
  AsyncLogging.cc
  Condition.cc
  CountDownLatch.cc
  CurrentThread.cc
  Date.cc
  Exception.cc
  FileUtil.cc
  LogFile.cc
  Logging.cc
  LogStream.cc
  ProcessInfo.cc
  Timestamp.cc
  Thread.cc
  ThreadPool.cc
  TimeZone.cc
  )

# 生成动态库(SHARED)
add_library(base SHARED ${base_SRCS})
target_link_libraries(base pthread rt)

# 安装文件到目录下
install(TARGETS base LIBRARY DESTINATION ${PROJECT_SOURCE_DIR}/lib)
