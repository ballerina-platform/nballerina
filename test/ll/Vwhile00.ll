declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
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
  %_2 = alloca i8*
  %_3 = alloca i64
  %_4 = alloca i64
  store i64 %_0, i64* %maxExclusive
  store i64 0, i64* %i
  br label %L1
L1:
  %_5 = load i64, i64* %i
  %_6 = load i64, i64* %maxExclusive
  %_7 = icmp slt i64 %_5, %_6
  store i1 %_7, i1* %_1
  %_8 = load i1, i1* %_1
  br i1 %_8, label %L3, label %L2
L2:
  ret void
L3:
  %_9 = load i64, i64* %i
  %_10 = call i8* @_bal_alloc (i64 8)
  %_11 = bitcast i8* %_10 to i64*
  store i64 %_9, i64* %_11, align 8
  %_12 = getelementptr i8, i8* %_10, i64 144115188075855872
  call void @_Bio__println (i8* %_12)
  store i8* null, i8** %_2
  %_13 = load i64, i64* %i
  %_14 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_13, i64 1)
  %_15 = extractvalue {i64, i1} %_14, 1
  br i1 %_15, label %L6, label %L5
L4:
  %_18 = load i64, i64* %_4
  call void @_bal_panic (i64 %_18)
  unreachable
L5:
  %_16 = extractvalue {i64, i1} %_14, 0
  store i64 %_16, i64* %_3
  %_17 = load i64, i64* %_3
  store i64 %_17, i64* %i
  br label %L1
L6:
  store i64 1, i64* %_4
  br label %L4
}
