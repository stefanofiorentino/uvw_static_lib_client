cmake_minimum_required(VERSION 3.10)
project(uvw_static_lib_client)

set(CMAKE_CXX_STANDARD 17)

include(cmake/BuildDefaults.cmake)

fetch_content_libuv()
fetch_content_uvw()

# in case of uvw built with BUILD_UVW_LIBS=OFF
add_executable(uvw_header_only_client main.cpp)
target_link_libraries(uvw_header_only_client uv_a dl pthread)

# in case of uvw built with BUILD_UVW_LIBS=ON
add_executable(uvw_static_lib_client main.cpp)
target_link_libraries(uvw_static_lib_client uvw-static uv_a dl pthread)
target_compile_definitions(uvw_static_lib_client PUBLIC -DUVW_AS_LIB)


