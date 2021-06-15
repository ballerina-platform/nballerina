declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %R0 = alloca i64, align 8
  %R1 = alloca i64, align 8
  %R2 = alloca i64, align 8
  %R3 = alloca i1, align 8
  %R4 = alloca i64, align 8
  %R5 = alloca i64, align 8
  %R6 = alloca i64, align 8
  %R7 = alloca i1, align 8
  %R8 = alloca i64, align 8
  %R9 = alloca i64, align 8
  %R10 = alloca i64, align 8
  %R11 = alloca i1, align 8
  %R12 = alloca i64, align 8
  %R13 = alloca i64, align 8
  %R14 = alloca i64, align 8
  %R15 = alloca i1, align 8
  %R16 = alloca i64, align 8
  %R17 = alloca i64, align 8
  %R18 = alloca i64, align 8
  %R19 = alloca i1, align 8
  %R20 = alloca i64, align 8
  %R21 = call i64 @_B_foo ()
  store i64 %R21, i64* %R0, align 8
  %R22 = call i64 @_B_bar ()
  store i64 %R22, i64* %R1, align 8
  %R23 = load i64, i64* %R0, align 8
  %R24 = load i64, i64* %R1, align 8
  %R25 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %R23, i64 %R24)
  %R26 = extractvalue {i64, i1} %R25, 1
  br i1 %R26, label %L3, label %L2
L1:
  %R65 = load i64, i64* %R20, align 8
  call void @_bal_panic (i64 %R65)
  unreachable
L2:
  %R27 = extractvalue {i64, i1} %R25, 0
  store i64 %R27, i64* %R2, align 8
  %R28 = load i64, i64* %R2, align 8
  call void @_Bio__println (i64 %R28)
  store i1 0, i1* %R3, align 8
  %R29 = call i64 @_B_foo ()
  store i64 %R29, i64* %R4, align 8
  %R30 = call i64 @_B_bar ()
  store i64 %R30, i64* %R5, align 8
  %R31 = load i64, i64* %R4, align 8
  %R32 = load i64, i64* %R5, align 8
  %R33 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %R31, i64 %R32)
  %R34 = extractvalue {i64, i1} %R33, 1
  br i1 %R34, label %L5, label %L4
L3:
  store i64 1, i64* %R20, align 8
  br label %L1
L4:
  %R35 = extractvalue {i64, i1} %R33, 0
  store i64 %R35, i64* %R6, align 8
  %R36 = load i64, i64* %R6, align 8
  call void @_Bio__println (i64 %R36)
  store i1 0, i1* %R7, align 8
  %R37 = call i64 @_B_foo ()
  store i64 %R37, i64* %R8, align 8
  %R38 = call i64 @_B_bar ()
  store i64 %R38, i64* %R9, align 8
  %R39 = load i64, i64* %R8, align 8
  %R40 = load i64, i64* %R9, align 8
  %R41 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %R39, i64 %R40)
  %R42 = extractvalue {i64, i1} %R41, 1
  br i1 %R42, label %L7, label %L6
L5:
  store i64 1, i64* %R20, align 8
  br label %L1
L6:
  %R43 = extractvalue {i64, i1} %R41, 0
  store i64 %R43, i64* %R10, align 8
  %R44 = load i64, i64* %R10, align 8
  call void @_Bio__println (i64 %R44)
  store i1 0, i1* %R11, align 8
  %R45 = call i64 @_B_foo ()
  store i64 %R45, i64* %R12, align 8
  %R46 = call i64 @_B_bar ()
  store i64 %R46, i64* %R13, align 8
  %R47 = load i64, i64* %R12, align 8
  %R48 = load i64, i64* %R13, align 8
  %R49 = icmp eq i64 %R48, 0
  br i1 %R49, label %L8, label %L9
L7:
  store i64 1, i64* %R20, align 8
  br label %L1
L8:
  store i64 2, i64* %R20, align 8
  br label %L1
L9:
  %R50 = icmp eq i64 %R47, -9223372036854775808
  %R51 = icmp eq i64 %R48, -1
  %R52 = and i1 %R50, %R51
  br i1 %R52, label %L11, label %L10
L10:
  %R53 = sdiv i64 %R47, %R48
  store i64 %R53, i64* %R14, align 8
  %R54 = load i64, i64* %R14, align 8
  call void @_Bio__println (i64 %R54)
  store i1 0, i1* %R15, align 8
  %R55 = call i64 @_B_foo ()
  store i64 %R55, i64* %R16, align 8
  %R56 = call i64 @_B_bar ()
  store i64 %R56, i64* %R17, align 8
  %R57 = load i64, i64* %R16, align 8
  %R58 = load i64, i64* %R17, align 8
  %R59 = icmp eq i64 %R58, 0
  br i1 %R59, label %L12, label %L13
L11:
  store i64 1, i64* %R20, align 8
  br label %L1
L12:
  store i64 2, i64* %R20, align 8
  br label %L1
L13:
  %R60 = icmp eq i64 %R57, -9223372036854775808
  %R61 = icmp eq i64 %R58, -1
  %R62 = and i1 %R60, %R61
  br i1 %R62, label %L15, label %L14
L14:
  %R63 = srem i64 %R57, %R58
  store i64 %R63, i64* %R18, align 8
  br label %L16
L15:
  store i64 0, i64* %R18, align 8
  br label %L16
L16:
  %R64 = load i64, i64* %R18, align 8
  call void @_Bio__println (i64 %R64)
  store i1 0, i1* %R19, align 8
  ret void
}
define internal i64 @_B_foo () {
  ret i64 105
}
define internal i64 @_B_bar () {
  ret i64 2
}
