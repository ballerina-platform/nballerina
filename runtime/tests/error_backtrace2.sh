#!/bin/bash
expectedTrace=(\
"func2 .*/error_backtrace2.c:23" \
"func1 .*/error_backtrace2.c:15" \
"func2 .*/error_backtrace2.c:20" \
"func1 .*/error_backtrace2.c:15" \
"func2 .*/error_backtrace2.c:20" \
"func1 .*/error_backtrace2.c:15" \
"main .*/error_backtrace2.c:30" \
)

actualTrace=$(</dev/stdin)
for t in "${expectedTrace[@]}"; do
    exist=$(echo $actualTrace | grep "$t")
    if test `expr length "$exist"` -le 0; then
        exit 1
    fi
done
