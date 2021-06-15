declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %R0 = alloca i64, align 8
  %R1 = alloca i64, align 8
  %R2 = alloca i64, align 8
  %R3 = alloca i64, align 8
  %R4 = alloca i64, align 8
  %R5 = alloca i1, align 8
  %R6 = alloca i64, align 8
  %R7 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 -9223372036854775807, i64 1)
  %R8 = extractvalue {i64, i1} %R7, 1
  br i1 %R8, label %L3, label %L2
L1:
  %R14 = load i64, i64* %R6, align 8
  call void @_bal_panic (i64 %R14)
  unreachable
L2:
  %R9 = extractvalue {i64, i1} %R7, 0
  store i64 %R9, i64* %R1, align 8
  %R10 = load i64, i64* %R1, align 8
  store i64 %R10, i64* %R2, align 8
  %R11 = load i64, i64* %R2, align 8
  %R12 = call i64 @_B_div (i64 %R11, i64 -1)
  store i64 %R12, i64* %R4, align 8
  %R13 = load i64, i64* %R4, align 8
  call void @_Bio__println (i64 %R13)
  store i1 0, i1* %R5, align 8
  ret void
L3:
  store i64 1, i64* %R6, align 8
  br label %L1
}
define internal i64 @_B_div (i64 %R0, i64 %R1) {
  %R2 = alloca i64, align 8
  %R3 = alloca i64, align 8
  %R4 = alloca i64, align 8
  %R5 = alloca i64, align 8
  store i64 %R0, i64* %R2, align 8
  store i64 %R1, i64* %R3, align 8
  %R6 = load i64, i64* %R2, align 8
  %R7 = load i64, i64* %R3, align 8
  %R8 = icmp eq i64 %R7, 0
  br i1 %R8, label %L2, label %L3
L1:
  %R14 = load i64, i64* %R5, align 8
  call void @_bal_panic (i64 %R14)
  unreachable
L2:
  store i64 2, i64* %R5, align 8
  br label %L1
L3:
  %R9 = icmp eq i64 %R6, -9223372036854775808
  %R10 = icmp eq i64 %R7, -1
  %R11 = and i1 %R9, %R10
  br i1 %R11, label %L5, label %L4
L4:
  %R12 = sdiv i64 %R6, %R7
  store i64 %R12, i64* %R4, align 8
  %R13 = load i64, i64* %R4, align 8
  ret i64 %R13
L5:
  store i64 1, i64* %R5, align 8
  br label %L1
}
