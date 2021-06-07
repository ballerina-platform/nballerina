#!/bin/sh
clang-11 -Wno-override-module $1 test.c && ./a.out
