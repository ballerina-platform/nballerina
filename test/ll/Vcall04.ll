declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = call i64 @_B_foo (i64 13, i1 0)
  store i64 %_4, i64* %_0
  %_5 = load i64, i64* %_0
  %_6 = call i8* @_bal_alloc (i64 8)
  %_7 = bitcast i8* %_6 to i64*
  store i64 %_5, i64* %_7, align 8
  %_8 = getelementptr i8, i8* %_6, i64 144115188075855872
  call void @_Bio__println (i8* %_8)
  store i8* null, i8** %_1
  %_9 = call i64 @_B_foo (i64 14, i1 1)
  store i64 %_9, i64* %_2
  %_10 = load i64, i64* %_2
  %_11 = call i8* @_bal_alloc (i64 8)
  %_12 = bitcast i8* %_11 to i64*
  store i64 %_10, i64* %_12, align 8
  %_13 = getelementptr i8, i8* %_11, i64 144115188075855872
  call void @_Bio__println (i8* %_13)
  store i8* null, i8** %_3
  ret void
}
define internal i64 @_B_foo (i64 %_0, i1 %_1) {
  %i = alloca i64
  %b = alloca i1
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i64
  store i64 %_0, i64* %i
  store i1 %_1, i1* %b
  %_5 = load i1, i1* %b
  br i1 %_5, label %L1, label %L2
L1:
  %_6 = load i64, i64* %i
  %_7 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_6, i64 1)
  %_8 = extractvalue {i64, i1} %_7, 1
  br i1 %_8, label %L5, label %L4
L2:
  %_11 = load i64, i64* %i
  %_12 = icmp eq i64 5, 0
  br i1 %_12, label %L6, label %L7
L3:
  %_18 = load i64, i64* %_4
  call void @_bal_panic (i64 %_18)
  unreachable
L4:
  %_9 = extractvalue {i64, i1} %_7, 0
  store i64 %_9, i64* %_2
  %_10 = load i64, i64* %_2
  ret i64 %_10
L5:
  store i64 1, i64* %_4
  br label %L3
L6:
  store i64 2, i64* %_4
  br label %L3
L7:
  %_13 = icmp eq i64 %_11, -9223372036854775808
  %_14 = icmp eq i64 5, -1
  %_15 = and i1 %_13, %_14
  br i1 %_15, label %L9, label %L8
L8:
  %_16 = srem i64 %_11, 5
  store i64 %_16, i64* %_3
  br label %L10
L9:
  store i64 0, i64* %_3
  br label %L10
L10:
  %_17 = load i64, i64* %_3
  ret i64 %_17
}
