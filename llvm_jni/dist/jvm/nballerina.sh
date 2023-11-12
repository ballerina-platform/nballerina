#!/bin/sh
set -e
if [ $# -ne 1 ]; then
    echo "Error: expected $0 <source file>"
    exit 1
fi

if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo "Usage: $0 <source file>"
    exit 0
fi

scriptDir=$(dirname "$0")
src="$1"
buildDir="$(pwd)/build"
runtime="$scriptDir/./balrt.a"
mkdir -p "$buildDir"

java -jar "$scriptDir/./compiler.jar" --outDir "$buildDir" "$src"

srcName=$(basename "$src" .bal)

find "$buildDir" -maxdepth 1 -name "$srcName*.o" -print0 | \
    awk -v rt="$runtime" '{print $0 rt"\0-lm"}' | \
    tr '\n' '\0' | \
    xargs -0 cc -O2 -o "$buildDir"/"$srcName"
