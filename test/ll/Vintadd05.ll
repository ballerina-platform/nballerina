declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare void @_bal_panic (i64)
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
  %_12 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 1, i64 0)
  %_13 = extractvalue {i64, i1} %_12, 1
  br i1 %_13, label %L3, label %L2
L1:
  %_40 = load i64, i64* %_11
  call void @_bal_panic (i64 %_40)
  unreachable
L2:
  %_14 = extractvalue {i64, i1} %_12, 0
  store i64 %_14, i64* %_0
  %_15 = load i64, i64* %_0
  %_16 = call i8* @_bal_alloc (i64 8)
  %_17 = bitcast i8* %_16 to i64*
  store i64 %_15, i64* %_17, align 8
  %_18 = getelementptr i8, i8* %_16, i64 144115188075855872
  call void @_Bio__println (i8* %_18)
  store i8* null, i8** %_1
  %_19 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 1, i64 9223372036854775806)
  %_20 = extractvalue {i64, i1} %_19, 1
  br i1 %_20, label %L5, label %L4
L3:
  store i64 1, i64* %_11
  br label %L1
L4:
  %_21 = extractvalue {i64, i1} %_19, 0
  store i64 %_21, i64* %_2
  %_22 = load i64, i64* %_2
  %_23 = call i8* @_bal_alloc (i64 8)
  %_24 = bitcast i8* %_23 to i64*
  store i64 %_22, i64* %_24, align 8
  %_25 = getelementptr i8, i8* %_23, i64 144115188075855872
  call void @_Bio__println (i8* %_25)
  store i8* null, i8** %_3
  %_26 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 -1, i64 0)
  %_27 = extractvalue {i64, i1} %_26, 1
  br i1 %_27, label %L7, label %L6
L5:
  store i64 1, i64* %_11
  br label %L1
L6:
  %_28 = extractvalue {i64, i1} %_26, 0
  store i64 %_28, i64* %_5
  %_29 = load i64, i64* %_5
  %_30 = call i8* @_bal_alloc (i64 8)
  %_31 = bitcast i8* %_30 to i64*
  store i64 %_29, i64* %_31, align 8
  %_32 = getelementptr i8, i8* %_30, i64 144115188075855872
  call void @_Bio__println (i8* %_32)
  store i8* null, i8** %_6
  %_33 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 -1, i64 -9223372036854775806)
  %_34 = extractvalue {i64, i1} %_33, 1
  br i1 %_34, label %L9, label %L8
L7:
  store i64 1, i64* %_11
  br label %L1
L8:
  %_35 = extractvalue {i64, i1} %_33, 0
  store i64 %_35, i64* %_9
  %_36 = load i64, i64* %_9
  %_37 = call i8* @_bal_alloc (i64 8)
  %_38 = bitcast i8* %_37 to i64*
  store i64 %_36, i64* %_38, align 8
  %_39 = getelementptr i8, i8* %_37, i64 144115188075855872
  call void @_Bio__println (i8* %_39)
  store i8* null, i8** %_10
  ret void
L9:
  store i64 1, i64* %_11
  br label %L1
}
