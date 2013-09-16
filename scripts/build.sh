#!/bin/bash

# Run from root using:
#     . make/scripts/build.sh
# or copy to root and:
#     . build.sh

# Set cache compression
export USE_CCACHE=1;
export CCACHE_DIR=.ccache;

# Set exports
export LANG=C
export ALT_BOOTDIR=/usr/lib/jvm/java-6-openjdk-amd64
export UNLIMITED_CRYPTO=true
export ALLOW_DOWNLOADS=true
export NO_DOCS=true
export DISABLE_INTREE_EC=true
export COMPRESS_JARS=true

# Set axdev build
export MILESTONE=axdevjdku40
export BUILD_NUMBER=b01

# Set optimized variant
export VARIANT=OPT
export FULL_DEBUG_SYMBOLS=0
export OPTIMIZATION_LEVEL=HIGHER

# Set optional import jdk (only set after first build)
# export ALT_JDK_IMPORT_PATH=build/linux-amd64/j2sdk-image

# Set profile
. jdk/make/jdk_generic_profile.sh

# Start the Build
make sanity && make
