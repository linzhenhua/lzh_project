# Install script for directory: /root/git/lzh_project/src/util/net

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
  if(EXISTS "$ENV{DESTDIR}/root/git/lzh_project/lib/libnet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/root/git/lzh_project/lib/libnet.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/root/git/lzh_project/lib/libnet.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/git/lzh_project/lib/libnet.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/git/lzh_project/lib" TYPE SHARED_LIBRARY FILES "/root/git/lzh_project/build/lib/libnet.so")
  if(EXISTS "$ENV{DESTDIR}/root/git/lzh_project/lib/libnet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/root/git/lzh_project/lib/libnet.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/root/git/lzh_project/lib/libnet.so"
         OLD_RPATH "/root/git/lzh_project/build/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/root/git/lzh_project/lib/libnet.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/git/lzh_project/include/net/Buffer.h;/root/git/lzh_project/include/net/Callbacks.h;/root/git/lzh_project/include/net/Channel.h;/root/git/lzh_project/include/net/Endian.h;/root/git/lzh_project/include/net/EventLoop.h;/root/git/lzh_project/include/net/EventLoopThread.h;/root/git/lzh_project/include/net/EventLoopThreadPool.h;/root/git/lzh_project/include/net/InetAddress.h;/root/git/lzh_project/include/net/TcpClient.h;/root/git/lzh_project/include/net/TcpConnection.h;/root/git/lzh_project/include/net/TcpServer.h;/root/git/lzh_project/include/net/TimerId.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/git/lzh_project/include/net" TYPE FILE FILES
    "/root/git/lzh_project/src/util/net/Buffer.h"
    "/root/git/lzh_project/src/util/net/Callbacks.h"
    "/root/git/lzh_project/src/util/net/Channel.h"
    "/root/git/lzh_project/src/util/net/Endian.h"
    "/root/git/lzh_project/src/util/net/EventLoop.h"
    "/root/git/lzh_project/src/util/net/EventLoopThread.h"
    "/root/git/lzh_project/src/util/net/EventLoopThreadPool.h"
    "/root/git/lzh_project/src/util/net/InetAddress.h"
    "/root/git/lzh_project/src/util/net/TcpClient.h"
    "/root/git/lzh_project/src/util/net/TcpConnection.h"
    "/root/git/lzh_project/src/util/net/TcpServer.h"
    "/root/git/lzh_project/src/util/net/TimerId.h"
    )
endif()

