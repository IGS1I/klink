cmake_minimum_required(VERSION 3.20)
project(sonata_dsp VERSION 0.1.0 LANGUAGES CXX)

# Force C++20 standard for heavy signal processing operations
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Define the shared library target
add_library(sonata_dsp SHARED
    src/signalprocessing/src/dsp_core.cpp
)

# Include directories for headers
target_include_directories(sonata_dsp PUBLIC
    src/signalprocessing/include
)

# Ensure C-compatible ABI symbols are visibile for Mojo FFI binding
set_target_properties(sonata_dsp PROPERTIES
    POSITION_INDEPENDENT_CODE ON
    CXX_VISIBILITY_PRESET hidden
    VISIBILITY_INDEPENDENT_COMPILER_WARNINGS ON
)