declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i64
  %_4 = alloca i8*
  %_5 = alloca i64
  %_6 = alloca i64
  %_7 = alloca i8*
  %_8 = alloca i64
  %_9 = call i8* @_bal_alloc (i64 8)
  %_10 = bitcast i8* %_9 to i64*
  store i64 0, i64* %_10, align 8
  %_11 = getelementptr i8, i8* %_9, i64 144115188075855872
  call void @_Bio__println (i8* %_11)
  store i8* null, i8** %_0
  %_12 = call i8* @_bal_alloc (i64 8)
  %_13 = bitcast i8* %_12 to i64*
  store i64 1, i64* %_13, align 8
  %_14 = getelementptr i8, i8* %_12, i64 144115188075855872
  call void @_Bio__println (i8* %_14)
  store i8* null, i8** %_1
  %_15 = call i8* @_bal_alloc (i64 8)
  %_16 = bitcast i8* %_15 to i64*
  store i64 9223372036854775807, i64* %_16, align 8
  %_17 = getelementptr i8, i8* %_15, i64 144115188075855872
  call void @_Bio__println (i8* %_17)
  store i8* null, i8** %_2
  %_18 = call i8* @_bal_alloc (i64 8)
  %_19 = bitcast i8* %_18 to i64*
  store i64 -1, i64* %_19, align 8
  %_20 = getelementptr i8, i8* %_18, i64 144115188075855872
  call void @_Bio__println (i8* %_20)
  store i8* null, i8** %_4
  %_21 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 -9223372036854775807, i64 1)
  %_22 = extractvalue {i64, i1} %_21, 1
  br i1 %_22, label %L3, label %L2
L1:
  %_28 = load i64, i64* %_8
  call void @_bal_panic (i64 %_28)
  unreachable
L2:
  %_23 = extractvalue {i64, i1} %_21, 0
  store i64 %_23, i64* %_6
  %_24 = load i64, i64* %_6
  %_25 = call i8* @_bal_alloc (i64 8)
  %_26 = bitcast i8* %_25 to i64*
  store i64 %_24, i64* %_26, align 8
  %_27 = getelementptr i8, i8* %_25, i64 144115188075855872
  call void @_Bio__println (i8* %_27)
  store i8* null, i8** %_7
  ret void
L3:
  store i64 1, i64* %_8
  br label %L1
}
