#ifndef NET_TIMERID_H
#define NET_TIMERID_H

#include "util/base/copyable.h"

namespace base {
namespace net {

class Timer;

///
/// An opaque identifier, for canceling Timer.
///
class TimerId : public base::copyable {
 public:
  TimerId() : timer_(NULL), sequence_(0) {}

  TimerId(Timer *timer, int64_t seq) : timer_(timer), sequence_(seq) {}

  // default copy-ctor, dtor and assignment are okay

  friend class TimerQueue;

 private:
  Timer *timer_;
  int64_t sequence_;
};

}  // namespace net
}  // namespace base

#endif  // NET_TIMERID_H
