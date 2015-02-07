#!/bin/sh

# Компиляция под LINUX64
zip -r -j build/phenomjs.nw src
cat nodewebkit/LINUX64/nw build/phenomjs.nw  > build/phenomjs_linux_64 && chmod +x build/phenomjs_linux_64
build/phenomjs_linux_64
