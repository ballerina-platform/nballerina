@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %45, label %16
16:
  call void @_B_makeNil()
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %18 = icmp eq i8 addrspace(1)* %17, null
  store i1 %18, i1* %1
  %19 = load i1, i1* %1
  %20 = zext i1 %19 to i64
  %21 = or i64 %20, 72057594037927936
  %22 = getelementptr i8, i8 addrspace(1)* null, i64 %21
  call void @_Bio__println(i8 addrspace(1)* %22)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  call void @_B_makeNil()
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %24 = icmp eq i8 addrspace(1)* %23, null
  store i1 %24, i1* %4
  %25 = load i1, i1* %4
  %26 = zext i1 %25 to i64
  %27 = or i64 %26, 72057594037927936
  %28 = getelementptr i8, i8 addrspace(1)* null, i64 %27
  call void @_Bio__println(i8 addrspace(1)* %28)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %29 = zext i1 0 to i64
  %30 = or i64 %29, 72057594037927936
  %31 = getelementptr i8, i8 addrspace(1)* null, i64 %30
  call void @_Bio__println(i8 addrspace(1)* %31)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  store i8 addrspace(1)* null, i8 addrspace(1)** %x
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %33 = icmp eq i8 addrspace(1)* %32, null
  store i1 %33, i1* %8
  %34 = load i1, i1* %8
  %35 = zext i1 %34 to i64
  %36 = or i64 %35, 72057594037927936
  %37 = getelementptr i8, i8 addrspace(1)* null, i64 %36
  call void @_Bio__println(i8 addrspace(1)* %37)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %38 = call i8 addrspace(1)* @_B_makeNilAny()
  store i8 addrspace(1)* %38, i8 addrspace(1)** %11
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %40 = icmp ne i8 addrspace(1)* %39, null
  store i1 %40, i1* %10
  %41 = load i1, i1* %10
  %42 = zext i1 %41 to i64
  %43 = or i64 %42, 72057594037927936
  %44 = getelementptr i8, i8 addrspace(1)* null, i64 %43
  call void @_Bio__println(i8 addrspace(1)* %44)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  ret void
45:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal void @_B_makeNil() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret void
5:
  call void @_bal_panic(i64 3076)
  unreachable
}
define internal i8 addrspace(1)* @_B_makeNilAny() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret i8 addrspace(1)* null
5:
  call void @_bal_panic(i64 4100)
  unreachable
}
