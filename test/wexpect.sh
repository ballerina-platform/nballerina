#!/bin/bash
# Outputs the expected output from a .bal test case
# This expects to be run on Linux
# $1 is a .bal file
# stdout is expected output

if test ! -f "$1"; then
    echo usage: $0 foo.bal >&2
    exit 1
fi
kind=`basename "$1" .bal | sed -e 's/^.*-//'`
if test $kind == p; then
    balFile=`basename "$1"`
    grep -n '// *@panic' "$1"  | sed -e 's/^\([1-9][0-9]*\):.*@panic/panic:/'
else
    sed -ne 's;^.* // *@output  *;;p' "$1" 
fi | tr -d '\r' 

