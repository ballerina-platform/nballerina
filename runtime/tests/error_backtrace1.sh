#!/bin/bash
trace=(\
"    func1 .*\/error_backtrace1.c:20" \
"    main .*\/error_backtrace1.c:29" \
"    func2 .*\/error_backtrace1.c:13" \
"    func1 .*\/error_backtrace1.c:23" \
"    main .*\/error_backtrace1.c:29" \
"    func3 .*\/error_backtrace1.c:7" \
"    func2 .*\/error_backtrace1.c:16" \
"    func1 .*\/error_backtrace1.c:23" \
"    main .*\/error_backtrace1.c:29" \
)

for t in "${trace[@]}"; do
    exits=$(sed -n /"$t"/p backtrace.txt)
    if test `expr length "$exits"` -le 0; then
        rm backtrace.txt
        exit 1
    fi
done
rm backtrace.txt
