import ballerina/io;

public function main() {
  io:println(12 + 6 / 3); // @output 14
  io:println(30 / 3 + 12); // @output 22
  io:println(6 * 3 - 2); // @output 16
  io:println(8 - 4 * 2 ); // @output 0
  io:println(9 + 4 % 3 ); // @output 10
  io:println(4 % 3 + 9); // @output 10
  io:println(18 % 11 % 3); // @output 1
  io:println(30 % 18 % 11 % 5); // @output 1
  io:println(18 % 12 / 3); // @output 2
  io:println(16 / 8 % 6); // @output 2
  io:println( 4 + -3); // @output 1
  io:println(-3 + 4); // @output 1

  int i = 12;
  int j = 6;
  int k = 3;
  int l = 4;
  io:println(i + j / k); // @output 14
  io:println(j / k + i); // @output 14
  io:println(j * k - i); // @output 6
  io:println(i - j * k ); // @output -6
  io:println(l % k + j); // @output 7
  io:println(j % l % k); // @output 2
}
