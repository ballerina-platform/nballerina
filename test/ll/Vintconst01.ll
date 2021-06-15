declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i64, align 8
  %_4 = alloca i1, align 8
  %_5 = alloca i64, align 8
  %_6 = alloca i64, align 8
  %_7 = alloca i1, align 8
  %_8 = alloca i64, align 8
  call void @_Bio__println (i64 0)
  store i1 0, i1* %_0, align 8
  call void @_Bio__println (i64 1)
  store i1 0, i1* %_1, align 8
  call void @_Bio__println (i64 9223372036854775807)
  store i1 0, i1* %_2, align 8
  call void @_Bio__println (i64 -1)
  store i1 0, i1* %_4, align 8
  %_9 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 -9223372036854775807, i64 1)
  %_10 = extractvalue {i64, i1} %_9, 1
  br i1 %_10, label %L3, label %L2
L1:
  %_13 = load i64, i64* %_8, align 8
  call void @_bal_panic (i64 %_13)
  unreachable
L2:
  %_11 = extractvalue {i64, i1} %_9, 0
  store i64 %_11, i64* %_6, align 8
  %_12 = load i64, i64* %_6, align 8
  call void @_Bio__println (i64 %_12)
  store i1 0, i1* %_7, align 8
  ret void
L3:
  store i64 1, i64* %_8, align 8
  br label %L1
}
