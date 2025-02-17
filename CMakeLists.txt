cmake_minimum_required(VERSION 3.10)

project(CMakeUtilitiesTemplate
        VERSION 1.0
        LANGUAGES CXX)

if (NOT EXISTS "${CMAKE_BINARY_DIR}/bootstrap.cmake")
    file(DOWNLOAD
            "https://raw.githubusercontent.com/rawbby/cmake_utilities/refs/tags/v2.2.0/bootstrap.cmake"
            "${CMAKE_BINARY_DIR}/bootstrap.cmake")
endif ()

include("${CMAKE_BINARY_DIR}/bootstrap.cmake")
include(.cmake_utilities/all.cmake)

# bootstrap_python()
use_structured_directories()
