#!/bin/bash
# Outputs the expected output from a .bal test case
# This expects to be run on Linux
# $1 is a .bal file
# stdout is expected output

if test ! -f "$1"; then
    echo usage: $0 foo.bal >&2
    exit 1
fi
kind=`basename "$1" .bal | head -c 1`
if test $kind == P; then
    grep -n '// *@panic' "$1"  | sed -e 's/^\([1-9][0-9]*\):.*@panic *\(.*\)/panic: line \1: \2/' 
else
    sed -ne 's;^.* // *@output  *;;p' "$1" 
fi | tr -d '\r' 
