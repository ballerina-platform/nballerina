// @productions equality boolean if-else-stmt equality-expr function-call-expr int-literal
import ballerina/io;

public function main() {
  printBoolean(7 == 8); // @error
}


function printBoolean(boolean x) {
  if x {
    io:println(1);
  } else {
    io:println(0);
  }
}
