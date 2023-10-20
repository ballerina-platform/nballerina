#!/bin/sh
set -e
if [ $# -ne 1 ]; then
    echo "Error: expected $0 <filename.bal>"
    exit 1
fi

if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo "Usage: $0 <filename.bal>"
    exit 0
fi

src="$1"
buildDir="$(pwd)/build"
rm -rf "$buildDir"
mkdir -p "$buildDir"

java -jar ./compiler.jar --outDir "$buildDir" "$src"

objects=$(find "$buildDir" -name "*.o" | tr '\n' ' ')
srcName=$(basename "$src" .bal)
cc -O2 -o "$buildDir/$srcName" $objects ./balrt.a -lm
