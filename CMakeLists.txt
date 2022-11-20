cmake_minimum_required(VERSION 3.20)
project(QtDockerExample)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(Qt6 COMPONENTS Core Widgets)

set(SOURCE_FILES main.cpp)
set(LIBS Qt6::Core Qt6::Widgets)

add_executable(QtDockerExample ${SOURCE_FILES})

target_link_libraries(QtDockerExample ${LIBS})