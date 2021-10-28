// @productions list-type-descriptor list-constructor-expr return-stmt any function-call-expr local-var-decl-stmt int-literal
import ballerina/io;

// This is really testing parsing of call statements.

public function main() {
  test1();
  test2();
}
  
function test1() {
   any[] x = [];
   (foo(x)).push(1); // @output [1]
   io:println(x);
}

function test2() {
   any[] x = [];
   foo(x).push(2);
   io:println(x); // @output [2]
}

function foo(any[] x) returns any[] {
   return x;
}
