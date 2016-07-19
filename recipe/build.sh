#!/bin/bash

./configure --prefix="$PREFIX"
make
# make check # needs flex, which would create a circular dependency
make install
