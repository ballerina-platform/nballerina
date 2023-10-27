#!/bin/sh
set -e

print_usage_and_exit() {
    echo "Usage: $0 <filename.bal> [--target <target>]"
    exit "$1"
}

if [ $# -lt 1 ]; then
    print_usage_and_exit 1
fi

if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    print_usage_and_exit 0
fi

src="$1"
buildDir="$(pwd)/build"
rm -rf "$buildDir"
mkdir -p "$buildDir"

c_compiler=cc
extra_c_flags=""
runtime="./balrt.a"
if [ $# -gt 1 ]; then
    if [ "$2" = "--target" ]; then
        if [ $# -lt 3 ]; then
            print_usage_and_exit 1
        fi
        if [ "$3" = "linux:aarch64" ]; then
            ./compiler --outDir "$buildDir" --target aarch64-unknown-linux-gnu "$src"
            c_compiler=clang
            extra_c_flags="-target aarch64-linux-gnu -fuse-ld=lld"
            runtime="./balrt_aarch64.a"
        else
            echo "Error: unsupported target $3"
            exit 1
        fi
    else
        print_usage_and_exit 1
    fi
else
    ./compiler --outDir "$buildDir" "$src"
fi

objects=$(find "$buildDir" -name "*.o" | tr '\n' ' ')
srcName=$(basename "$src" .bal)
"$c_compiler" -static -O2 $extra_c_flags -o "$buildDir/$srcName" $objects "$runtime" -lm
