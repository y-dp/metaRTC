rm -rf build
mkdir build
cd build
ARCH=mips_ingenic.cmake
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=../$ARCH  ..
make
