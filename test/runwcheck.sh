#!/bin/bash
# This expects to be run on Linux
# Argument is a executable file
# stdin is expected output of running the file

if test ! -f "$1"; then
    echo usage: $0 prog expect >&2
    exit 1
fi
b=`basename "$1"`
kind=`echo "$b" | sed -e 's/^.*-//' -e 's/.exe$//'`
dir=`dirname "$1"`
parent=`dirname $dir`
out="$parent/actual/$b.txt"
mkdir -p "$parent/actual"
if test $kind == p; then
    balFile=`echo "$b" | sed -e 's/.exe/.bal/'`
    $("./$1" >/dev/null 2>"$out")
    head -n 2 $out | sed -e 's/.*bal:/'"$balFile"':/' | diff -u "$2" -
else
    node --experimental-wasm-eh ../../../runtime/js/main.js $1 --import  > "$out"
    diff -u "$2" "$out"
fi

