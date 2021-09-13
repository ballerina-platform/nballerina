// @productions string-literal additive-expr local-var-decl-stmt
import ballerina/io;

public function main() {
  string s = "a";
  io:println(s + "b"); // @output ab
}
