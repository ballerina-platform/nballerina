import ballerina/io;

public function main() {
  io:println(bin(6, 2, 3)); // @output 4
}

function bin(int x, int y, int z) returns int {
  return x * y / z;
}

