@g1 = external global i64
@g2 = external addrspace(2) global i64

define i64 @testFn() {
  ret i64 add (i64 ptrtoint (i64* @g1 to i64), i64 ptrtoint (i64 addrspace(2)* @g2 to i64))
}
