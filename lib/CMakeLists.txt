cmake_minimum_required(VERSION 3.2.1)
project (LibBeatmup)
add_library(beatmup SHARED ${BEATMUP_SOURCES} src/libbeatmup.cpp)
set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -Wfatal-errors")
if(USE_GLX)
    add_dependencies(beatmup libglewmx_static)
endif (USE_GLX)
set(PROFILE_PLATFORM_SPECIFIC_BITMAP ON)
include("../core/CMakeLists.in")