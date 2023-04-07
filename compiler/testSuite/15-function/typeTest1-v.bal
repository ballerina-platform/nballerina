import ballerina/io;
type F function(int) returns int;

public function main() {
    any a = f1;
    boolean test = a is F;
    io:println(test); // @output true
}

function f1(int i) returns int {
  return i;
}
