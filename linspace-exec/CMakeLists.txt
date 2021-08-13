cmake_minimum_required(VERSION 3.0 FATAL_ERROR)
project(linspace)

find_package(Torch REQUIRED)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${TORCH_CXX_FLAGS}")

add_executable(linspace linspace.cpp)
target_link_libraries(linspace "${TORCH_LIBRARIES}")
set_property(TARGET linspace PROPERTY CXX_STANDARD 14)
