import ballerina/io;
type F function(int) returns int;
type F0 function(int);

public function main() {
    any a = f1;
    if a is F|F0 {
      io:println(a(1)); // @error
    }
}

function f1(int i) returns int {
  return i;
}
