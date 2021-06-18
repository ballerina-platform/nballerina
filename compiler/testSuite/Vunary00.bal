import ballerina/io;

public function main() {
  io:println(-2 + 5); // @output 3
  io:println(5 + -2); // @output 3
  printBoolean(-5 < 2); // @output 1
  printBoolean(2 >= -5); // @output 1
  printBoolean(!false >= false); // @output 1
}


function printBoolean(boolean x) {
  if x {
    io:println(1);
  } else {
    io:println(0);
  }
}