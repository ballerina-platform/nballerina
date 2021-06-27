#!/bin/bash
# This expects to be run on Linux
test -d output || mkdir output
# XXX this gets a confusing error if there are no P or V files
for f in [PV]*.ll
do
    b=`basename "$f" .ll`
    kind=`echo $f | head -c 1`
    if test $kind == V; then
        sed -ne 's;^.* // *@output  *;;p' "../compiler/testSuite/$b.bal" | tr -d '\r' > "output/$b-expect.txt"
        clang-11 -Wno-override-module "$f" ../runtime/balrt.c -o "output/$b.out" && "./output/$b.out" > "output/$b-actual.txt"
    else
        grep -n '// *@panic' "../compiler/testSuite/$b.bal"  | sed -e 's/^\([1-9][0-9]*\):.*@panic *\(.*\)/panic: line \1: \2/'  | tr -d '\r' > "output/$b-expect.txt"
        clang-11 -Wno-override-module "$f" ../runtime/balrt.c -o "output/$b.out" && $("./output/$b.out" >/dev/null 2>"output/$b-actual.txt")
    fi
    diff "output/$b-expect.txt" "output/$b-actual.txt" >"output/$b-diff.txt" || echo $b failed
done
