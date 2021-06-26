@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i8*
  %_7 = alloca i64
  %_8 = alloca i64
  %_9 = alloca i64
  %_10 = alloca i8*
  %_11 = alloca i64
  %_12 = alloca i8
  %_13 = load i8*, i8** @_bal_stack_guard
  %_14 = icmp ult i8* %_12, %_13
  br i1 %_14, label %L3, label %L1
L1:
  %_15 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 1, i64 0)
  %_16 = extractvalue {i64, i1} %_15, 1
  br i1 %_16, label %L5, label %L4
L2:
  %_43 = load i64, i64* %_11
  call void @_bal_panic (i64 %_43)
  unreachable
L3:
  call void @_bal_panic (i64 4)
  unreachable
L4:
  %_17 = extractvalue {i64, i1} %_15, 0
  store i64 %_17, i64* %_0
  %_18 = load i64, i64* %_0
  %_19 = call i8* @_bal_alloc (i64 8)
  %_20 = bitcast i8* %_19 to i64*
  store i64 %_18, i64* %_20, align 8
  %_21 = getelementptr i8, i8* %_19, i64 144115188075855872
  call void @_Bio__println (i8* %_21)
  store i8* null, i8** %_1
  %_22 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 1, i64 9223372036854775806)
  %_23 = extractvalue {i64, i1} %_22, 1
  br i1 %_23, label %L7, label %L6
L5:
  store i64 1, i64* %_11
  br label %L2
L6:
  %_24 = extractvalue {i64, i1} %_22, 0
  store i64 %_24, i64* %_2
  %_25 = load i64, i64* %_2
  %_26 = call i8* @_bal_alloc (i64 8)
  %_27 = bitcast i8* %_26 to i64*
  store i64 %_25, i64* %_27, align 8
  %_28 = getelementptr i8, i8* %_26, i64 144115188075855872
  call void @_Bio__println (i8* %_28)
  store i8* null, i8** %_3
  %_29 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 -1, i64 0)
  %_30 = extractvalue {i64, i1} %_29, 1
  br i1 %_30, label %L9, label %L8
L7:
  store i64 1, i64* %_11
  br label %L2
L8:
  %_31 = extractvalue {i64, i1} %_29, 0
  store i64 %_31, i64* %_5
  %_32 = load i64, i64* %_5
  %_33 = call i8* @_bal_alloc (i64 8)
  %_34 = bitcast i8* %_33 to i64*
  store i64 %_32, i64* %_34, align 8
  %_35 = getelementptr i8, i8* %_33, i64 144115188075855872
  call void @_Bio__println (i8* %_35)
  store i8* null, i8** %_6
  %_36 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 -1, i64 -9223372036854775806)
  %_37 = extractvalue {i64, i1} %_36, 1
  br i1 %_37, label %L11, label %L10
L9:
  store i64 1, i64* %_11
  br label %L2
L10:
  %_38 = extractvalue {i64, i1} %_36, 0
  store i64 %_38, i64* %_9
  %_39 = load i64, i64* %_9
  %_40 = call i8* @_bal_alloc (i64 8)
  %_41 = bitcast i8* %_40 to i64*
  store i64 %_39, i64* %_41, align 8
  %_42 = getelementptr i8, i8* %_40, i64 144115188075855872
  call void @_Bio__println (i8* %_42)
  store i8* null, i8** %_10
  ret void
L11:
  store i64 1, i64* %_11
  br label %L2
}
