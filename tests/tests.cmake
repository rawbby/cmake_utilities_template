target_link_libraries(${TARGET_NAME} PRIVATE solver)
target_link_libraries(${TARGET_NAME} PRIVATE thread_pool)
target_link_libraries(${TARGET_NAME} PRIVATE online_scheduling)

if (MSVC)
    # ensure __VA_OPT__ is supported (C++20 feature)
    target_compile_options(${TARGET_NAME} PRIVATE "/Zc:preprocessor")
endif ()
