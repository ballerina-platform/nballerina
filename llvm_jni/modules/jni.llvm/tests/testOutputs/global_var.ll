@g1 = external global i64
@g2 = external addrspace(2) global i64
@g3 = internal unnamed_addr addrspace(3) constant { i64, i64 } { i64 1, i64 2 }, align 8
@g4 = internal unnamed_addr addrspace(3) constant i64, align 8
@g5 = external addrspace(3) constant i64
@g6 = external addrspace(3) global i64, align 8

define i64 @testFn() {
  ret i64 add (i64 ptrtoint (i64* @g1 to i64), i64 ptrtoint (i64 addrspace(2)* @g2 to i64))
}
