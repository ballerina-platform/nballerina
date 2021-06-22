declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_bal_panic (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i8*
  %_7 = alloca i64
  %_8 = call i8* @_bal_alloc (i64 8)
  %_9 = bitcast i8* %_8 to i64*
  store i64 57, i64* %_9, align 8
  %_10 = getelementptr i8, i8* %_8, i64 144115188075855872
  call void @_B_foo (i8* %_10)
  store i8* null, i8** %_0
  %_11 = zext i1 1 to i64
  %_12 = or i64 %_11, 72057594037927936
  %_13 = getelementptr i8, i8* null, i64 %_12
  call void @_B_foo (i8* %_13)
  store i8* null, i8** %_1
  call void @_B_foo (i8* null)
  store i8* null, i8** %_2
  %_14 = call i8* @_bal_alloc (i64 8)
  %_15 = bitcast i8* %_14 to i64*
  store i64 9223372036854775807, i64* %_15, align 8
  %_16 = getelementptr i8, i8* %_14, i64 144115188075855872
  call void @_B_foo (i8* %_16)
  store i8* null, i8** %_3
  %_17 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 -9223372036854775807, i64 1)
  %_18 = extractvalue {i64, i1} %_17, 1
  br i1 %_18, label %L3, label %L2
L1:
  %_24 = load i64, i64* %_7
  call void @_bal_panic (i64 %_24)
  unreachable
L2:
  %_19 = extractvalue {i64, i1} %_17, 0
  store i64 %_19, i64* %_5
  %_20 = load i64, i64* %_5
  %_21 = call i8* @_bal_alloc (i64 8)
  %_22 = bitcast i8* %_21 to i64*
  store i64 %_20, i64* %_22, align 8
  %_23 = getelementptr i8, i8* %_21, i64 144115188075855872
  call void @_B_foo (i8* %_23)
  store i8* null, i8** %_6
  ret void
L3:
  store i64 1, i64* %_7
  br label %L1
}
define internal void @_B_foo (i8* %_0) {
  %x = alloca i8*
  %_1 = alloca i8*
  store i8* %_0, i8** %x
  %_2 = load i8*, i8** %x
  call void @_Bio__println (i8* %_2)
  store i8* null, i8** %_1
  ret void
}
