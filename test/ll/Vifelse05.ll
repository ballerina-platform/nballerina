declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i1, align 8
  call void @_B_foo (i64 1, i64 1)
  store i1 0, i1* %_0, align 8
  call void @_B_foo (i64 2, i64 1)
  store i1 0, i1* %_1, align 8
  call void @_B_foo (i64 5, i64 4)
  store i1 0, i1* %_2, align 8
  call void @_B_foo (i64 12, i64 10)
  store i1 0, i1* %_3, align 8
  ret void
}
define internal void @_B_foo (i64 %_0, i64 %_1) {
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i64, align 8
  %_4 = alloca i1, align 8
  %_5 = alloca i1, align 8
  %_6 = alloca i64, align 8
  %_7 = alloca i1, align 8
  %_8 = alloca i1, align 8
  %_9 = alloca i64, align 8
  store i64 %_0, i64* %x, align 8
  store i64 %_1, i64* %y, align 8
  %_10 = load i64, i64* %x, align 8
  %_11 = load i64, i64* %y, align 8
  %_12 = icmp sgt i64 %_10, %_11
  store i1 %_12, i1* %_2, align 8
  %_13 = load i1, i1* %_2, align 8
  br i1 %_13, label %L1, label %L2
L1:
  %_14 = load i64, i64* %x, align 8
  %_15 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_14, i64 1)
  %_16 = extractvalue {i64, i1} %_15, 1
  br i1 %_16, label %L9, label %L8
L2:
  %_20 = load i64, i64* %x, align 8
  %_21 = load i64, i64* %y, align 8
  %_22 = icmp slt i64 %_20, %_21
  store i1 %_22, i1* %_5, align 8
  %_23 = load i1, i1* %_5, align 8
  br i1 %_23, label %L3, label %L4
L3:
  %_24 = load i64, i64* %y, align 8
  %_25 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_24, i64 1)
  %_26 = extractvalue {i64, i1} %_25, 1
  br i1 %_26, label %L11, label %L10
L4:
  %_30 = load i64, i64* %x, align 8
  call void @_Bio__println (i64 %_30)
  store i1 0, i1* %_8, align 8
  br label %L5
L5:
  br label %L6
L6:
  ret void
L7:
  %_31 = load i64, i64* %_9, align 8
  call void @_bal_panic (i64 %_31)
  unreachable
L8:
  %_17 = extractvalue {i64, i1} %_15, 0
  store i64 %_17, i64* %_3, align 8
  %_18 = load i64, i64* %_3, align 8
  %_19 = load i64, i64* %y, align 8
  call void @_B_foo (i64 %_18, i64 %_19)
  store i1 0, i1* %_4, align 8
  br label %L6
L9:
  store i64 1, i64* %_9, align 8
  br label %L7
L10:
  %_27 = extractvalue {i64, i1} %_25, 0
  store i64 %_27, i64* %_6, align 8
  %_28 = load i64, i64* %x, align 8
  %_29 = load i64, i64* %_6, align 8
  call void @_B_foo (i64 %_28, i64 %_29)
  store i1 0, i1* %_7, align 8
  br label %L5
L11:
  store i64 1, i64* %_9, align 8
  br label %L7
}
