import ballerina/io;
type F function(int) returns int;

public function main() {
    any a = f1;
    F test = <F>a;
    io:println(test(1)); // @output 1
}

function f1(int i) returns int {
  return i;
}
