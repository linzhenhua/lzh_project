add_definitions(-DHAVE_CONFIG_H)

add_subdirectory(llhttp/)
add_subdirectory(url-parser/)

set(nghttp2_asio_SRCS
 util.cc 
 http2.cc
 tls.cc
 timegm.c
 asio_common.cc
 asio_io_service_pool.cc
 asio_server_http2.cc
 asio_server_http2_impl.cc
 asio_server.cc
 asio_server_http2_handler.cc
 asio_server_request.cc
 asio_server_request_impl.cc
 asio_server_response.cc
 asio_server_response_impl.cc
 asio_server_stream.cc
 asio_server_serve_mux.cc
 asio_server_request_handler.cc
 asio_server_tls_context.cc
 asio_client_session.cc
 asio_client_session_impl.cc
 asio_client_session_tcp_impl.cc
 asio_client_session_tls_impl.cc
 asio_client_response.cc
 asio_client_response_impl.cc
 asio_client_request.cc
 asio_client_request_impl.cc
 asio_client_stream.cc
 asio_client_tls_context.cc
 )

 # 添加多个头文件搜索路径
include_directories(${PROJECT_SOURCE_DIR}/src/nrf/nrfInterface/lib
 )

# 生成动态库(SHARED)
add_library(nghttp2_asio SHARED ${nghttp2_asio_SRCS})
target_link_libraries(nghttp2_asio
 llhttp
 url_parser
 nghttp2
 boost_system
 ssl
 crypto)

# 安装文件到目录下
install(TARGETS nghttp2_asio LIBRARY DESTINATION ${PROJECT_SOURCE_DIR}/lib)