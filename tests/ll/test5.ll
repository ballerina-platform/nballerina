declare void @println (i64)
define void @main () {
  %R0 = alloca i1, align 8
  %R1 = alloca i64, align 8
  call void @println (i64 42)
  store i1 0, i1* %R0, align 8
  ret void
}
