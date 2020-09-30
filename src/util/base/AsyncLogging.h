#ifndef BASE_ASYNCLOGGING_H
#define BASE_ASYNCLOGGING_H

#include "base/BlockingQueue.h"
#include "base/BoundedBlockingQueue.h"
#include "base/CountDownLatch.h"
#include "base/Mutex.h"
#include "base/Thread.h"
#include "base/LogStream.h"

#include <atomic>
#include <vector>

namespace base {

class AsyncLogging : noncopyable {
 public:
  AsyncLogging(const string &basename, off_t rollSize, int flushInterval = 3);

  ~AsyncLogging() {
    if (running_) {
      stop();
    }
  }

  void append(const char *logline, int len);

  void start() {
    running_ = true;
    thread_.start();
    latch_.wait();
  }

  void stop() NO_THREAD_SAFETY_ANALYSIS {
    running_ = false;
    cond_.notify();
    thread_.join();
  }

 private:
  void threadFunc();

  typedef base::detail::FixedBuffer<base::detail::kLargeBuffer> Buffer;
  typedef std::vector<std::unique_ptr<Buffer>> BufferVector;
  typedef BufferVector::value_type BufferPtr;

  const int flushInterval_;
  std::atomic<bool> running_;
  const string basename_;
  const off_t rollSize_;
  base::Thread thread_;
  base::CountDownLatch latch_;
  base::MutexLock mutex_;
  base::Condition cond_ GUARDED_BY(mutex_);
  BufferPtr currentBuffer_ GUARDED_BY(mutex_);
  BufferPtr nextBuffer_ GUARDED_BY(mutex_);
  BufferVector buffers_ GUARDED_BY(mutex_);
};

}  // namespace base

#endif  // BASE_ASYNCLOGGING_H
