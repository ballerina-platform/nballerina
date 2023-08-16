import ballerina/io;
type F function(int) returns int;

function addTo(int x) returns F {
  return function(int y) returns int {
    return x + y;
  };
}

public function main() {
    F add2 = addTo(2);
    io:println(add2(3)); // @output 5
}
