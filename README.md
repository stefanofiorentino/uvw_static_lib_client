# uvw_static_lib_client
minimal test for statically link the uvw lib

# example of time enhancement
```
~/devel/uvw_static_lib_client/cmake-build-debug (master)
└─ $ ▶ make clean

~/devel/uvw_static_lib_client/cmake-build-debug (master)
└─ $ ▶ time make uvw_header_only_client
Scanning dependencies of target uvw_header_only_client
[ 50%] Building CXX object CMakeFiles/uvw_header_only_client.dir/main.cpp.o
[100%] Linking CXX executable uvw_header_only_client
[100%] Built target uvw_header_only_client

real    0m6,692s
user    0m6,361s
sys     0m0,311s

~/devel/uvw_static_lib_client/cmake-build-debug (master)
└─ $ ▶ make clean

~/devel/uvw_static_lib_client/cmake-build-debug (master)
└─ $ ▶ time make uvw_static_lib_client 
[ 50%] Building CXX object CMakeFiles/uvw_static_lib_client.dir/main.cpp.o
[100%] Linking CXX executable uvw_static_lib_client
[100%] Built target uvw_static_lib_client

real    0m2,499s
user    0m2,287s
sys     0m0,213s
```
