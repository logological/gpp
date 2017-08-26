# CMakeLists.txt --- CMake project settings
#    ex) cmake -G "Visual Studio 9 2008" .
#    ex) cmake -DCMAKE_BUILD_TYPE=Release -G "MSYS Makefiles" .
##############################################################################

# CMake minimum version
cmake_minimum_required(VERSION 2.4)
CMAKE_POLICY(SET CMP0005 NEW)

# project name and language
project(gpp C)

# options
option(HAVE_STRDUP "Have strdup function" OFF)
option(HAVE_STRCASECMP "Have strcasecmp function" OFF)
option(HAVE_FNMATCH_H "Have fnmatch function" OFF)
option(WIN_NT "Is it WinNT" OFF)

include(CheckSymbolExists)
include(CheckIncludeFiles)
if(NOT(HAVE_STRDUP))
    check_symbol_exists(strdup string.h HAVE_STRDUP)
endif(NOT(HAVE_STRDUP))
if(NOT(HAVE_STRCASECMP))
    check_symbol_exists(strcasecmp string.h HAVE_STRCASECMP)
endif(NOT(HAVE_STRCASECMP))
if(NOT(HAVE_FNMATCH_H))
    check_include_files(fnmatch.h HAVE_FNMATCH_H)
endif(NOT(HAVE_FNMATCH_H))

if(NOT(WIN_NT))
    if(WIN32)
        set(WIN_NT ON)
    endif(WIN32)
endif(NOT(WIN_NT))

if(HAVE_STRDUP)
    add_definitions(-DHAVE_STRDUP=1)
endif(HAVE_STRDUP)
if(HAVE_STRCASECMP)
    add_definitions(-DHAVE_STRCASECMP=1)
endif(HAVE_STRCASECMP)

# check build type
if(NOT CMAKE_BUILD_TYPE)
    message(STATUS "No build type selected, default to Release")
    set(CMAKE_BUILD_TYPE "Release")
endif()

# make uppercase string of build type
string(TOUPPER "${CMAKE_BUILD_TYPE}" uppercase_CMAKE_BUILD_TYPE)

# check build type again
if(NOT uppercase_CMAKE_BUILD_TYPE MATCHES "^(DEBUG|RELEASE|RELWITHDEBINFO|MINSIZEREL)$")
    message(FATAL_ERROR "Invalid value for CMAKE_BUILD_TYPE: ${CMAKE_BUILD_TYPE}")
endif()

# define _DEBUG on Debug version
if(uppercase_CMAKE_BUILD_TYPE STREQUAL "DEBUG")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_DEBUG")
endif()

# set output directory(build/)
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/build)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR})

# do statically link
set(CMAKE_FIND_LIBRARY_SUFFIXES ".a")
SET(BUILD_SHARED_LIBRARIES OFF)
if(CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
    # using Clang
    SET(CMAKE_EXE_LINKER_FLAGS "-static -static-libgcc -static-libstdc++")
    add_definitions(-std=c99)
elseif(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    # using GCC
    SET(CMAKE_EXE_LINKER_FLAGS "-static -static-libgcc -static-libstdc++")
    add_definitions(-std=c99)
else()
    add_definitions(-Dinline=)
endif()

add_definitions(-DPACKAGE_STRING="gpp")
#add_definitions(-DPACKAGE_STRING=\\"gpp\\")

# executable
add_executable(gpp src/gpp.c)

# do statically link
set_target_properties(gpp PROPERTIES LINK_SEARCH_START_STATIC 1)
set_target_properties(gpp PROPERTIES LINK_SEARCH_END_STATIC 1)

##############################################################################
