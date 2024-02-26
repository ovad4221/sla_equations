cmake_minimum_required(VERSION 3.22)

# LANGUAGES C CXX ASM ..
project(SLA_equations)

add_subdirectory(src)

enable_testing()
# add_executable(SLA_equations ./tests/ever_flow.cpp ./src/methods/3dm_sp.cpp ./tests/generator_of_thr_sle.cpp)
# add_subdirectory()

add_subdirectory(tests)
