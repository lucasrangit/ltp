#!/bin/bash
set -x
set -e

if [[ "$1" == "-c" ]]; then
	make clean
fi

make autotools
./configure
make -j$(getconf _NPROCESSORS_ONLN)
make install

exit 0

