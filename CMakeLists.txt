cmake_minimum_required(VERSION 3.10)
project(uvw_static_lib_client)

set(CMAKE_CXX_STANDARD 17)
set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

include(cmake/BuildDefaults.cmake)

fetch_content_libuv()
fetch_content_uvw()

if (NOT WIN32)
    set(DL_LINKING dl)
endif()

add_executable(uvw-sample-app main.cpp)
target_link_libraries(uvw-sample-app uvw uv ${DL_LINKING} Threads::Threads)
target_compile_definitions(uvw-sample-app PUBLIC -DUVW_AS_LIB)

install(TARGETS uvw-sample-app EXPORT uvwSampleAppConfig ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR})
