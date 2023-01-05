cmake_minimum_required(VERSION 3.10)
project(uvw_static_lib_client)

set(CMAKE_CXX_STANDARD 17)

include(cmake/BuildDefaults.cmake)

fetch_content_libuv()
fetch_content_uvw()

add_executable(uvw-sample-app main.cpp)
target_link_libraries(uvw-sample-app uvw uv dl pthread)
target_compile_definitions(uvw-sample-app PUBLIC -DUVW_AS_LIB)

install(EXPORT uvwSampleAppConfig NAMESPACE uvwSampleApp:: DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/uvw-sample-app)
install(TARGETS uvw-sample-app EXPORT uvwSampleAppConfig ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR})
