#!/bin/sh
tests=`dirname "$0"`
t="$tests/target"
mkdir -p "$t"
clang-11 -Wno-override-module "$1" "$tests/../runtime/balrt.c" -o "$t/$b.out"  && "$t/$b.out"
