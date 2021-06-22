declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i8*
  call void @_B_printInts (i64 5)
  store i8* null, i8** %_0
  ret void
}
define internal void @_B_printInts (i64 %_0) {
  %maxExclusive = alloca i64
  %i = alloca i64
  %_1 = alloca i1
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i64
  store i64 %_0, i64* %maxExclusive
  %_5 = load i64, i64* %maxExclusive
  store i64 %_5, i64* %i
  br label %L1
L1:
  %_6 = load i64, i64* %i
  %_7 = call i64 @_B_decrease (i64 %_6)
  store i64 %_7, i64* %_2
  %_8 = load i64, i64* %_2
  %_9 = icmp sle i64 0, %_8
  store i1 %_9, i1* %_1
  %_10 = load i1, i1* %_1
  br i1 %_10, label %L3, label %L2
L2:
  ret void
L3:
  %_11 = load i64, i64* %i
  %_12 = call i8* @_bal_alloc (i64 8)
  %_13 = bitcast i8* %_12 to i64*
  store i64 %_11, i64* %_13, align 8
  %_14 = getelementptr i8, i8* %_12, i64 144115188075855872
  call void @_Bio__println (i8* %_14)
  store i8* null, i8** %_3
  %_15 = load i64, i64* %i
  %_16 = call i64 @_B_decrease (i64 %_15)
  store i64 %_16, i64* %_4
  %_17 = load i64, i64* %_4
  store i64 %_17, i64* %i
  br label %L1
}
define internal i64 @_B_decrease (i64 %_0) {
  %x = alloca i64
  %_1 = alloca i64
  %_2 = alloca i64
  store i64 %_0, i64* %x
  %_3 = load i64, i64* %x
  %_4 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_3, i64 1)
  %_5 = extractvalue {i64, i1} %_4, 1
  br i1 %_5, label %L3, label %L2
L1:
  %_8 = load i64, i64* %_2
  call void @_bal_panic (i64 %_8)
  unreachable
L2:
  %_6 = extractvalue {i64, i1} %_4, 0
  store i64 %_6, i64* %_1
  %_7 = load i64, i64* %_1
  ret i64 %_7
L3:
  store i64 1, i64* %_2
  br label %L1
}
