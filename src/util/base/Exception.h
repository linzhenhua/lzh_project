#ifndef BASE_EXCEPTION_H
#define BASE_EXCEPTION_H

#include "base/Types.h"
#include <exception>

namespace base {

    class Exception : public std::exception {
    public:
        Exception(string what);
        ~Exception() noexcept override = default;

        // default copy-ctor and operator= are okay.

        const char *what() const noexcept override {
            return message_.c_str();
        }

        const char *stackTrace() const noexcept {
            return stack_.c_str();
        }

    private:
        string message_;
        string stack_;
    };

}  // namespace base

#endif  // BASE_EXCEPTION_H
