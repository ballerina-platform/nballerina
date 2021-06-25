declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare void @_bal_panic (i64)
define void @_B_main () {
  %INT_MAX = alloca i64
  %_0 = alloca i64
  %_1 = alloca i8*
  store i64 9223372036854775807, i64* %INT_MAX
  %_2 = load i64, i64* %INT_MAX
  %_3 = call i64 @_B_add (i64 %_2, i64 1)
  store i64 %_3, i64* %_0
  %_4 = load i64, i64* %_0
  %_5 = call i8* @_bal_alloc (i64 8)
  %_6 = bitcast i8* %_5 to i64*
  store i64 %_4, i64* %_6, align 8
  %_7 = getelementptr i8, i8* %_5, i64 144115188075855872
  call void @_Bio__println (i8* %_7)
  store i8* null, i8** %_1
  ret void
}
define internal i64 @_B_add (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_4 = load i64, i64* %x
  %_5 = load i64, i64* %y
  %_6 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_4, i64 %_5)
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
