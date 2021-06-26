@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
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
  %_9 = alloca i8
  %_10 = load i8*, i8** @_bal_stack_guard
  %_11 = icmp ult i8* %_9, %_10
  br i1 %_11, label %L3, label %L1
L1:
  %_12 = call i8* @_bal_alloc (i64 8)
  %_13 = bitcast i8* %_12 to i64*
  store i64 0, i64* %_13, align 8
  %_14 = getelementptr i8, i8* %_12, i64 144115188075855872
  call void @_Bio__println (i8* %_14)
  store i8* null, i8** %_0
  %_15 = call i8* @_bal_alloc (i64 8)
  %_16 = bitcast i8* %_15 to i64*
  store i64 1, i64* %_16, align 8
  %_17 = getelementptr i8, i8* %_15, i64 144115188075855872
  call void @_Bio__println (i8* %_17)
  store i8* null, i8** %_1
  %_18 = call i8* @_bal_alloc (i64 8)
  %_19 = bitcast i8* %_18 to i64*
  store i64 9223372036854775807, i64* %_19, align 8
  %_20 = getelementptr i8, i8* %_18, i64 144115188075855872
  call void @_Bio__println (i8* %_20)
  store i8* null, i8** %_2
  %_21 = call i8* @_bal_alloc (i64 8)
  %_22 = bitcast i8* %_21 to i64*
  store i64 -1, i64* %_22, align 8
  %_23 = getelementptr i8, i8* %_21, i64 144115188075855872
  call void @_Bio__println (i8* %_23)
  store i8* null, i8** %_4
  %_24 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 -9223372036854775807, i64 1)
  %_25 = extractvalue {i64, i1} %_24, 1
  br i1 %_25, label %L5, label %L4
L2:
  %_31 = load i64, i64* %_8
  call void @_bal_panic (i64 %_31)
  unreachable
L3:
  call void @_bal_panic (i64 4)
  unreachable
L4:
  %_26 = extractvalue {i64, i1} %_24, 0
  store i64 %_26, i64* %_6
  %_27 = load i64, i64* %_6
  %_28 = call i8* @_bal_alloc (i64 8)
  %_29 = bitcast i8* %_28 to i64*
  store i64 %_27, i64* %_29, align 8
  %_30 = getelementptr i8, i8* %_28, i64 144115188075855872
  call void @_Bio__println (i8* %_30)
  store i8* null, i8** %_7
  ret void
L5:
  store i64 1, i64* %_8
  br label %L2
}
