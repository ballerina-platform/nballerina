declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare void @_bal_panic (i64)
define void @_B_main () {
  %i = alloca i64
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i1
  %_4 = alloca i1
  %_5 = alloca i64
  store i64 0, i64* %i
  br label %L1
L1:
  %_6 = load i64, i64* %i
  %_7 = icmp sge i64 %_6, 0
  store i1 %_7, i1* %_0
  %_8 = load i1, i1* %_0
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
  store i8* null, i8** %_1
  %_13 = load i64, i64* %i
  %_14 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_13, i64 1)
  %_15 = extractvalue {i64, i1} %_14, 1
  br i1 %_15, label %L10, label %L9
L4:
  %_21 = load i64, i64* %i
  %_22 = icmp eq i64 %_21, 4
  store i1 %_22, i1* %_4
  %_23 = load i1, i1* %_4
  br i1 %_23, label %L5, label %L6
L5:
  br label %L2
L6:
  br label %L7
L7:
  br label %L1
L8:
  %_24 = load i64, i64* %_5
  call void @_bal_panic (i64 %_24)
  unreachable
L9:
  %_16 = extractvalue {i64, i1} %_14, 0
  store i64 %_16, i64* %_2
  %_17 = load i64, i64* %_2
  store i64 %_17, i64* %i
  %_18 = load i64, i64* %i
  %_19 = icmp sge i64 %_18, 1
  store i1 %_19, i1* %_3
  %_20 = load i1, i1* %_3
  br i1 %_20, label %L4, label %L7
L10:
  store i64 1, i64* %_5
  br label %L8
}
