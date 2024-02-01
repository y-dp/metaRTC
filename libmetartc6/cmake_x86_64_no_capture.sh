rm -rf build
mkdir build
cd build
ARCH=x86_64_no_capture.cmake
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=../$ARCH  ..
make

