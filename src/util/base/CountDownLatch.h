#ifndef BASE_COUNTDOWNLATCH_H
#define BASE_COUNTDOWNLATCH_H

#include "base/Condition.h"
#include "base/Mutex.h"

namespace base {

    class CountDownLatch : noncopyable {
    public:

        explicit CountDownLatch(int count);

        void wait();

        void countDown();

        int getCount() const;

    private:
        mutable MutexLock mutex_;
        Condition condition_ GUARDED_BY(mutex_);
        int count_ GUARDED_BY(mutex_);
    };

}  // namespace base 
#endif  // BASE_COUNTDOWNLATCH_H
