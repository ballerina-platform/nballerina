#!/bin/sh
clang-11 -Wno-override-module $1 ../runtime/balrt.a && ./a.out
