@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %36, label %12
12:
  %13 = zext i1 1 to i64
  %14 = or i64 %13, 72057594037927936
  %15 = getelementptr i8, i8 addrspace(1)* null, i64 %14
  store i8 addrspace(1)* %15, i8 addrspace(1)** %x
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %17 = addrspacecast i8 addrspace(1)* %16 to i8*
  %18 = ptrtoint i8* %17 to i64
  %19 = and i64 %18, 2233785415175766016
  %20 = lshr i64 %19, 56
  %21 = shl i64 1, %20
  %22 = and i64 %21, 3
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %37, label %47
24:
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621228910))
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %25
25:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504), i8 addrspace(1)** %x
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %27 = addrspacecast i8 addrspace(1)* %26 to i8*
  %28 = ptrtoint i8* %27 to i64
  %29 = and i64 %28, 2233785415175766016
  %30 = lshr i64 %29, 56
  %31 = shl i64 1, %30
  %32 = and i64 %31, 1026
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %53, label %55
34:
  %35 = load i64, i64* %8
  call void @_bal_panic(i64 %35)
  unreachable
36:
  call void @_bal_panic(i64 772)
  unreachable
37:
  store i8 addrspace(1)* %16, i8 addrspace(1)** %1
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_Bio__println(i8 addrspace(1)* %38)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  store i8 addrspace(1)* null, i8 addrspace(1)** %x
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %40 = addrspacecast i8 addrspace(1)* %39 to i8*
  %41 = ptrtoint i8* %40 to i64
  %42 = and i64 %41, 2233785415175766016
  %43 = lshr i64 %42, 56
  %44 = shl i64 1, %43
  %45 = and i64 %44, 3
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %52
47:
  store i64 1283, i64* %8
  br label %34
48:
  store i8 addrspace(1)* %39, i8 addrspace(1)** %4
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %50 = icmp eq i8 addrspace(1)* %49, null
  store i1 %50, i1* %3
  %51 = load i1, i1* %3
  br i1 %51, label %24, label %25
52:
  store i64 1795, i64* %8
  br label %34
53:
  store i8 addrspace(1)* %26, i8 addrspace(1)** %6
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_Bio__println(i8 addrspace(1)* %54)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  ret void
55:
  store i64 2819, i64* %8
  br label %34
}
