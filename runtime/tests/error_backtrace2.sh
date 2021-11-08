#!/bin/bash
trace=(\
"    func2 .*\/error_backtrace2.c:23" \
"    func1 .*\/error_backtrace2.c:15" \
"    func2 .*\/error_backtrace2.c:20" \
"    func1 .*\/error_backtrace2.c:15" \
"    func2 .*\/error_backtrace2.c:20" \
"    func1 .*\/error_backtrace2.c:15" \
"    main .*\/error_backtrace2.c:32" \
)

for t in "${trace[@]}"; do
    exits=$(sed -n /"$t"/p backtrace.txt)
    if test `expr length "$exits"` -le 0; then
        rm backtrace.txt
        exit 1
    fi
done
rm backtrace.txt
