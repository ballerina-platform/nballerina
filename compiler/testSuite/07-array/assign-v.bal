// @productions list-type-descriptor list-constructor-expr assign-stmt local-var-decl-stmt string-literal function-call-expr
import ballerina/io;

function foo(int[] arr, int i) returns int[] {
    arr[i] = i + 10;
    return arr;
}

public function main() {
    int[] arr = [];
    _ = foo(arr, 0);
    _ = foo(arr, 1);
    _ = foo(arr, 2);
    io:println(arr); // @output [10,11,12]

    string str = "test str";
    _ = str;
    io:println(str); // @output test str
}
