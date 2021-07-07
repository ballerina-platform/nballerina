#!/bin/bash
# This expects to be run on Linux
make -j8 -f ll.mk
cat out/result/fail.txt

