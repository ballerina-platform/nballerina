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
    $("./$1" >/dev/null 2>"$out")
else
    "./$1" >"$out"
fi

diff -u "$2" "$out"
