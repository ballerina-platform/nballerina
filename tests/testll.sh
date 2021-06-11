#!/bin/sh
# This expects to be run on Linux
for f in V*.ll
do
    b=`basename $f .ll`
    sed -ne 's;^.* // *@output  *;;p' $b.bal | tr -d '\r' > $b-expect.txt
    clang-11 -Wno-override-module $f ../runtime/balrt.c && ./a.out > $b-actual.txt
    diff $b-expect.txt $b-actual.txt >$b-diff.txt || echo $b failed
done

