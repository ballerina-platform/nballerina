declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64)
define void @abort () {
}
define i64 @foo (i64 %R0, i64 %R1) {
  %R2 = alloca i64, align 8
  %R3 = alloca i64, align 8
  store i64 %R0, i64* %R2, align 8
  store i64 %R1, i64* %R3, align 8
  %R4 = load i64, i64* %R2, align 8
  %R5 = load i64, i64* %R3, align 8
  %R6 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %R4, i64 %R5)
  %R7 = extractvalue {i64, i1} %R6, 0
  %R8 = extractvalue {i64, i1} %R6, 1
  %R9 = xor i1 %R8, 1
  br i1 %R9, label %L1, label %L2
L1:
  ret i64 %R7
L2:
  call void @abort ()
}
