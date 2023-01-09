declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @abort() {
}
define i64 @foo(i64 %0, i64 %1) {
  %3 = alloca i64
  %4 = alloca i64
  store i64 %0, i64* %3
  store i64 %1, i64* %4
  %5 = load i64, i64* %3
  %6 = load i64, i64* %4
  %7 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %5, i64 %6)
  %8 = extractvalue {i64, i1} %7, 0
  %9 = extractvalue {i64, i1} %7, 1
  %10 = xor i1 %9, 1
  br i1 %10, label %11, label %12
11:
  ret i64 %8
12:
  call void @abort()
}
