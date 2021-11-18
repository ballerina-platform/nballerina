%st = type opaque

@g1 = external global i64
@g2 = external global %st

define i32 @main() {
  ret i32 ptrtoint (i64* @g1 to i32)
}

define i32 @test() {
  ret i32 ptrtoint (%st* @g2 to i32)
}
