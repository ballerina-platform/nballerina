import ballerina/io;
type F function(int) returns int;
type F0 function(int);

public function main() {
    any a = f1;
    if a is F|F0 { // @error
        io:println(a);
    }
}

function f1(int i) returns int {
  return i;
}
