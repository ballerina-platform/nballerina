import ballerina/io;
public function main() {
  int add1 = add(2, 3);
  io:println(add1); // @output 5
  io:println(add(20, 30)); // @output 50
}

function add(int x, int y) returns int {
  return x + y;
}
