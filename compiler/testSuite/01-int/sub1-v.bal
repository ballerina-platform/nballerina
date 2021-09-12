// @productions return-stmt additive-expr function-call-expr local-var-decl-stmt int-literal
import ballerina/io;
public function main() {
  int sub1 = sub(5, 2);
  io:println(sub1); // @output 3
  int sub2 = sub(0, 1);
  io:println(sub2); // @output -1
}

function sub(int x, int y) returns int {
    return x - y;
}

