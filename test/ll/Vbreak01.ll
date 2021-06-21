declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %i = alloca i64
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i1
  %_4 = alloca i64
  store i64 0, i64* %i
  br label %L1
L1:
  %_5 = load i64, i64* %i
  %_6 = icmp sge i64 %_5, 0
  store i1 %_6, i1* %_0
  %_7 = load i1, i1* %_0
  br i1 %_7, label %L3, label %L2
L2:
  ret void
L3:
  %_8 = load i64, i64* %i
  call void @_Bio__println (i64 %_8)
  store i8* null, i8** %_1
  %_9 = load i64, i64* %i
  %_10 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_9, i64 1)
  %_11 = extractvalue {i64, i1} %_10, 1
  br i1 %_11, label %L8, label %L7
L4:
  br label %L2
L5:
  br label %L1
L6:
  %_17 = load i64, i64* %_4
  call void @_bal_panic (i64 %_17)
  unreachable
L7:
  %_12 = extractvalue {i64, i1} %_10, 0
  store i64 %_12, i64* %_2
  %_13 = load i64, i64* %_2
  store i64 %_13, i64* %i
  %_14 = load i64, i64* %i
  %_15 = icmp eq i64 %_14, 2
  store i1 %_15, i1* %_3
  %_16 = load i1, i1* %_3
  br i1 %_16, label %L4, label %L5
L8:
  store i64 1, i64* %_4
  br label %L6
}
