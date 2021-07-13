@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i1
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  store i1 0, i1* %2
  %8 = load i1, i1* %2
  %9 = icmp eq i1 1, %8
  store i1 %9, i1* %1
  %10 = load i1, i1* %1
  %11 = zext i1 %10 to i64
  %12 = or i64 %11, 72057594037927936
  %13 = getelementptr i8, i8 addrspace(1)* null, i64 %12
  call void @_Bio__println(i8 addrspace(1)* %13)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
14:
  call void @_bal_panic(i64 772)
  unreachable
}
