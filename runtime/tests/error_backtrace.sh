#!/bin/bash
diff=$(sed 's/\/.*\/error_backtrace/error_backtrace/' /dev/stdin | diff - "$1")
if grep "^---" <<< $diff; then
    exit 1
fi
