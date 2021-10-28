// @productions unary-expr int-literal
import ballerina/io;

public function main() {
  io:println(42); // @output 42
  io:println(-1); // @output -1
  io:println(0); // @output 0
}
