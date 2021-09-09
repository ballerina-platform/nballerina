#!/bin/sh

for f in out/*/ll/*.ll
do
    diff -u $f $(echo $f | sed -e 's;/ll/;/;' -e 's;^out;ll;')
done
