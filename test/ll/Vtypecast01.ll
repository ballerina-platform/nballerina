@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @llvm.ptrmask.p0i8.i64 (i8*, i64) readnone speculatable
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i64
  %n = alloca i64
  %_2 = alloca i8*
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L3, label %L1
L1:
  %_7 = call i8* @_B_foo (i64 1017)
  store i8* %_7, i8** %_0
  %_8 = load i8*, i8** %_0
  %_9 = ptrtoint i8* %_8 to i64
  %_10 = and i64 %_9, 9151314442816847872
  %_11 = icmp eq i64 %_10, 144115188075855872
  br i1 %_11, label %L4, label %L5
L2:
  %_20 = load i64, i64* %_3
  call void @_bal_panic (i64 %_20)
  unreachable
L3:
  call void @_bal_panic (i64 4)
  unreachable
L4:
  %_12 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_8, i64 72057594037927935)
  %_13 = bitcast i8* %_12 to i64*
  %_14 = load i64, i64* %_13, align 8
  store i64 %_14, i64* %_1
  %_15 = load i64, i64* %_1
  store i64 %_15, i64* %n
  %_16 = load i64, i64* %n
  %_17 = call i8* @_bal_alloc (i64 8)
  %_18 = bitcast i8* %_17 to i64*
  store i64 %_16, i64* %_18, align 8
  %_19 = getelementptr i8, i8* %_17, i64 144115188075855872
  call void @_Bio__println (i8* %_19)
  store i8* null, i8** %_2
  ret void
L5:
  store i64 3, i64* %_3
  br label %L2
}
define internal i8* @_B_foo (i64 %_0) {
  %n = alloca i64
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  store i64 %_0, i64* %n
  %_4 = load i64, i64* %n
  %_5 = call i8* @_bal_alloc (i64 8)
  %_6 = bitcast i8* %_5 to i64*
  store i64 %_4, i64* %_6, align 8
  %_7 = getelementptr i8, i8* %_5, i64 144115188075855872
  ret i8* %_7
L2:
  call void @_bal_panic (i64 4)
  unreachable
}
