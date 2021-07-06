@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i8*
  %i = alloca i64
  %_1 = alloca i1
  %_2 = alloca i8*
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L7, label %L1
L1:
  %_8 = call i8* @_bal_alloc (i64 8)
  %_9 = bitcast i8* %_8 to i64*
  store i64 0, i64* %_9, align 8
  %_10 = getelementptr i8, i8* %_8, i64 504403158265495552
  call void @_Bio__println (i8* %_10)
  store i8* null, i8** %_0
  store i64 2, i64* %i
  br label %L2
L2:
  %_11 = load i64, i64* %i
  %_12 = icmp slt i64 %_11, 1
  store i1 %_12, i1* %_1
  %_13 = load i1, i1* %_1
  br i1 %_13, label %L5, label %L3
L3:
  %_14 = call i8* @_bal_alloc (i64 8)
  %_15 = bitcast i8* %_14 to i64*
  store i64 1, i64* %_15, align 8
  %_16 = getelementptr i8, i8* %_14, i64 504403158265495552
  call void @_Bio__println (i8* %_16)
  store i8* null, i8** %_3
  ret void
L4:
  %_17 = load i64, i64* %i
  %_18 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_17, i64 1)
  %_19 = extractvalue {i64, i1} %_18, 1
  br i1 %_19, label %L9, label %L8
L5:
  %_21 = load i64, i64* %i
  %_22 = call i8* @_bal_alloc (i64 8)
  %_23 = bitcast i8* %_22 to i64*
  store i64 %_21, i64* %_23, align 8
  %_24 = getelementptr i8, i8* %_22, i64 504403158265495552
  call void @_Bio__println (i8* %_24)
  store i8* null, i8** %_2
  br label %L4
L6:
  %_25 = load i64, i64* %_4
  call void @_bal_panic (i64 %_25)
  unreachable
L7:
  call void @_bal_panic (i64 772)
  unreachable
L8:
  %_20 = extractvalue {i64, i1} %_18, 0
  store i64 %_20, i64* %i
  br label %L2
L9:
  store i64 1, i64* %_4
  br label %L6
}
