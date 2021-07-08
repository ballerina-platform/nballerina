#!/bin/sh
set -e
b=`basename $1 .ll`
llvm-link-11 $1 ../runtime/balrt_inline.bc -o $b.bc
clang-11 -o $b $b.bc ../runtime/balrt.a
./$b
