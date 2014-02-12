#!/bin/sh


CKBUILDER="dev/ckbuilder.jar";
SKIN="BootstrapCK-Skin";

rm -rf ./build;
BUILD_DIR=$(mktemp -d /tmp/ckbuilder.XXXXXX);

java -jar $CKBUILDER --build-skin . "$BUILD_DIR/build";
mv "$BUILD_DIR/build" ./build;
rm -rf $BUILD_DIR;

echo "built skin into ./build";
exit 0;
