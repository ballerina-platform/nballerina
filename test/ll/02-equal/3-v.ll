@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
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
  br i1 %22, label %25, label %28
23:
  %24 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %24)
  unreachable
25:
  %26 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %18)
  %27 = icmp eq i64 %26, 2
  store i1 %27, i1* %1
  br label %29
28:
  store i1 0, i1* %1
  br label %29
29:
  %30 = load i1, i1* %1
  %31 = zext i1 %30 to i64
  %32 = or i64 %31, 72057594037927936
  %33 = getelementptr i8, i8 addrspace(1)* null, i64 %32
  call void @_Bio__println(i8 addrspace(1)* %33)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %34 = call i8 addrspace(1)* @_B_mkInt(i64 17)
  store i8 addrspace(1)* %34, i8 addrspace(1)** %5
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %36 = addrspacecast i8 addrspace(1)* %35 to i8*
  %37 = ptrtoint i8* %36 to i64
  %38 = and i64 %37, 2233785415175766016
  %39 = icmp eq i64 %38, 504403158265495552
  br i1 %39, label %40, label %43
40:
  %41 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %35)
  %42 = icmp ne i64 %41, 17
  store i1 %42, i1* %4
  br label %44
43:
  store i1 1, i1* %4
  br label %44
44:
  %45 = load i1, i1* %4
  %46 = zext i1 %45 to i64
  %47 = or i64 %46, 72057594037927936
  %48 = getelementptr i8, i8 addrspace(1)* null, i64 %47
  call void @_Bio__println(i8 addrspace(1)* %48)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %49 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %49, i8 addrspace(1)** %8
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %51 = zext i1 1 to i64
  %52 = or i64 %51, 72057594037927936
  %53 = getelementptr i8, i8 addrspace(1)* null, i64 %52
  %54 = icmp eq i8 addrspace(1)* %50, %53
  store i1 %54, i1* %7
  %55 = load i1, i1* %7
  %56 = zext i1 %55 to i64
  %57 = or i64 %56, 72057594037927936
  %58 = getelementptr i8, i8 addrspace(1)* null, i64 %57
  call void @_Bio__println(i8 addrspace(1)* %58)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %59 = call i8 addrspace(1)* @_B_mkBoolean(i1 0)
  store i8 addrspace(1)* %59, i8 addrspace(1)** %11
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %61 = zext i1 0 to i64
  %62 = or i64 %61, 72057594037927936
  %63 = getelementptr i8, i8 addrspace(1)* null, i64 %62
  %64 = icmp ne i8 addrspace(1)* %60, %63
  store i1 %64, i1* %10
  %65 = load i1, i1* %10
  %66 = zext i1 %65 to i64
  %67 = or i64 %66, 72057594037927936
  %68 = getelementptr i8, i8 addrspace(1)* null, i64 %67
  call void @_Bio__println(i8 addrspace(1)* %68)
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
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564)
  call void @_bal_panic(i8 addrspace(1)* %6)
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
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 3588)
  call void @_bal_panic(i8 addrspace(1)* %9)
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
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 4612)
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
