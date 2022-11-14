#!/bin/sh
set -e
LLVM_LINK="llvm-link${LLVM_SUFFIX--13}"
CLANG="clang${LLVM_SUFFIX--13}"
b=`basename $1 .ll`
$LLVM_LINK $1 ../runtime/balrt_inline.bc -o $b.bc
$LLVM_LINK $b._init.ll ../runtime/balrt_inline.bc -o $b._init.bc
$CLANG -O3 -o $b $b.bc $b._init.bc ../runtime/balrt.a
./$b
