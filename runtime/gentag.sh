#!/bin/sh
# Note there is a literal tab on the next line
sed -e 's/public const UT_\([A-Z_]*[	 ]*\)= \(0x[0-9A-Fa-f]*\);/#define TAG_\1\2/' ../compiler/modules/types/tag.bal >tag.h
