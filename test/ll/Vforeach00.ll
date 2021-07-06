@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  call void @_B_loop (i64 8)
  store i8* null, i8** %_0
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define void @_B_loop (i64 %_0) {
  %to = alloca i64
  %i = alloca i64
  %_1 = alloca i1
  %_2 = alloca i8*
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L7, label %L1
L1:
  store i64 %_0, i64* %to
  store i64 2, i64* %i
  br label %L2
L2:
  %_7 = load i64, i64* %i
  %_8 = load i64, i64* %to
  %_9 = icmp slt i64 %_7, %_8
  store i1 %_9, i1* %_1
  %_10 = load i1, i1* %_1
  br i1 %_10, label %L5, label %L3
L3:
  ret void
L4:
  %_11 = load i64, i64* %i
  %_12 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_11, i64 1)
  %_13 = extractvalue {i64, i1} %_12, 1
  br i1 %_13, label %L9, label %L8
L5:
  %_15 = load i64, i64* %i
  %_16 = call i8* @_bal_alloc (i64 8)
  %_17 = bitcast i8* %_16 to i64*
  store i64 %_15, i64* %_17, align 8
  %_18 = getelementptr i8, i8* %_16, i64 504403158265495552
  call void @_Bio__println (i8* %_18)
  store i8* null, i8** %_2
  br label %L4
L6:
  %_19 = load i64, i64* %_3
  call void @_bal_panic (i64 %_19)
  unreachable
L7:
  call void @_bal_panic (i64 1540)
  unreachable
L8:
  %_14 = extractvalue {i64, i1} %_12, 0
  store i64 %_14, i64* %i
  br label %L2
L9:
  store i64 1, i64* %_3
  br label %L6
}
