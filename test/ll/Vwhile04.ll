declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8*
  call void @_B_printClosestSquareNum (i64 1)
  store i8* null, i8** %_0
  call void @_B_printClosestSquareNum (i64 0)
  store i8* null, i8** %_1
  call void @_B_printClosestSquareNum (i64 5)
  store i8* null, i8** %_2
  call void @_B_printClosestSquareNum (i64 17)
  store i8* null, i8** %_3
  ret void
}
define internal void @_B_printClosestSquareNum (i64 %_0) {
  %x = alloca i64
  %i = alloca i64
  %_1 = alloca i1
  %_2 = alloca i1
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i64
  store i64 %_0, i64* %x
  %_6 = load i64, i64* %x
  store i64 %_6, i64* %i
  br label %L1
L1:
  %_7 = load i64, i64* %i
  %_8 = icmp sge i64 %_7, 0
  store i1 %_8, i1* %_1
  %_9 = load i1, i1* %_1
  br i1 %_9, label %L3, label %L2
L2:
  ret void
L3:
  %_10 = load i64, i64* %i
  %_11 = call i1 @_B_isSquareNumber (i64 %_10)
  store i1 %_11, i1* %_2
  %_12 = load i1, i1* %_2
  br i1 %_12, label %L4, label %L5
L4:
  %_13 = load i64, i64* %i
  %_14 = call i8* @_bal_alloc (i64 8)
  %_15 = bitcast i8* %_14 to i64*
  store i64 %_13, i64* %_15, align 8
  %_16 = getelementptr i8, i8* %_14, i64 144115188075855872
  call void @_Bio__println (i8* %_16)
  store i8* null, i8** %_3
  ret void
L5:
  %_17 = load i64, i64* %i
  %_18 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_17, i64 1)
  %_19 = extractvalue {i64, i1} %_18, 1
  br i1 %_19, label %L8, label %L7
L6:
  %_22 = load i64, i64* %_5
  call void @_bal_panic (i64 %_22)
  unreachable
L7:
  %_20 = extractvalue {i64, i1} %_18, 0
  store i64 %_20, i64* %_4
  %_21 = load i64, i64* %_4
  store i64 %_21, i64* %i
  br label %L1
L8:
  store i64 1, i64* %_5
  br label %L6
}
define internal i1 @_B_isSquareNumber (i64 %_0) {
  %x = alloca i64
  %i = alloca i64
  %_1 = alloca i1
  %_2 = alloca i1
  %_3 = alloca i64
  %_4 = alloca i1
  %_5 = alloca i64
  %_6 = alloca i64
  %_7 = alloca i64
  store i64 %_0, i64* %x
  store i64 0, i64* %i
  br label %L1
L1:
  %_8 = load i64, i64* %i
  %_9 = load i64, i64* %x
  %_10 = icmp sle i64 %_8, %_9
  store i1 %_10, i1* %_1
  %_11 = load i1, i1* %_1
  br i1 %_11, label %L3, label %L2
L2:
  ret i1 0
L3:
  %_12 = load i64, i64* %i
  %_13 = load i64, i64* %i
  %_14 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_12, i64 %_13)
  %_15 = extractvalue {i64, i1} %_14, 1
  br i1 %_15, label %L11, label %L10
L4:
  ret i1 1
L5:
  %_21 = load i64, i64* %i
  %_22 = load i64, i64* %i
  %_23 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_21, i64 %_22)
  %_24 = extractvalue {i64, i1} %_23, 1
  br i1 %_24, label %L13, label %L12
L6:
  ret i1 0
L7:
  br label %L8
L8:
  %_30 = load i64, i64* %i
  %_31 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_30, i64 1)
  %_32 = extractvalue {i64, i1} %_31, 1
  br i1 %_32, label %L15, label %L14
L9:
  %_35 = load i64, i64* %_7
  call void @_bal_panic (i64 %_35)
  unreachable
L10:
  %_16 = extractvalue {i64, i1} %_14, 0
  store i64 %_16, i64* %_3
  %_17 = load i64, i64* %_3
  %_18 = load i64, i64* %x
  %_19 = icmp eq i64 %_17, %_18
  store i1 %_19, i1* %_2
  %_20 = load i1, i1* %_2
  br i1 %_20, label %L4, label %L5
L11:
  store i64 1, i64* %_7
  br label %L9
L12:
  %_25 = extractvalue {i64, i1} %_23, 0
  store i64 %_25, i64* %_5
  %_26 = load i64, i64* %_5
  %_27 = load i64, i64* %x
  %_28 = icmp sgt i64 %_26, %_27
  store i1 %_28, i1* %_4
  %_29 = load i1, i1* %_4
  br i1 %_29, label %L6, label %L7
L13:
  store i64 1, i64* %_7
  br label %L9
L14:
  %_33 = extractvalue {i64, i1} %_31, 0
  store i64 %_33, i64* %_6
  %_34 = load i64, i64* %_6
  store i64 %_34, i64* %i
  br label %L1
L15:
  store i64 1, i64* %_7
  br label %L9
}
