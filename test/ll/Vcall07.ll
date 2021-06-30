@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L2, label %L1
L1:
  %_5 = call i64 @_B_foo (i64 10)
  store i64 %_5, i64* %_0
  %_6 = load i64, i64* %_0
  %_7 = call i8* @_bal_alloc (i64 8)
  %_8 = bitcast i8* %_7 to i64*
  store i64 %_6, i64* %_8, align 8
  %_9 = getelementptr i8, i8* %_7, i64 504403158265495552
  call void @_Bio__println (i8* %_9)
  store i8* null, i8** %_1
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal i64 @_B_foo (i64 %_0) {
  %x = alloca i64
  %_1 = alloca i64
  %i = alloca i64
  %_2 = alloca i1
  %_3 = alloca i64
  %_4 = alloca i64
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L5, label %L1
L1:
  store i64 %_0, i64* %x
  %_8 = load i64, i64* %x
  %_9 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_8, i64 1)
  %_10 = extractvalue {i64, i1} %_9, 1
  br i1 %_10, label %L7, label %L6
L2:
  %_16 = load i64, i64* %i
  %_17 = call i64 @_B_foo (i64 %_16)
  store i64 %_17, i64* %_3
  %_18 = load i64, i64* %_3
  ret i64 %_18
L3:
  %_19 = load i64, i64* %i
  ret i64 %_19
L4:
  %_20 = load i64, i64* %_4
  call void @_bal_panic (i64 %_20)
  unreachable
L5:
  call void @_bal_panic (i64 1796)
  unreachable
L6:
  %_11 = extractvalue {i64, i1} %_9, 0
  store i64 %_11, i64* %_1
  %_12 = load i64, i64* %_1
  store i64 %_12, i64* %i
  %_13 = load i64, i64* %i
  %_14 = icmp ne i64 %_13, 0
  store i1 %_14, i1* %_2
  %_15 = load i1, i1* %_2
  br i1 %_15, label %L2, label %L3
L7:
  store i64 2049, i64* %_4
  br label %L4
}
