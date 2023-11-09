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

scriptDir=$(dirname "$0")
src="$1"
buildDir="$(pwd)/build"
mkdir -p "$buildDir"

java -jar "$scriptDir/./compiler.jar" --outDir "$buildDir" "$src"

srcName=$(basename "$src" .bal)
objects=()
while IFS= read -r -d $'\0' object; do
  objects+=("$object")
done < <(find "$buildDir" -name "$srcName*.o" -print0)

cc -O2 -o "$buildDir/$srcName" "${objects[@]}" "$scriptDir/./balrt.a" -lm
