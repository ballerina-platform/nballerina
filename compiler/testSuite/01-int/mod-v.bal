// @productions multiplicative-expr return-stmt function-call-expr int-literal
import ballerina/io;
public function main() {
  io:println(mod(5, 3)); // @output 2
  io:println(mod(7, 7)); // @output 0
  io:println(mod(6, 9)); // @output 6
}

function mod(int x, int y) returns int {
  return x % y;
}
