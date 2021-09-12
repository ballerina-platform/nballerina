// @productions list-type-descriptor list-constructor-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
  any[] v = [];
  v.push(v);
  io:println([1, 2, v, 4]); // @output [1,2,[...],4]
}
