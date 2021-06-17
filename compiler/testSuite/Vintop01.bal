import ballerina/io;

public function main() {
  printBoolean(12 + 6 == 3 + 15); // @output 1
  printBoolean(5 != 5 + 2); // @output 1
  printBoolean(5 < 9 == 5 > 2); // @output 1
}


function printBoolean(boolean x) {
  if x {
    io:println(1);
  } else {
    io:println(0);
  }
}