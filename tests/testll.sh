#!/bin/sh
# This expects to be run on Linux
tests=`dirname "$0"`
t="$tests/target"
mkdir -p "$t"
for f in "$tests"/ll/V*.ll
do
    b=`basename "$f" .ll`
    sed -ne 's;^.* // *@output  *;;p' "$tests/$b.bal" | tr -d '\r' > "$t/$b-expect.txt"
    clang-11 -Wno-override-module "$f" "$tests/../runtime/balrt.c" -o "$t/$b.out"  && "$t/$b.out" > "$t/$b-actual.txt"
    diff "$t/$b-expect.txt" "$t/$b-actual.txt" >"$t/$b-diff.txt" || echo $b failed
done
