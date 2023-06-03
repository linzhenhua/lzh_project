set(SOURCE_DIR
 main.cc
)

add_subdirectory(lib/)

include_directories(${PROJECT_SOURCE_DIR}/src/nrf/nrfInterface/lib
 )

add_executable(nNRF ${SOURCE_DIR})
target_link_libraries(nNRF
 nghttp2_asio
 )
