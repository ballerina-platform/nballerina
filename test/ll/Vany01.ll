@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %b = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %23, label %8
8:
  %9 = zext i1 1 to i64
  %10 = or i64 %9, 72057594037927936
  %11 = getelementptr i8, i8 addrspace(1)* null, i64 %10
  call void @_Bio__println(i8 addrspace(1)* %11)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %12 = zext i1 0 to i64
  %13 = or i64 %12, 72057594037927936
  %14 = getelementptr i8, i8 addrspace(1)* null, i64 %13
  call void @_Bio__println(i8 addrspace(1)* %14)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  store i1 1, i1* %b
  %15 = load i1, i1* %b
  %16 = zext i1 %15 to i64
  %17 = or i64 %16, 72057594037927936
  %18 = getelementptr i8, i8 addrspace(1)* null, i64 %17
  call void @_Bio__println(i8 addrspace(1)* %18)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  store i1 0, i1* %b
  %19 = load i1, i1* %b
  %20 = zext i1 %19 to i64
  %21 = or i64 %20, 72057594037927936
  %22 = getelementptr i8, i8 addrspace(1)* null, i64 %21
  call void @_Bio__println(i8 addrspace(1)* %22)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
23:
  call void @_bal_panic(i64 772)
  unreachable
}
