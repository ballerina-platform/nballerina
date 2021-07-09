@g1 = external global i64
@g2 = external addrspace (2) global i64
define i64 @testFn () {
  %_0 = ptrtoint i64* @g1 to i64
  %_1 = ptrtoint i64 addrspace (2) * @g2 to i64
  %_2 = add i64 %_0, %_1
  ret i64 %_2
}
