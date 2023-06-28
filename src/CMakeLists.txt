set(SOURCE_DIR
  main.cc
)

add_subdirectory(asio_test/)
# add_subdirectory(barbaraLiskov/)
# add_subdirectory(bridge/)
# add_subdirectory(builder/)
# add_subdirectory(c_pointer_test/)
# add_subdirectory(composite/)
add_subdirectory(ctpl/)
# add_subdirectory(decorator/)
add_subdirectory(echo/)
add_subdirectory(nrf/)
# add_subdirectory(ocp/)
add_subdirectory(optional_test/)
add_subdirectory(plugin_test/)
# add_subdirectory(prototype/)
add_subdirectory(util/)

add_executable(${project_name} ${SOURCE_DIR})
target_link_libraries(${project_name}
 echo
 )
