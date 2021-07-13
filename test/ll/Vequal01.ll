@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*)
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B_main() {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %23, label %16
16:
  %17 = call i8 addrspace(1)* @_B_mkInt(i64 2)
  store i8 addrspace(1)* %17, i8 addrspace(1)** %2
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %19 = addrspacecast i8 addrspace(1)* %18 to i8*
  %20 = ptrtoint i8* %19 to i64
  %21 = and i64 %20, 2233785415175766016
  %22 = icmp eq i64 %21, 504403158265495552
  br i1 %22, label %24, label %27
23:
  call void @_bal_panic(i64 772)
  unreachable
24:
  %25 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %18)
  %26 = icmp eq i64 %25, 2
  store i1 %26, i1* %1
  br label %28
27:
  store i1 0, i1* %1
  br label %28
28:
  %29 = load i1, i1* %1
  %30 = zext i1 %29 to i64
  %31 = or i64 %30, 72057594037927936
  %32 = getelementptr i8, i8 addrspace(1)* null, i64 %31
  call void @_Bio__println(i8 addrspace(1)* %32)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %33 = call i8 addrspace(1)* @_B_mkInt(i64 17)
  store i8 addrspace(1)* %33, i8 addrspace(1)** %5
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %35 = addrspacecast i8 addrspace(1)* %34 to i8*
  %36 = ptrtoint i8* %35 to i64
  %37 = and i64 %36, 2233785415175766016
  %38 = icmp eq i64 %37, 504403158265495552
  br i1 %38, label %39, label %42
39:
  %40 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %34)
  %41 = icmp ne i64 %40, 17
  store i1 %41, i1* %4
  br label %43
42:
  store i1 1, i1* %4
  br label %43
43:
  %44 = load i1, i1* %4
  %45 = zext i1 %44 to i64
  %46 = or i64 %45, 72057594037927936
  %47 = getelementptr i8, i8 addrspace(1)* null, i64 %46
  call void @_Bio__println(i8 addrspace(1)* %47)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %48 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %48, i8 addrspace(1)** %8
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %50 = zext i1 1 to i64
  %51 = or i64 %50, 72057594037927936
  %52 = getelementptr i8, i8 addrspace(1)* null, i64 %51
  %53 = icmp eq i8 addrspace(1)* %49, %52
  store i1 %53, i1* %7
  %54 = load i1, i1* %7
  %55 = zext i1 %54 to i64
  %56 = or i64 %55, 72057594037927936
  %57 = getelementptr i8, i8 addrspace(1)* null, i64 %56
  call void @_Bio__println(i8 addrspace(1)* %57)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %58 = call i8 addrspace(1)* @_B_mkBoolean(i1 0)
  store i8 addrspace(1)* %58, i8 addrspace(1)** %11
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %60 = zext i1 0 to i64
  %61 = or i64 %60, 72057594037927936
  %62 = getelementptr i8, i8 addrspace(1)* null, i64 %61
  %63 = icmp ne i8 addrspace(1)* %59, %62
  store i1 %63, i1* %10
  %64 = load i1, i1* %10
  %65 = zext i1 %64 to i64
  %66 = or i64 %65, 72057594037927936
  %67 = getelementptr i8, i8 addrspace(1)* null, i64 %66
  call void @_Bio__println(i8 addrspace(1)* %67)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  ret void
}
define internal i8 addrspace(1)* @_B_mkNil() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret i8 addrspace(1)* null
5:
  call void @_bal_panic(i64 2564)
  unreachable
}
define internal i8 addrspace(1)* @_B_mkInt(i64 %0) {
  %n = alloca i64
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %8, label %5
5:
  store i64 %0, i64* %n
  %6 = load i64, i64* %n
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %6)
  ret i8 addrspace(1)* %7
8:
  call void @_bal_panic(i64 3588)
  unreachable
}
define internal i8 addrspace(1)* @_B_mkBoolean(i1 %0) {
  %b = alloca i1
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %10, label %5
5:
  store i1 %0, i1* %b
  %6 = load i1, i1* %b
  %7 = zext i1 %6 to i64
  %8 = or i64 %7, 72057594037927936
  %9 = getelementptr i8, i8 addrspace(1)* null, i64 %8
  ret i8 addrspace(1)* %9
10:
  call void @_bal_panic(i64 4612)
  unreachable
}
