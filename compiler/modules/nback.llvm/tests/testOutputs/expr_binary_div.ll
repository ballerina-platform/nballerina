define void @abort () {
}
define i64 @foo (i64 %R0, i64 %R1) {
  %R2 = alloca i64, align 8
  %R3 = alloca i64, align 8
  store i64 %R0, i64* %R2, align 8
  store i64 %R1, i64* %R3, align 8
  %R4 = load i64, i64* %R3, align 8
  %R5 = icmp eq i64 %R4, 0
  br i1 %R5, label %L3, label %L1
L1:
  %R6 = load i64, i64* %R2, align 8
  %R7 = icmp eq i64 %R6, -9223372036854775808
  br i1 %R7, label %L2, label %L4
L2:
  %R8 = load i64, i64* %R3, align 8
  %R9 = icmp eq i64 %R8, -1
  br i1 %R9, label %L3, label %L4
L3:
  call void @abort ()
L4:
  %R10 = load i64, i64* %R2, align 8
  %R11 = load i64, i64* %R3, align 8
  %R12 = sdiv i64 %R10, %R11
  ret i64 %R12
}
