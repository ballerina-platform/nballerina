@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %15, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  call void @_Bio__println(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %11 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %21, label %16
13:
  %14 = load i64, i64* %5
  call void @_bal_panic(i64 %14)
  unreachable
15:
  call void @_bal_panic(i64 772)
  unreachable
16:
  %17 = extractvalue {i64, i1} %11, 0
  store i64 %17, i64* %2
  %18 = load i64, i64* %2
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %18)
  call void @_Bio__println(i8 addrspace(1)* %19)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
21:
  store i64 1281, i64* %5
  br label %13
}
