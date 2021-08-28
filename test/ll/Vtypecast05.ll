@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
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
  %8 = alloca i8 addrspace(1)*
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
  br i1 %23, label %38, label %48
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
  br i1 %33, label %56, label %58
34:
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %37)
  unreachable
38:
  store i8 addrspace(1)* %16, i8 addrspace(1)** %1
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_Bio__println(i8 addrspace(1)* %39)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  store i8 addrspace(1)* null, i8 addrspace(1)** %x
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %41 = addrspacecast i8 addrspace(1)* %40 to i8*
  %42 = ptrtoint i8* %41 to i64
  %43 = and i64 %42, 2233785415175766016
  %44 = lshr i64 %43, 56
  %45 = shl i64 1, %44
  %46 = and i64 %45, 3
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %50, label %54
48:
  %49 = call i8 addrspace(1)* @_bal_panic_construct(i64 1283)
  store i8 addrspace(1)* %49, i8 addrspace(1)** %8
  br label %34
50:
  store i8 addrspace(1)* %40, i8 addrspace(1)** %4
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %52 = icmp eq i8 addrspace(1)* %51, null
  store i1 %52, i1* %3
  %53 = load i1, i1* %3
  br i1 %53, label %24, label %25
54:
  %55 = call i8 addrspace(1)* @_bal_panic_construct(i64 1795)
  store i8 addrspace(1)* %55, i8 addrspace(1)** %8
  br label %34
56:
  store i8 addrspace(1)* %26, i8 addrspace(1)** %6
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_Bio__println(i8 addrspace(1)* %57)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  ret void
58:
  %59 = call i8 addrspace(1)* @_bal_panic_construct(i64 2819)
  store i8 addrspace(1)* %59, i8 addrspace(1)** %8
  br label %34
}
