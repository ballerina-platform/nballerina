declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i64
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = call i64 @_B_getArg1 ()
  store i64 %_4, i64* %_0
  %_5 = call i64 @_B_getArg2 ()
  store i64 %_5, i64* %_1
  %_6 = load i64, i64* %_0
  %_7 = load i64, i64* %_1
  %_8 = call i64 @_B_foo (i64 %_6, i64 %_7)
  store i64 %_8, i64* %_2
  %_9 = load i64, i64* %_2
  %_10 = call i8* @_bal_alloc (i64 8)
  %_11 = bitcast i8* %_10 to i64*
  store i64 %_9, i64* %_11, align 8
  %_12 = getelementptr i8, i8* %_10, i64 144115188075855872
  call void @_Bio__println (i8* %_12)
  store i8* null, i8** %_3
  ret void
}
define internal i64 @_B_foo (i64 %_0, i64 %_1) {
  %i = alloca i64
  %j = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  store i64 %_0, i64* %i
  store i64 %_1, i64* %j
  %_4 = load i64, i64* %i
  %_5 = load i64, i64* %j
  %_6 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_4, i64 %_5)
  %_7 = extractvalue {i64, i1} %_6, 1
  br i1 %_7, label %L3, label %L2
L1:
  %_10 = load i64, i64* %_3
  call void @_bal_panic (i64 %_10)
  unreachable
L2:
  %_8 = extractvalue {i64, i1} %_6, 0
  store i64 %_8, i64* %_2
  %_9 = load i64, i64* %_2
  ret i64 %_9
L3:
  store i64 1, i64* %_3
  br label %L1
}
define internal i64 @_B_getArg1 () {
  ret i64 2
}
define internal i64 @_B_getArg2 () {
  ret i64 4
}
