declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i1, align 8
  call void @_B_printClosestSquareNum (i64 1)
  store i1 0, i1* %_0, align 8
  call void @_B_printClosestSquareNum (i64 0)
  store i1 0, i1* %_1, align 8
  call void @_B_printClosestSquareNum (i64 5)
  store i1 0, i1* %_2, align 8
  call void @_B_printClosestSquareNum (i64 17)
  store i1 0, i1* %_3, align 8
  ret void
}
define internal void @_B_printClosestSquareNum (i64 %_0) {
  %x = alloca i64, align 8
  %i = alloca i64, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i1, align 8
  %_5 = alloca i1, align 8
  %_6 = alloca i64, align 8
  %_7 = alloca i64, align 8
  store i64 %_0, i64* %x, align 8
  %_8 = load i64, i64* %x, align 8
  store i64 %_8, i64* %i, align 8
  br label %L1
L1:
  %_9 = load i64, i64* %i, align 8
  %_10 = icmp sge i64 %_9, 0
  store i1 %_10, i1* %_3, align 8
  %_11 = load i1, i1* %_3, align 8
  br i1 %_11, label %L3, label %L2
L2:
  ret void
L3:
  %_12 = load i64, i64* %i, align 8
  %_13 = call i1 @_B_isSquareNumber (i64 %_12)
  store i1 %_13, i1* %_4, align 8
  %_14 = load i1, i1* %_4, align 8
  br i1 %_14, label %L4, label %L5
L4:
  %_15 = load i64, i64* %i, align 8
  call void @_Bio__println (i64 %_15)
  store i1 0, i1* %_5, align 8
  ret void
L5:
  %_16 = load i64, i64* %i, align 8
  %_17 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_16, i64 1)
  %_18 = extractvalue {i64, i1} %_17, 1
  br i1 %_18, label %L8, label %L7
L6:
  %_21 = load i64, i64* %_7, align 8
  call void @_bal_panic (i64 %_21)
  unreachable
L7:
  %_19 = extractvalue {i64, i1} %_17, 0
  store i64 %_19, i64* %_6, align 8
  %_20 = load i64, i64* %_6, align 8
  store i64 %_20, i64* %i, align 8
  br label %L1
L8:
  store i64 1, i64* %_7, align 8
  br label %L6
}
define internal i1 @_B_isSquareNumber (i64 %_0) {
  %x = alloca i64, align 8
  %i = alloca i64, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i1, align 8
  %_5 = alloca i64, align 8
  %_6 = alloca i1, align 8
  %_7 = alloca i64, align 8
  %_8 = alloca i64, align 8
  %_9 = alloca i64, align 8
  store i64 %_0, i64* %x, align 8
  store i64 0, i64* %i, align 8
  br label %L1
L1:
  %_10 = load i64, i64* %i, align 8
  %_11 = load i64, i64* %x, align 8
  %_12 = icmp sle i64 %_10, %_11
  store i1 %_12, i1* %_3, align 8
  %_13 = load i1, i1* %_3, align 8
  br i1 %_13, label %L3, label %L2
L2:
  ret i1 0
L3:
  %_14 = load i64, i64* %i, align 8
  %_15 = load i64, i64* %i, align 8
  %_16 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_14, i64 %_15)
  %_17 = extractvalue {i64, i1} %_16, 1
  br i1 %_17, label %L11, label %L10
L4:
  ret i1 1
L5:
  %_23 = load i64, i64* %i, align 8
  %_24 = load i64, i64* %i, align 8
  %_25 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_23, i64 %_24)
  %_26 = extractvalue {i64, i1} %_25, 1
  br i1 %_26, label %L13, label %L12
L6:
  ret i1 0
L7:
  br label %L8
L8:
  %_32 = load i64, i64* %i, align 8
  %_33 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_32, i64 1)
  %_34 = extractvalue {i64, i1} %_33, 1
  br i1 %_34, label %L15, label %L14
L9:
  %_37 = load i64, i64* %_9, align 8
  call void @_bal_panic (i64 %_37)
  unreachable
L10:
  %_18 = extractvalue {i64, i1} %_16, 0
  store i64 %_18, i64* %_5, align 8
  %_19 = load i64, i64* %_5, align 8
  %_20 = load i64, i64* %x, align 8
  %_21 = icmp eq i64 %_19, %_20
  store i1 %_21, i1* %_4, align 8
  %_22 = load i1, i1* %_4, align 8
  br i1 %_22, label %L4, label %L5
L11:
  store i64 1, i64* %_9, align 8
  br label %L9
L12:
  %_27 = extractvalue {i64, i1} %_25, 0
  store i64 %_27, i64* %_7, align 8
  %_28 = load i64, i64* %_7, align 8
  %_29 = load i64, i64* %x, align 8
  %_30 = icmp sgt i64 %_28, %_29
  store i1 %_30, i1* %_6, align 8
  %_31 = load i1, i1* %_6, align 8
  br i1 %_31, label %L6, label %L7
L13:
  store i64 1, i64* %_9, align 8
  br label %L9
L14:
  %_35 = extractvalue {i64, i1} %_33, 0
  store i64 %_35, i64* %_8, align 8
  %_36 = load i64, i64* %_8, align 8
  store i64 %_36, i64* %i, align 8
  br label %L1
L15:
  store i64 1, i64* %_9, align 8
  br label %L9
}
