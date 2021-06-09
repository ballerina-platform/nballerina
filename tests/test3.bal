public function test(int a, int b) returns int {
  return foo(a, b);
}

function foo(int x, int y) returns int {
  int sum = x + y;
  return sum;
}
