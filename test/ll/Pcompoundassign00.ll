@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %INT_MIN = alloca i64
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %12, label %6
6:
  store i64 -9223372036854775808, i64* %INT_MIN
  %7 = load i64, i64* %INT_MIN
  %8 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %7, i64 1)
  %9 = extractvalue {i64, i1} %8, 1
  br i1 %9, label %17, label %14
10:
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 260)
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
14:
  %15 = extractvalue {i64, i1} %8, 0
  store i64 %15, i64* %1
  %16 = load i64, i64* %1
  store i64 %16, i64* %INT_MIN
  ret void
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 769)
  store i8 addrspace(1)* %18, i8 addrspace(1)** %2
  br label %10
}
