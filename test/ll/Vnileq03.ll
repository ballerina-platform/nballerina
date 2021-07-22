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
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8
  %15 = load i8*, i8** @_bal_stack_guard
  %16 = icmp ult i8* %14, %15
  br i1 %16, label %48, label %17
17:
  call void @_B_makeNil()
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %19 = icmp eq i8 addrspace(1)* %18, null
  store i1 %19, i1* %1
  %20 = load i1, i1* %1
  %21 = zext i1 %20 to i64
  %22 = or i64 %21, 72057594037927936
  %23 = getelementptr i8, i8 addrspace(1)* null, i64 %22
  call void @_Bio__println(i8 addrspace(1)* %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  call void @_B_makeNil()
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %25 = icmp eq i8 addrspace(1)* %24, null
  store i1 %25, i1* %4
  %26 = load i1, i1* %4
  %27 = zext i1 %26 to i64
  %28 = or i64 %27, 72057594037927936
  %29 = getelementptr i8, i8 addrspace(1)* null, i64 %28
  call void @_Bio__println(i8 addrspace(1)* %29)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %30 = icmp ne i8 addrspace(1)* null, null
  store i1 %30, i1* %7
  %31 = load i1, i1* %7
  %32 = zext i1 %31 to i64
  %33 = or i64 %32, 72057594037927936
  %34 = getelementptr i8, i8 addrspace(1)* null, i64 %33
  call void @_Bio__println(i8 addrspace(1)* %34)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  store i8 addrspace(1)* null, i8 addrspace(1)** %x
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %36 = icmp eq i8 addrspace(1)* %35, null
  store i1 %36, i1* %9
  %37 = load i1, i1* %9
  %38 = zext i1 %37 to i64
  %39 = or i64 %38, 72057594037927936
  %40 = getelementptr i8, i8 addrspace(1)* null, i64 %39
  call void @_Bio__println(i8 addrspace(1)* %40)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %41 = call i8 addrspace(1)* @_B_makeNilAny()
  store i8 addrspace(1)* %41, i8 addrspace(1)** %12
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %43 = icmp ne i8 addrspace(1)* %42, null
  store i1 %43, i1* %11
  %44 = load i1, i1* %11
  %45 = zext i1 %44 to i64
  %46 = or i64 %45, 72057594037927936
  %47 = getelementptr i8, i8 addrspace(1)* null, i64 %46
  call void @_Bio__println(i8 addrspace(1)* %47)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  ret void
48:
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
