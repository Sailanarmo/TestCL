cmake_minimum_required(VERSION 3.0)
project(OpenCL_TEST)

find_package(OpenCL REQUIRED)

include_directories(${OpenCL_INCLUDE_DIR})
#target_link_libraries(${OpenCL_LIBRARIES})

add_executable(CLTEST main.cpp)
