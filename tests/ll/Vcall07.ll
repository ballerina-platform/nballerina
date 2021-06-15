declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %R0 = alloca i64, align 8
  %R1 = alloca i1, align 8
  %R2 = call i64 @_B_foo (i64 10)
  store i64 %R2, i64* %R0, align 8
  %R3 = load i64, i64* %R0, align 8
  call void @_Bio__println (i64 %R3)
  store i1 0, i1* %R1, align 8
  ret void
}
define internal i64 @_B_foo (i64 %R0) {
  %R1 = alloca i64, align 8
  %R2 = alloca i64, align 8
  %R3 = alloca i64, align 8
  %R4 = alloca i1, align 8
  %R5 = alloca i64, align 8
  %R6 = alloca i64, align 8
  store i64 %R0, i64* %R1, align 8
  %R7 = load i64, i64* %R1, align 8
  %R8 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %R7, i64 1)
  %R9 = extractvalue {i64, i1} %R8, 1
  br i1 %R9, label %L5, label %L4
L1:
  %R15 = load i64, i64* %R3, align 8
  %R16 = call i64 @_B_foo (i64 %R15)
  store i64 %R16, i64* %R5, align 8
  %R17 = load i64, i64* %R5, align 8
  ret i64 %R17
L2:
  %R18 = load i64, i64* %R3, align 8
  ret i64 %R18
L3:
  %R19 = load i64, i64* %R6, align 8
  call void @_bal_panic (i64 %R19)
  unreachable
L4:
  %R10 = extractvalue {i64, i1} %R8, 0
  store i64 %R10, i64* %R2, align 8
  %R11 = load i64, i64* %R2, align 8
  store i64 %R11, i64* %R3, align 8
  %R12 = load i64, i64* %R3, align 8
  %R13 = icmp ne i64 %R12, 0
  store i1 %R13, i1* %R4, align 8
  %R14 = load i1, i1* %R4, align 8
  br i1 %R14, label %L1, label %L2
L5:
  store i64 1, i64* %R6, align 8
  br label %L3
}
