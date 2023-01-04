function(fetch_content_libuv)
    option(FETCH_LIBUV "Fetch the libuv repo using CMake FetchContent facility" ON)
    if (FETCH_LIBUV)
        FetchContent_Declare(
                libuv
                GIT_REPOSITORY https://github.com/libuv/libuv.git
                GIT_TAG v1.44.2
                GIT_SHALLOW 1
        )

        FetchContent_GetProperties(libuv)

        if(NOT libuv_POPULATED)
            FetchContent_Populate(libuv)
            add_subdirectory(${libuv_SOURCE_DIR} ${libuv_BINARY_DIR})
        endif()
    endif()
endfunction()