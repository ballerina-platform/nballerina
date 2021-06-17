import ballerina/io;

public function main() {
  io:println(12 + 6 / 3); // @output 14
  io:println(30 / 3 + 12); // @output 22
  io:println(6 * 3 - 2); // @output 14
  io:println(8 - 4 * 2 ); // @output 0
  io:println(9 + 4 % 3 ); // @output 10
  io:println(4 % 3 + 9); // @output 10
}


