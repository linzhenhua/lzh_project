#include "asio_test.h"

#include <asio/co_spawn.hpp>
#include <asio/detached.hpp>
#include <asio/io_context.hpp>
#include <asio/ip/tcp.hpp>
#include <asio/signal_set.hpp>
#include <asio/write.hpp>

#include <algorithm>
#include <iostream>
#include <string>
#include <thread>

using asio::awaitable;
using asio::co_spawn;
using asio::detached;
using asio::use_awaitable;
using asio::ip::tcp;
namespace this_coro = asio::this_coro;

#if defined(ASIO_ENABLE_HANDLER_TRACKING)
#define use_awaitable \
  asio::use_awaitable_t(__FILE__, __LINE__, __PRETTY_FUNCTION__)
#endif

awaitable<void> echo(tcp::socket socket) {
  try {
    char data[1024] = {'\0'};
    for (;;) {
      std::size_t n =
          co_await socket.async_read_some(asio::buffer(data), use_awaitable);
      std::cout << "recv: " << data << std::endl;
      co_await async_write(socket, asio::buffer(data, n), use_awaitable);
      std::fill(data, data + sizeof(data), '\0');
    }
  } catch (std::exception& e) {
    std::cout << "echo Exception: " << e.what() << std::endl;
  }
}

awaitable<void> listener() {
  auto executor = co_await this_coro::executor;
  tcp::acceptor acceptor(executor, {tcp::v4(), 55555});
  for (;;) {
    tcp::socket socket = co_await acceptor.async_accept(use_awaitable);
    co_spawn(executor, echo(std::move(socket)), detached);
  }
}

void coro_test() {
  try {
    asio::io_context io_context(std::thread::hardware_concurrency());
    asio::signal_set signals(io_context, SIGINT, SIGTERM);
    signals.async_wait([&](auto, auto) { io_context.stop(); });

    co_spawn(io_context, listener(), detached);

    io_context.run();
  } catch (std::exception& e) {
    std::cout << "Exception: " << e.what() << std::endl;
  }
}