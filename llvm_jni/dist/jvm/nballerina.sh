#!/bin/bash
set -e
if [ $# -ne 1 ]; then
    echo "Error: expected $0 <source file>"
    exit 1
fi

if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo "Usage: $0 <source file>"
    exit 0
fi

scriptDir=$(realpath $(dirname "$0"))
src="$1"
buildDir="$(pwd)/build"
runtime="$scriptDir/./balrt.a"
mkdir -p "$buildDir"

java -jar "$scriptDir/./compiler.jar" --outDir "$buildDir" "$src"

srcName=$(basename "$src" .bal)
cd "$buildDir"
objects=()
for f in "$srcName"*.o; do
    objects+=("$buildDir/$f")
done

cc -O2 -o "$srcName" "${objects[@]}" -lm "$runtime"
