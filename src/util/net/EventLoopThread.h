#ifndef NET_EVENTLOOPTHREAD_H
#define NET_EVENTLOOPTHREAD_H

#include "util/base/Condition.h"
#include "util/base/Mutex.h"
#include "util/base/Thread.h"

namespace base {
namespace net {

class EventLoop;

class EventLoopThread : noncopyable {
 public:
  typedef std::function<void(EventLoop *)> ThreadInitCallback;

  EventLoopThread(const ThreadInitCallback &cb = ThreadInitCallback(),
                  const string &name = string());
  ~EventLoopThread();
  EventLoop *startLoop();

 private:
  void threadFunc();

  EventLoop *loop_ GUARDED_BY(mutex_);
  bool exiting_;
  Thread thread_;
  MutexLock mutex_;
  Condition cond_ GUARDED_BY(mutex_);
  ThreadInitCallback callback_;
};

}  // namespace net
}  // namespace base

#endif  // NET_EVENTLOOPTHREAD_H
