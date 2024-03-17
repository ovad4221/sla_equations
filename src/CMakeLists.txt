if (USE_GLOB)
    file(GLOB_RECURSE SOURCES *.hpp *.cpp)
    add_library(${PROJECT_NAME} STATIC ${SOURCES}) 
else () 
    set(HEADERS
        headers_of_meth/3dm_sp.hpp
        headers_of_meth/CSR.hpp
        headers_of_meth/DenseMatrix.hpp
        headers_of_meth/vector.hpp
        headers_of_meth/simple_iter_methods.hpp
        )

    set(SOURCES
        methods/3dm_sp.cpp
        methods/CSR.cpp
        methods/DenseMatrix.cpp
        methods/vector.cpp
        methods/simple_iter_methods.cpp
        )

    source_group("Header Files" FILES ${HEADERS})
    source_group("Source Files" FILES ${SOURCES})

    add_library(${PROJECT_NAME} STATIC ${HEADERS} ${SOURCES})
endif ()

target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_features(${PROJECT_NAME} PUBLIC cxx_std_20)