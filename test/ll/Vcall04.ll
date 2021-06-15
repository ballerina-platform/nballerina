declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %R0 = alloca i64, align 8
  %R1 = alloca i1, align 8
  %R2 = alloca i64, align 8
  %R3 = alloca i1, align 8
  %R4 = call i64 @_B_foo (i64 13, i1 0)
  store i64 %R4, i64* %R0, align 8
  %R5 = load i64, i64* %R0, align 8
  call void @_Bio__println (i64 %R5)
  store i1 0, i1* %R1, align 8
  %R6 = call i64 @_B_foo (i64 14, i1 1)
  store i64 %R6, i64* %R2, align 8
  %R7 = load i64, i64* %R2, align 8
  call void @_Bio__println (i64 %R7)
  store i1 0, i1* %R3, align 8
  ret void
}
define internal i64 @_B_foo (i64 %R0, i1 %R1) {
  %R2 = alloca i64, align 8
  %R3 = alloca i1, align 8
  %R4 = alloca i64, align 8
  %R5 = alloca i64, align 8
  %R6 = alloca i64, align 8
  store i64 %R0, i64* %R2, align 8
  store i1 %R1, i1* %R3, align 8
  %R7 = load i1, i1* %R3, align 8
  br i1 %R7, label %L1, label %L2
L1:
  %R8 = load i64, i64* %R2, align 8
  %R9 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %R8, i64 1)
  %R10 = extractvalue {i64, i1} %R9, 1
  br i1 %R10, label %L5, label %L4
L2:
  %R13 = load i64, i64* %R2, align 8
  %R14 = icmp eq i64 5, 0
  br i1 %R14, label %L6, label %L7
L3:
  %R20 = load i64, i64* %R6, align 8
  call void @_bal_panic (i64 %R20)
  unreachable
L4:
  %R11 = extractvalue {i64, i1} %R9, 0
  store i64 %R11, i64* %R4, align 8
  %R12 = load i64, i64* %R4, align 8
  ret i64 %R12
L5:
  store i64 1, i64* %R6, align 8
  br label %L3
L6:
  store i64 2, i64* %R6, align 8
  br label %L3
L7:
  %R15 = icmp eq i64 %R13, -9223372036854775808
  %R16 = icmp eq i64 5, -1
  %R17 = and i1 %R15, %R16
  br i1 %R17, label %L9, label %L8
L8:
  %R18 = srem i64 %R13, 5
  store i64 %R18, i64* %R5, align 8
  br label %L10
L9:
  store i64 0, i64* %R5, align 8
  br label %L10
L10:
  %R19 = load i64, i64* %R5, align 8
  ret i64 %R19
}
