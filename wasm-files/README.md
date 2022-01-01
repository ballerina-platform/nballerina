###### Binaryen Textual Format

Binaryen accepts .wat files with S-Expressions.
main.wat file corresponds to the printBoolean() function

###### Commands to convert .wat file to wasm

```

./wasm-as {filename}.wat
```

###### Code for running the C files.

```

gcc -pthread {filename}.c ../binaryen/lib/libbinaryen.so
export LD_LIBRARY_PATH={COMPLETE_PATH_TO_THE_LIB_FOLDER_IN_BINARYEN_FOLDER}
./a.out

```
