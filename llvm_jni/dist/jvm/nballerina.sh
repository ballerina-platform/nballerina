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
objects=$(find "$buildDir" -maxdepth 1 -name "$srcName*.o")

find "$buildDir" -maxdepth 1 -name "$srcName*.o" -print0 | \
    xargs -0 awk -v rt="$runtime" 'BEGIN { for (i = 1; i < ARGC; i++) printf "\"%s\" ", ARGV[i]; printf "%s -lm\n", rt; }' | \
    xargs cc -O2 -o "$buildDir"/"$srcName"
