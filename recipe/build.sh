#!/bin/bash

set -x

if [[ ${HOST} =~ .*linux.* ]]; then
  export CFLAGS="${CFLAGS} -lrt"
fi

M4=m4 \
  ./configure --prefix=${PREFIX} --host=${HOST}
make -j${CPU_COUNT} ${VERBOSE_AT}

make check
cat tests/testsuite.log
