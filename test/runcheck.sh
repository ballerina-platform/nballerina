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

HEAP_SIZE=$(sed -ne 's;^.*// *@small_heap  *;;p' "$BAL_FILE")

if [ ! -z "$HEAP_SIZE" ]
then
    export SMALL_HEAP=$HEAP_SIZE
fi

if test $kind == p; then
    balFile=`echo "$b" | sed -e 's/.exe/.bal/'`
    $("./$1" >/dev/null 2>"$out")
    head -n 2 $out | sed -e 's/.*bal:/'"$balFile"':/' | diff -u "$2" -
else
    "./$1" >"$out"
    diff -u "$2" "$out"
fi

