function(fetch_content_uvw)
    set(OLD_BUILD_TESTING ${BUILD_TESTING})
    set(BUILD_TESTING OFF CACHE INTERNAL "")  # Forces the value
    set(libuv_buildtests OFF CACHE INTERNAL "")  # Forces the value
    set(BUILD_UVW_LIBS ON CACHE INTERNAL "")  # Forces the value

    FetchContent_Declare(
            uvw

            GIT_REPOSITORY https://github.com/stefanofiorentino/uvw.git
            GIT_TAG experimental
            GIT_SHALLOW 1
    )

    FetchContent_GetProperties(uvw)

    if(NOT uvw_POPULATED)
        FetchContent_Populate(uvw)
        add_subdirectory(${uvw_SOURCE_DIR} ${uvw_BINARY_DIR} EXCLUDE_FROM_ALL)
    endif()

    set(BUILD_TESTING ${OLD_BUILD_TESTING} CACHE INTERNAL "")
endfunction()
