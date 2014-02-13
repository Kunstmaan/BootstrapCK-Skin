#!/bin/sh


CKBUILDER="dev/ckbuilder.jar";
SKIN="BootstrapCK-Skin";
BUILD_DIR="./build";

# clean
rm -rf $BUILD_DIR;
mkdir $BUILD_DIR;

# build 
java -jar $CKBUILDER --build-skin . "$BUILD_DIR/$SKIN";
echo "built skin into ./build/$SKIN";
exit 0;
