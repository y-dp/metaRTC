rm -rf build
mkdir build
cd build
ARCH=arm_rk.cmake
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=../$ARCH  ..
make clean
make

