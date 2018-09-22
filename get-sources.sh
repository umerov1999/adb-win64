#!/bin/bash

#         DEPENDENCIES
# -------------------------
wget https://www.openssl.org/source/openssl-1.0.2p.tar.gz
tar -xvzf openssl-1.0.2p.tar.gz

#         CONFIG
# -------------------------

# Branch to checkout from Android source code repo
branch=android-7.0.0_r5

# DOWNLOAD necessary files
# -------------------------
echo "\n>> >>> ADB for ARM <<< \n"
echo "\n>> Downloading necessay files ($branch branch)\n"
mkdir android-adb
cd android-adb
mkdir system
cd system
git clone -b $branch https://android.googlesource.com/platform/system/core
git clone -b $branch https://android.googlesource.com/platform/system/extras
cd ..
mkdir external
cd external
git clone -b $branch https://android.googlesource.com/platform/external/zlib
git clone -b $branch https://android.googlesource.com/platform/external/openssl
git clone -b $branch https://android.googlesource.com/platform/external/libselinux
git clone -b $branch https://android.googlesource.com/platform/external/zopfli/
git clone -b $branch https://android.googlesource.com/platform/external/safe-iop/
cd ..
mkdir platform
cd platform
git clone -b $branch https://android.googlesource.com/platform/development/
git clone -b $branch https://android.googlesource.com/platform/build/
mkdir frameworks
cd frameworks
git clone -b $branch https://android.googlesource.com/platform/frameworks/base/
