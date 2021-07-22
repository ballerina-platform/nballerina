import ballerina/io;

public function main() {
  any[] v = [];
  v.push(v);
  io:println([1, 2, v, 4]); // @output [1,2,[...],4]
}
