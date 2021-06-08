define void @abort () {
}
define i64 @foo (i64 %R0, i64 %R1) {
  %R2 = alloca i64, align 8
  %R3 = alloca i64, align 8
  %R4 = alloca i64, align 8
  store i64 %R0, i64* %R3, align 8
  store i64 %R1, i64* %R4, align 8
  %R5 = load i64, i64* %R4, align 8
  %R6 = icmp i64 %R5, 0
  br i1 %R6, label %L1, label %L2
L1:
  call void @abort ()
L2:
  %R7 = load i64, i64* %R3, align 8
  %R8 = icmp i64 %R7, -9223372036854775808
  br i1 %R8, label %L4, label %L3
L3:
  %R11 = load i64, i64* %R3, align 8
  %R12 = load i64, i64* %R4, align 8
  %R13 = srem i64 %R11, %R12
  store i64 %R13, i64* %R2, align 8
  br label %L6
L4:
  %R9 = load i64, i64* %R4, align 8
  %R10 = icmp i64 %R9, -1
  br i1 %R10, label %L5, label %L3
L5:
  store i64 0, i64* %R2, align 8
  br label %L6
L6:
  %R14 = load i64, i64* %R2, align 8
  ret i64 %R14
}
