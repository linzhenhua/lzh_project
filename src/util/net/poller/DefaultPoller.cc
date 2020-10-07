#include <stdlib.h>

#include "util/net/Poller.h"
#include "PollPoller.h"
#include "EPollPoller.h"

using namespace base::net;

Poller* Poller::newDefaultPoller(EventLoop* loop) {
  if (::getenv("USE_POLL")) {
    return new PollPoller(loop);
  } else {
    return new EPollPoller(loop);
  }
}