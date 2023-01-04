function(fetch_content_uvw)
    option(FETCH_UVW "Fetch the uvw repo using CMake FetchContent facility" ON)

    if (FETCH_UVW)
        set(OLD_BUILD_TESTING ${BUILD_TESTING})
        set(BUILD_TESTING OFF CACHE INTERNAL "")  # Forces the value
        set(libuv_buildtests OFF CACHE INTERNAL "")  # Forces the value
        set(BUILD_UVW_LIBS ON CACHE INTERNAL "")  # Forces the value

        FetchContent_Declare(
                uvw

                GIT_REPOSITORY https://github.com/skypjack/uvw.git
                GIT_TAG 3db9e8f75a4351325e1ea00e17586af2b00cf1ea
                GIT_SHALLOW 1
        )

        FetchContent_GetProperties(uvw)

        if(NOT uvw_POPULATED)
            FetchContent_Populate(uvw)
            add_subdirectory(${uvw_SOURCE_DIR} ${uvw_BINARY_DIR} EXCLUDE_FROM_ALL)
        endif()

        set(BUILD_TESTING ${OLD_BUILD_TESTING} CACHE INTERNAL "")
    endif()
endfunction()
