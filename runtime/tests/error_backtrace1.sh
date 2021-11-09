#!/bin/bash
diff=$(sed 's/\/.*\/error_backtrace/error_backtrace/' /dev/stdin | diff - error_backtrace1.txt)
if grep "^---" <<< $diff; then
    exit 1
fi
