declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64
  %sub1 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %sub2 = alloca i64
  %_3 = alloca i8*
  %_4 = call i64 @_B_sub (i64 5, i64 2)
  store i64 %_4, i64* %_0
  %_5 = load i64, i64* %_0
  store i64 %_5, i64* %sub1
  %_6 = load i64, i64* %sub1
  call void @_Bio__println (i64 %_6)
  store i8* null, i8** %_1
  %_7 = call i64 @_B_sub (i64 0, i64 1)
  store i64 %_7, i64* %_2
  %_8 = load i64, i64* %_2
  store i64 %_8, i64* %sub2
  %_9 = load i64, i64* %sub2
  call void @_Bio__println (i64 %_9)
  store i8* null, i8** %_3
  ret void
}
define internal i64 @_B_sub (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_4 = load i64, i64* %x
  %_5 = load i64, i64* %y
  %_6 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_4, i64 %_5)
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
