#!/bin/bash -eu

SRC=/python
DIST=/dist/layer.zip

zip -q -r ${DIST} ${SRC}
/bin/bash