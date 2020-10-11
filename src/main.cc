#include <unistd.h>

#include <iostream>

#include <util/net/EventLoop.h>
#include <util/base/Logging.h>
#include <echo/EchoServer.h>

int main(int argc, char **argv) {
  std::cout << "cmake test" << std::endl;

  LOG_INFO << "pid = " << getpid();
  base::net::EventLoop loop;

  EchoServer echoServer(&loop, base::net::InetAddress(2007));
  echoServer.start();

  loop.loop();

  return 0;
}