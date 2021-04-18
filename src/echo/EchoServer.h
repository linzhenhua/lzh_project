#ifndef ECHO_H
#define ECHO_H

#include <util/net/TcpServer.h>

class EchoServer {
 public:
  EchoServer(base::net::EventLoop* loop,
             const base::net::InetAddress& listenAddr);

  void start();

 private:
  void onConnection(const base::net::TcpConnectionPtr& conn);

  void onMessage(const base::net::TcpConnectionPtr& conn,
                 base::net::Buffer* buf, base::Timestamp time);

  base::net::TcpServer server_;
};

void echo_test();

#endif
