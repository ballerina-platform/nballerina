#!/bin/bash
set -e

print_usage_and_exit() {
    echo "Usage: $0 <source file> [--target aarch64]"
    exit "$1"
}

if [ $# -lt 1 ]; then
    print_usage_and_exit 1
fi

if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    print_usage_and_exit 0
fi

scriptDir=$(dirname "$0")
src="$1"
buildDir="$(pwd)/build"
rm -rf "$buildDir"
mkdir -p "$buildDir"

c_compiler=cc
runtime="$scriptDir/./balrt.a"
if [ $# -gt 1 ]; then
    if [ "$2" = "--target" ]; then
        if [ $# -lt 3 ]; then
            print_usage_and_exit 1
        fi
        if [ "$3" = "aarch64" ]; then
            "$scriptDir/./compiler" --outDir "$buildDir" --target aarch64-unknown-linux-gnu "$src"
            c_compiler=aarch64-linux-gnu-gcc
            runtime="$scriptDir/./balrt_aarch64.a"
        else
            echo "Error: unsupported target $3"
            exit 1
        fi
    else
        print_usage_and_exit 1
    fi
else
    "$scriptDir"/./compiler --outDir "$buildDir" "$src"
fi

srcName=$(basename "$src" .bal)
objects=()
while IFS= read -r -d $'\0' object; do
  objects+=("$object")
done < <(find "$buildDir" -name "$srcName*.o" -print0)

"$c_compiler" -static -O2 -o "$buildDir/$srcName" "${objects[@]}" "$runtime"
