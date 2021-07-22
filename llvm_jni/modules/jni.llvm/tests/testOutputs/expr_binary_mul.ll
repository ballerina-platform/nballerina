
; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.smul.with.overflow.i64.i64(i64, i64) #0

declare void @abort()

define i64 @foo(i64 %0, i64 %1) {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 4
  store i64 %1, i64* %4, align 4
  %5 = load i64, i64* %3, align 4
  %6 = load i64, i64* %4, align 4
  %7 = call { i64, i1 } @llvm.smul.with.overflow.i64.i64(i64 %5, i64 %6)
  %8 = extractvalue { i64, i1 } %7, 0
  %9 = extractvalue { i64, i1 } %7, 1
  %10 = xor i1 %9, i1 true
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  ret i64 %8

12:                                               ; preds = %2
  call void @abort()
}

attributes #0 = { nounwind readnone speculatable willreturn }