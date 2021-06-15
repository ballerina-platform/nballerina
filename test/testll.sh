#!/bin/bash
# This expects to be run on Linux
test -d output || mkdir output
for f in V*.ll
do
    b=`basename "$f" .ll`
    sed -ne 's;^.* // *@output  *;;p' "../compiler/testSuite/$b.bal" | tr -d '\r' > "output/$b-expect.txt"
    clang-11 -Wno-override-module "$f" ../runtime/balrt.c -o "output/$b.out" && "./output/$b.out" > "output/$b-actual.txt"
    diff "output/$b-expect.txt" "output/$b-actual.txt" >"output/$b-diff.txt" || echo $b failed
done

for f in P*.ll
do
    b=`basename "$f" .ll`
    sed -ne 's;^.* // *@panic  *;panic: ;p' "../compiler/testSuite/$b.bal" | tr -d '\r' > "output/$b-expect.txt"
    clang-11 -Wno-override-module "$f" ../runtime/balrt.c -o "output/$b.out" && $("./output/$b.out" >/dev/null 2>"output/$b-actual.txt")
    diff "output/$b-expect.txt" "output/$b-actual.txt" >"output/$b-diff.txt" || echo $b failed
done
