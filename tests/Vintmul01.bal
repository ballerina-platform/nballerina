import ballerina/io;

public function main() {
  io:println(mul2(4, 2, 3)); // @output 24
}

function mul2(int x, int y, int z) returns int {
  return x * y * z;
}

