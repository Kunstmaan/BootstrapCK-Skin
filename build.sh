#!/bin/sh


CKBUILDER="dev/ckbuilder.jar";
SKIN="BootstrapCK-Skin";
SRC_DIR="./src";
BUILD_DIR="./build";

# clean
rm -rf $BUILD_DIR;
mkdir $BUILD_DIR;

# build 
java -jar $CKBUILDER --build-skin "$SRC_DIR" "$BUILD_DIR/$SKIN";
echo "built skin into ./build/$SKIN";
exit 0;
