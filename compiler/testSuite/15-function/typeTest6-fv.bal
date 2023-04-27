
import ballerina/io;
type F function(int) returns int;
type F2 function(int, int) returns int;
type F3 function(int, int...) returns int;

public function main() {
    F|F2|F3 f = f1;
    if f is F {
        io:println(f(1)); // @output 1
    }
    else {
        io:println(f(1, 2));
    }
    f = f2;
    if f is F {
        io:println(f(1));
    }
    else {
        io:println(f(1, 2)); // @output 3
    }
}

function f1(int i) returns int {
  return i;
}

function f2(int i, int j) returns int {
  return i + j;
}
