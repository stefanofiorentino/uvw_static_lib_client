cmake_minimum_required(VERSION 3.15)
project(uvw_static_lib_client)

set(CMAKE_CXX_STANDARD 17)

add_executable(uvw_static_lib_client main.cpp)
target_link_libraries(uvw_static_lib_client uv_a uvw-static)
