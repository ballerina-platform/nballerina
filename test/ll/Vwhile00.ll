declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %R0 = alloca i1, align 8
  call void @_B_printInts (i64 5)
  store i1 0, i1* %R0, align 8
  ret void
}
define internal void @_B_printInts (i64 %R0) {
  %R1 = alloca i64, align 8
  %R2 = alloca i64, align 8
  %R3 = alloca i1, align 8
  %R4 = alloca i1, align 8
  %R5 = alloca i64, align 8
  %R6 = alloca i64, align 8
  store i64 %R0, i64* %R1, align 8
  store i64 0, i64* %R2, align 8
  br label %L1
L1:
  %R7 = load i64, i64* %R2, align 8
  %R8 = load i64, i64* %R1, align 8
  %R9 = icmp slt i64 %R7, %R8
  store i1 %R9, i1* %R3, align 8
  %R10 = load i1, i1* %R3, align 8
  br i1 %R10, label %L3, label %L2
L2:
  ret void
L3:
  %R11 = load i64, i64* %R2, align 8
  call void @_Bio__println (i64 %R11)
  store i1 0, i1* %R4, align 8
  %R12 = load i64, i64* %R2, align 8
  %R13 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %R12, i64 1)
  %R14 = extractvalue {i64, i1} %R13, 1
  br i1 %R14, label %L6, label %L5
L4:
  %R17 = load i64, i64* %R6, align 8
  call void @_bal_panic (i64 %R17)
  unreachable
L5:
  %R15 = extractvalue {i64, i1} %R13, 0
  store i64 %R15, i64* %R5, align 8
  %R16 = load i64, i64* %R5, align 8
  store i64 %R16, i64* %R2, align 8
  br label %L1
L6:
  store i64 1, i64* %R6, align 8
  br label %L4
}
