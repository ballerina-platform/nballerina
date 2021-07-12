@g1 = external global i64
@g2 = external addrspace(2) global i64
define i64 @testFn() {
  %1 = ptrtoint i64* @g1 to i64
  %2 = ptrtoint i64 addrspace(2)* @g2 to i64
  %3 = add i64 %1, %2
  ret i64 %3
}
