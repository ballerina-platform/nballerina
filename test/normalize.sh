#!/bin/sh
for i in *.ll; do
    [ -f "$i" ] || break
    opt -instcombine $i -o out
    llvm-dis out -o $i
    rm out
done