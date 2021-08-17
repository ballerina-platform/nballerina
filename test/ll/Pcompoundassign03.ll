@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %INT_MAX = alloca i64
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %12, label %6
6:
  store i64 9223372036854775807, i64* %INT_MAX
  %7 = load i64, i64* %INT_MAX
  %8 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %7, i64 2)
  %9 = extractvalue {i64, i1} %8, 1
  br i1 %9, label %16, label %13
10:
  %11 = load i64, i64* %2
  call void @_bal_panic(i64 %11)
  unreachable
12:
  call void @_bal_panic(i64 260)
  unreachable
13:
  %14 = extractvalue {i64, i1} %8, 0
  store i64 %14, i64* %1
  %15 = load i64, i64* %1
  store i64 %15, i64* %INT_MAX
  ret void
16:
  store i64 769, i64* %2
  br label %10
}
