if [ $(uname -r | sed -n 's/.*\( *Microsoft *\).*/\1/ip') ];
then
    echo `find $HOME -name "wasm-opt.exe" | grep -m 1 .*/binaryen.*/bin/wasm-opt`
else
    echo `find $HOME -name "wasm-opt" | grep -m 1 .*/binaryen.*/bin/wasm-opt`
fi
