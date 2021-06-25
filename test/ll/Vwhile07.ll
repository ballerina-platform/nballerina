declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare void @_bal_panic (i64)
define void @_B_main () {
  %i = alloca i64
  %_0 = alloca i1
  %_1 = alloca i1
  %_2 = alloca i8*
  %_3 = alloca i64
  %_4 = alloca i64
  store i64 0, i64* %i
  br label %L1
L1:
  %_5 = load i64, i64* %i
  %_6 = icmp slt i64 %_5, 3
  store i1 %_6, i1* %_0
  %_7 = load i1, i1* %_0
  %_8 = xor i1 1, %_7
  store i1 %_8, i1* %_1
  %_9 = load i1, i1* %_1
  br i1 %_9, label %L3, label %L4
L2:
  ret void
L3:
  br label %L2
L4:
  %_10 = load i64, i64* %i
  %_11 = call i8* @_bal_alloc (i64 8)
  %_12 = bitcast i8* %_11 to i64*
  store i64 %_10, i64* %_12, align 8
  %_13 = getelementptr i8, i8* %_11, i64 144115188075855872
  call void @_Bio__println (i8* %_13)
  store i8* null, i8** %_2
  %_14 = load i64, i64* %i
  %_15 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_14, i64 1)
  %_16 = extractvalue {i64, i1} %_15, 1
  br i1 %_16, label %L7, label %L6
L5:
  %_19 = load i64, i64* %_4
  call void @_bal_panic (i64 %_19)
  unreachable
L6:
  %_17 = extractvalue {i64, i1} %_15, 0
  store i64 %_17, i64* %_3
  %_18 = load i64, i64* %_3
  store i64 %_18, i64* %i
  br label %L1
L7:
  store i64 1, i64* %_4
  br label %L5
}
