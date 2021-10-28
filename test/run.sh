#!/bin/sh
set -e
b=`basename $1 .ll`
llvm-link-12 $1 ../runtime/balrt_inline.bc -o $b.bc
clang-12 -o $b $b.bc ../runtime/balrt.a
./$b
