#!/bin/bash
echo "=== JP6 Kernel Build Script ==="
echo "=== MT8163 - OTG + 64bit fix ==="

export ARCH=arm64
export CROSS_COMPILE=""
export CC="clang --target=aarch64-linux-gnu"
export HOSTCC=gcc
export HOSTCXX=g++

echo "--- Generating config from jp6_defconfig ---"
make jp6_defconfig

echo "--- Building kernel ---"
make -j4 Image.gz CC="clang --target=aarch64-linux-gnu" HOSTCC=gcc

echo "--- Build complete ---"
echo "Kernel: arch/arm64/boot/Image.gz"
