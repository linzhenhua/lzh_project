set(SOURCE_DIR
  main.cc
)

add_subdirectory(util/)
add_subdirectory(echo/)
add_subdirectory(workflow_test/)

add_executable(${project_name} ${SOURCE_DIR})
target_link_libraries(${project_name}
 workflowtest
 echo
 )
