set(SOURCE_DIR
  main.cc
)

add_subdirectory(util/base/)
add_subdirectory(util/net/)

add_executable(${project_name} ${SOURCE_DIR})
target_link_libraries(${project_name} base net)