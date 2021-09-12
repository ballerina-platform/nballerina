import ballerina/io;

public function main() {
  io:println(mul(4, 2)); // @output 8
}

function mul(int x, int y) returns int {
  return x * y;
}

