// @productions if-else-stmt relational-expr boolean-literal function-call-expr int-literal
import ballerina/io;

public function main() {
    printComp(); //@output 1
}

function printComp() {
    if true > false {
        io:println(1);
    }
}
