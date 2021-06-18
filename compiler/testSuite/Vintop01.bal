import ballerina/io;

public function main() {
  printBoolean(12 + 6 == 3 + 15); // @output 1
  printBoolean(5 != 5 + 2); // @output 1
  printBoolean(5 < 9 == 5 > 2); // @output 1
  printBoolean(1 + 3 <= 2 + 4); // @output 1
  printBoolean(1 >= 5 == 1 + 2 >= 3 != false); // @output 0
  printBoolean(7 + 1 == 8 != false); // @output 1
  printBoolean(!true == false); // @output 1
  printBoolean(false == !true); // @output 1
}


function printBoolean(boolean x) {
  if x {
    io:println(1);
  } else {
    io:println(0);
  }
}