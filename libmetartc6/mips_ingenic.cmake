SET(CMAKE_SYSTEM_NAME Linux)
SET(CMAKE_C_COMPILER mips-linux-uclibc-gcc)
SET(CMAKE_CXX_COMPILER mips-linux-uclibc-g++)
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -muclibc  -march=mips32r2 -mhard-float  -fno-aggressive-loop-optimizations")

SET(NoCapture 1)
