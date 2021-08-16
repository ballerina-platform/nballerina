define double @test() {
  ret double 1.123450e+00
}
define double @test2() {
  ret double 0x3FF1F9ACFFA7EB6C
}
define double @test3() {
  ret double 1.123450e+01
}
define double @testE() {
  ret double 0x4005BF0A8B145769
}
define double @testINF() {
  ret double 0x7FF0000000000000
}
define double @testNegINF() {
  ret double 0xFFF0000000000000
}
define double @testNan() {
  ret double 0x7FF8000000000000
}
define double @testPi() {
  ret double 0x400921FB54442D18
}
