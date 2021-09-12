// @productions unary-expr additive-expr int-literal
import ballerina/io;

public function main() {
  io:println(0); // @output 0
  io:println(1); // @output 1
  io:println(9223372036854775807); // @output 9223372036854775807
  io:println(-1); // @output -1
  io:println(-9223372036854775807 - 1); // @output -9223372036854775808
}
