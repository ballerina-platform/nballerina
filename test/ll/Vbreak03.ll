declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = call i64 @_B_foo (i64 10)
  store i64 %_2, i64* %_0
  %_3 = load i64, i64* %_0
  %_4 = call i8* @_bal_alloc (i64 8)
  %_5 = bitcast i8* %_4 to i64*
  store i64 %_3, i64* %_5, align 8
  %_6 = getelementptr i8, i8* %_4, i64 144115188075855872
  call void @_Bio__println (i8* %_6)
  store i8* null, i8** %_1
  ret void
}
define internal i64 @_B_foo (i64 %_0) {
  %x = alloca i64
  %i = alloca i64
  %_1 = alloca i1
  %_2 = alloca i64
  %_3 = alloca i1
  %_4 = alloca i64
  %_5 = alloca i8*
  %_6 = alloca i1
  %_7 = alloca i64
  %_8 = alloca i64
  %_9 = alloca i64
  store i64 %_0, i64* %x
  %_10 = load i64, i64* %x
  store i64 %_10, i64* %i
  br label %L1
L1:
  %_11 = load i64, i64* %i
  %_12 = icmp sge i64 %_11, 0
  store i1 %_12, i1* %_1
  %_13 = load i1, i1* %_1
  br i1 %_13, label %L3, label %L2
L2:
  %_14 = load i64, i64* %i
  %_15 = icmp slt i64 %_14, 0
  store i1 %_15, i1* %_6
  %_16 = load i1, i1* %_6
  br i1 %_16, label %L6, label %L7
L3:
  %_17 = load i64, i64* %i
  %_18 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_17, i64 1)
  %_19 = extractvalue {i64, i1} %_18, 1
  br i1 %_19, label %L10, label %L9
L4:
  %_30 = load i64, i64* %i
  %_31 = call i8* @_bal_alloc (i64 8)
  %_32 = bitcast i8* %_31 to i64*
  store i64 %_30, i64* %_32, align 8
  %_33 = getelementptr i8, i8* %_31, i64 144115188075855872
  call void @_Bio__println (i8* %_33)
  store i8* null, i8** %_5
  br label %L2
L5:
  br label %L1
L6:
  ret i64 -1
L7:
  %_34 = load i64, i64* %i
  %_35 = call i64 @_B_foo (i64 %_34)
  store i64 %_35, i64* %_8
  %_36 = load i64, i64* %_8
  ret i64 %_36
L8:
  %_37 = load i64, i64* %_9
  call void @_bal_panic (i64 %_37)
  unreachable
L9:
  %_20 = extractvalue {i64, i1} %_18, 0
  store i64 %_20, i64* %_2
  %_21 = load i64, i64* %_2
  store i64 %_21, i64* %i
  %_22 = load i64, i64* %x
  %_23 = load i64, i64* %i
  %_24 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_22, i64 %_23)
  %_25 = extractvalue {i64, i1} %_24, 1
  br i1 %_25, label %L12, label %L11
L10:
  store i64 1, i64* %_9
  br label %L8
L11:
  %_26 = extractvalue {i64, i1} %_24, 0
  store i64 %_26, i64* %_4
  %_27 = load i64, i64* %_4
  %_28 = icmp eq i64 %_27, 2
  store i1 %_28, i1* %_3
  %_29 = load i1, i1* %_3
  br i1 %_29, label %L4, label %L5
L12:
  store i64 1, i64* %_9
  br label %L8
}
