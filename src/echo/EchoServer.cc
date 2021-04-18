#include <unistd.h>

#include <iostream>

#include <util/net/EventLoop.h>
#include <util/base/Logging.h>
#include <util/base/Logging.h>

#include "EchoServer.h"

using std::placeholders::_1;
using std::placeholders::_2;
using std::placeholders::_3;

using namespace base;
using namespace base::net;

EchoServer::EchoServer(EventLoop* loop, const InetAddress& listenAddr)
    : server_(loop, listenAddr, "EchoServer") {
  server_.setConnectionCallback(std::bind(&EchoServer::onConnection, this, _1));
  server_.setMessageCallback(
      std::bind(&EchoServer::onMessage, this, _1, _2, _3));
}

void EchoServer::start() { server_.start(); }

void EchoServer::onConnection(const TcpConnectionPtr& conn) {
  LOG_INFO << "EchoServer - " << conn->peerAddress().toIpPort() << " -> "
           << conn->localAddress().toIpPort() << " is "
           << (conn->connected() ? "UP" : "DOWN");
}

void EchoServer::onMessage(const TcpConnectionPtr& conn, Buffer* buf,
                           Timestamp time) {
  base::string msg(buf->retrieveAllAsString());
  LOG_INFO << conn->name() << " echo " << msg.size() << " bytes, "
           << "data received at " << time.toString();
  conn->send(msg);
}

void echo_test() {
  std::cout << "cmake test" << std::endl;

  LOG_INFO << "pid = " << getpid();
  base::net::EventLoop loop;

  EchoServer echoServer(&loop, base::net::InetAddress(2006));
  echoServer.start();

  loop.loop();
}