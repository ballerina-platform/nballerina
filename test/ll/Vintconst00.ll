@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i64
  %_2 = alloca i8*
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L3, label %L1
L1:
  %_8 = call i8* @_bal_alloc (i64 8)
  %_9 = bitcast i8* %_8 to i64*
  store i64 42, i64* %_9, align 8
  %_10 = getelementptr i8, i8* %_8, i64 504403158265495552
  call void @_Bio__println (i8* %_10)
  store i8* null, i8** %_0
  %_11 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_12 = extractvalue {i64, i1} %_11, 1
  br i1 %_12, label %L5, label %L4
L2:
  %_21 = load i64, i64* %_4
  call void @_bal_panic (i64 %_21)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_13 = extractvalue {i64, i1} %_11, 0
  store i64 %_13, i64* %_1
  %_14 = load i64, i64* %_1
  %_15 = call i8* @_bal_alloc (i64 8)
  %_16 = bitcast i8* %_15 to i64*
  store i64 %_14, i64* %_16, align 8
  %_17 = getelementptr i8, i8* %_15, i64 504403158265495552
  call void @_Bio__println (i8* %_17)
  store i8* null, i8** %_2
  %_18 = call i8* @_bal_alloc (i64 8)
  %_19 = bitcast i8* %_18 to i64*
  store i64 0, i64* %_19, align 8
  %_20 = getelementptr i8, i8* %_18, i64 504403158265495552
  call void @_Bio__println (i8* %_20)
  store i8* null, i8** %_3
  ret void
L5:
  store i64 1281, i64* %_4
  br label %L2
}
