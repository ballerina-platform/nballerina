declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8*
  call void @_B_foo (i64 1, i64 1)
  store i8* null, i8** %_0
  call void @_B_foo (i64 2, i64 1)
  store i8* null, i8** %_1
  call void @_B_foo (i64 5, i64 4)
  store i8* null, i8** %_2
  call void @_B_foo (i64 12, i64 10)
  store i8* null, i8** %_3
  ret void
}
define internal void @_B_foo (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i1
  %_3 = alloca i64
  %_4 = alloca i8*
  %_5 = alloca i1
  %_6 = alloca i64
  %_7 = alloca i8*
  %_8 = alloca i8*
  %_9 = alloca i64
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_10 = load i64, i64* %x
  %_11 = load i64, i64* %y
  %_12 = icmp sgt i64 %_10, %_11
  store i1 %_12, i1* %_2
  %_13 = load i1, i1* %_2
  br i1 %_13, label %L1, label %L2
L1:
  %_14 = load i64, i64* %x
  %_15 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_14, i64 1)
  %_16 = extractvalue {i64, i1} %_15, 1
  br i1 %_16, label %L9, label %L8
L2:
  %_20 = load i64, i64* %x
  %_21 = load i64, i64* %y
  %_22 = icmp slt i64 %_20, %_21
  store i1 %_22, i1* %_5
  %_23 = load i1, i1* %_5
  br i1 %_23, label %L3, label %L4
L3:
  %_24 = load i64, i64* %y
  %_25 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_24, i64 1)
  %_26 = extractvalue {i64, i1} %_25, 1
  br i1 %_26, label %L11, label %L10
L4:
  %_30 = load i64, i64* %x
  %_31 = call i8* @_bal_alloc (i64 8)
  %_32 = bitcast i8* %_31 to i64*
  store i64 %_30, i64* %_32, align 8
  %_33 = getelementptr i8, i8* %_31, i64 144115188075855872
  call void @_Bio__println (i8* %_33)
  store i8* null, i8** %_8
  br label %L5
L5:
  br label %L6
L6:
  ret void
L7:
  %_34 = load i64, i64* %_9
  call void @_bal_panic (i64 %_34)
  unreachable
L8:
  %_17 = extractvalue {i64, i1} %_15, 0
  store i64 %_17, i64* %_3
  %_18 = load i64, i64* %_3
  %_19 = load i64, i64* %y
  call void @_B_foo (i64 %_18, i64 %_19)
  store i8* null, i8** %_4
  br label %L6
L9:
  store i64 1, i64* %_9
  br label %L7
L10:
  %_27 = extractvalue {i64, i1} %_25, 0
  store i64 %_27, i64* %_6
  %_28 = load i64, i64* %x
  %_29 = load i64, i64* %_6
  call void @_B_foo (i64 %_28, i64 %_29)
  store i8* null, i8** %_7
  br label %L5
L11:
  store i64 1, i64* %_9
  br label %L7
}
