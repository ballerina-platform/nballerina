declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @abort () {
}
define i64 @foo (i64 %_0, i64 %_1) {
  %_2 = alloca i64, align 8
  %_3 = alloca i64, align 8
  store i64 %_0, i64* %_2, align 8
  store i64 %_1, i64* %_3, align 8
  %_4 = load i64, i64* %_2, align 8
  %_5 = load i64, i64* %_3, align 8
  %_6 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_4, i64 %_5)
  %_7 = extractvalue {i64, i1} %_6, 0
  %_8 = extractvalue {i64, i1} %_6, 1
  %_9 = xor i1 %_8, 1
  br i1 %_9, label %L1, label %L2
L1:
  ret i64 %_7
L2:
  call void @abort ()
}
