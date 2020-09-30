# Install script for directory: /root/git/lzh_project/src/util/base

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/root/git/lzh_project/lib/libbase.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/root/git/lzh_project/lib/libbase.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/root/git/lzh_project/lib/libbase.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/git/lzh_project/lib/libbase.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/git/lzh_project/lib" TYPE SHARED_LIBRARY FILES "/root/git/lzh_project/build/lib/libbase.so")
  if(EXISTS "$ENV{DESTDIR}/root/git/lzh_project/lib/libbase.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/root/git/lzh_project/lib/libbase.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/root/git/lzh_project/lib/libbase.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/git/lzh_project/include/base/AsyncLogging.h;/root/git/lzh_project/include/base/Atomic.h;/root/git/lzh_project/include/base/BlockingQueue.h;/root/git/lzh_project/include/base/BoundedBlockingQueue.h;/root/git/lzh_project/include/base/Condition.h;/root/git/lzh_project/include/base/CountDownLatch.h;/root/git/lzh_project/include/base/CurrentThread.h;/root/git/lzh_project/include/base/Date.h;/root/git/lzh_project/include/base/Exception.h;/root/git/lzh_project/include/base/FileUtil.h;/root/git/lzh_project/include/base/GzipFile.h;/root/git/lzh_project/include/base/LogFile.h;/root/git/lzh_project/include/base/LogStream.h;/root/git/lzh_project/include/base/Logging.h;/root/git/lzh_project/include/base/Mutex.h;/root/git/lzh_project/include/base/ProcessInfo.h;/root/git/lzh_project/include/base/Singleton.h;/root/git/lzh_project/include/base/StringPiece.h;/root/git/lzh_project/include/base/Thread.h;/root/git/lzh_project/include/base/ThreadLocal.h;/root/git/lzh_project/include/base/ThreadLocalSingleton.h;/root/git/lzh_project/include/base/ThreadPool.h;/root/git/lzh_project/include/base/TimeZone.h;/root/git/lzh_project/include/base/Timestamp.h;/root/git/lzh_project/include/base/Types.h;/root/git/lzh_project/include/base/WeakCallback.h;/root/git/lzh_project/include/base/copyable.h;/root/git/lzh_project/include/base/noncopyable.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/git/lzh_project/include/base" TYPE FILE FILES
    "/root/git/lzh_project/src/util/base/AsyncLogging.h"
    "/root/git/lzh_project/src/util/base/Atomic.h"
    "/root/git/lzh_project/src/util/base/BlockingQueue.h"
    "/root/git/lzh_project/src/util/base/BoundedBlockingQueue.h"
    "/root/git/lzh_project/src/util/base/Condition.h"
    "/root/git/lzh_project/src/util/base/CountDownLatch.h"
    "/root/git/lzh_project/src/util/base/CurrentThread.h"
    "/root/git/lzh_project/src/util/base/Date.h"
    "/root/git/lzh_project/src/util/base/Exception.h"
    "/root/git/lzh_project/src/util/base/FileUtil.h"
    "/root/git/lzh_project/src/util/base/GzipFile.h"
    "/root/git/lzh_project/src/util/base/LogFile.h"
    "/root/git/lzh_project/src/util/base/LogStream.h"
    "/root/git/lzh_project/src/util/base/Logging.h"
    "/root/git/lzh_project/src/util/base/Mutex.h"
    "/root/git/lzh_project/src/util/base/ProcessInfo.h"
    "/root/git/lzh_project/src/util/base/Singleton.h"
    "/root/git/lzh_project/src/util/base/StringPiece.h"
    "/root/git/lzh_project/src/util/base/Thread.h"
    "/root/git/lzh_project/src/util/base/ThreadLocal.h"
    "/root/git/lzh_project/src/util/base/ThreadLocalSingleton.h"
    "/root/git/lzh_project/src/util/base/ThreadPool.h"
    "/root/git/lzh_project/src/util/base/TimeZone.h"
    "/root/git/lzh_project/src/util/base/Timestamp.h"
    "/root/git/lzh_project/src/util/base/Types.h"
    "/root/git/lzh_project/src/util/base/WeakCallback.h"
    "/root/git/lzh_project/src/util/base/copyable.h"
    "/root/git/lzh_project/src/util/base/noncopyable.h"
    )
endif()

