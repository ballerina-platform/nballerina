@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B_main() {
  %i = alloca i64
  %1 = alloca i1
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %28, label %8
8:
  store i64 6, i64* %i
  br label %9
9:
  %10 = load i64, i64* %i
  %11 = icmp slt i64 %10, 10
  store i1 %11, i1* %1
  %12 = load i1, i1* %1
  br i1 %12, label %20, label %13
13:
  %14 = zext i1 1 to i64
  %15 = or i64 %14, 72057594037927936
  %16 = getelementptr i8, i8 addrspace(1)* null, i64 %15
  call void @_Bio__println(i8 addrspace(1)* %16)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
17:
  %18 = load i64, i64* %i
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %i
  br label %9
20:
  %21 = load i64, i64* %i
  %22 = icmp eq i64 %21, 8
  store i1 %22, i1* %2
  %23 = load i1, i1* %2
  br i1 %23, label %24, label %25
24:
  br label %13
25:
  %26 = load i64, i64* %i
  %27 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %26)
  call void @_Bio__println(i8 addrspace(1)* %27)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %17
28:
  call void @_bal_panic(i64 772)
  unreachable
}
