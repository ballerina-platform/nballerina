#!/bin/bash

# move file to target, only if a file with similar content, and
# same prefix (of six letters) does not exist in target

from="$1"
to="$(pwd)/$2"
ext="$3"

cd $from

if [ -z "$(ls -A .)" ]; then
    # Bash expands filename patterns which match no files to themselves.
    # Therefor need to skip dirs with no matching files.
    exit 0
fi

for f in *.$ext; do
    existing="$to/${f:0:6}*.$ext"
    if test -f $existing; then
        cmp -s $f $existing || mv -v $f $existing
    else
        mv -v $f $to
    fi
done
