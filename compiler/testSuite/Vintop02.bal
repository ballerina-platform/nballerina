import ballerina/io;

public function main() {
  printBoolean(7 == 8); // @output 0
}


function printBoolean(boolean x) {
  if x {
    io:println(1);
  } else {
    io:println(0);
  }
}