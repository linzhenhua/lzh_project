set(SOURCE_DIR
  main.cc
)

add_subdirectory(util/)
add_subdirectory(echo/)

add_executable(${project_name} ${SOURCE_DIR})
target_link_libraries(${project_name} base net echo)