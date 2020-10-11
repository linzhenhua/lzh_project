set(net_SRCS
  Acceptor.cc
  Buffer.cc
  Channel.cc
  Connector.cc
  EventLoop.cc
  EventLoopThread.cc
  EventLoopThreadPool.cc
  InetAddress.cc
  Poller.cc
  poller/DefaultPoller.cc
  poller/EPollPoller.cc
  poller/PollPoller.cc
  Socket.cc
  SocketsOps.cc
  TcpClient.cc
  TcpConnection.cc
  TcpServer.cc
  Timer.cc
  TimerQueue.cc
  )

# 生成动态库(SHARED)
add_library(net SHARED ${net_SRCS})
target_link_libraries(net base)

# 安装文件到目录下
install(TARGETS net LIBRARY DESTINATION ${PROJECT_SOURCE_DIR}/lib)