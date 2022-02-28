#!/bin/sh
wasm_opt_dir=`find $HOME -name "wasm-opt" | grep -m 1 .*/binaryen.*/bin/wasm-opt`
echo $wasm_opt_dir
