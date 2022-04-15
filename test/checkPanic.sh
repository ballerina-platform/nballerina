#!/bin/bash
head -n 2 "$1" | sed -e 's/.*bal:/'"$2"':/' | diff -u "$3" -
