declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare void @_Bio__println (i64)
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
  call void @_Bio__println (i64 %_9)
  store i8* null, i8** %_1
  %_10 = load i64, i64* %i
  %_11 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_10, i64 1)
  %_12 = extractvalue {i64, i1} %_11, 1
  br i1 %_12, label %L10, label %L9
L4:
  %_18 = load i64, i64* %i
  %_19 = icmp eq i64 %_18, 4
  store i1 %_19, i1* %_4
  %_20 = load i1, i1* %_4
  br i1 %_20, label %L5, label %L6
L5:
  br label %L2
L6:
  br label %L7
L7:
  br label %L1
L8:
  %_21 = load i64, i64* %_5
  call void @_bal_panic (i64 %_21)
  unreachable
L9:
  %_13 = extractvalue {i64, i1} %_11, 0
  store i64 %_13, i64* %_2
  %_14 = load i64, i64* %_2
  store i64 %_14, i64* %i
  %_15 = load i64, i64* %i
  %_16 = icmp sge i64 %_15, 1
  store i1 %_16, i1* %_3
  %_17 = load i1, i1* %_3
  br i1 %_17, label %L4, label %L7
L10:
  store i64 1, i64* %_5
  br label %L8
}
