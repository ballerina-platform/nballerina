@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L2, label %L1
L1:
  %_5 = call i64 @_B_bin (i64 6, i64 2, i64 3)
  store i64 %_5, i64* %_0
  %_6 = load i64, i64* %_0
  %_7 = call i8* @_bal_alloc (i64 8)
  %_8 = bitcast i8* %_7 to i64*
  store i64 %_6, i64* %_8, align 8
  %_9 = getelementptr i8, i8* %_7, i64 504403158265495552
  call void @_Bio__println (i8* %_9)
  store i8* null, i8** %_1
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal i64 @_B_bin (i64 %_0, i64 %_1, i64 %_2) {
  %x = alloca i64
  %y = alloca i64
  %z = alloca i64
  %_3 = alloca i64
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i8
  %_7 = load i8*, i8** @_bal_stack_guard
  %_8 = icmp ult i8* %_6, %_7
  br i1 %_8, label %L3, label %L1
L1:
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  store i64 %_2, i64* %z
  %_9 = load i64, i64* %x
  %_10 = load i64, i64* %y
  %_11 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_9, i64 %_10)
  %_12 = extractvalue {i64, i1} %_11, 1
  br i1 %_12, label %L5, label %L4
L2:
  %_22 = load i64, i64* %_5
  call void @_bal_panic (i64 %_22)
  unreachable
L3:
  call void @_bal_panic (i64 1796)
  unreachable
L4:
  %_13 = extractvalue {i64, i1} %_11, 0
  store i64 %_13, i64* %_3
  %_14 = load i64, i64* %_3
  %_15 = load i64, i64* %z
  %_16 = icmp eq i64 %_15, 0
  br i1 %_16, label %L6, label %L7
L5:
  store i64 2049, i64* %_5
  br label %L2
L6:
  store i64 2050, i64* %_5
  br label %L2
L7:
  %_17 = icmp eq i64 %_14, -9223372036854775808
  %_18 = icmp eq i64 %_15, -1
  %_19 = and i1 %_17, %_18
  br i1 %_19, label %L9, label %L8
L8:
  %_20 = sdiv i64 %_14, %_15
  store i64 %_20, i64* %_4
  %_21 = load i64, i64* %_4
  ret i64 %_21
L9:
  store i64 2049, i64* %_5
  br label %L2
}
