#!/bin/sh
for i in *.ll; do
    [ -f "$i" ] || break
    expected=../../test/$i
    diff=$(llvm-diff $i $expected)
    if [ $? != 0 ]; then
       echo "${i}"
       echo "${diff}"
       echo ""
    fi
done