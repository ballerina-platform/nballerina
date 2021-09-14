@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare zeroext i1 @_bal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B_main() {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i1
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i1
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i1
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i1
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i1
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i8
  %29 = load i8*, i8** @_bal_stack_guard
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %47, label %31
31:
  %32 = call i8 addrspace(1)* @_B_mkInt(i64 0)
  store i8 addrspace(1)* %32, i8 addrspace(1)** %2
  %33 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %33, i8 addrspace(1)** %3
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %36 = call i1 @_bal_exact_eq(i8 addrspace(1)* %34, i8 addrspace(1)* %35)
  store i1 %36, i1* %1
  %37 = load i1, i1* %1
  %38 = zext i1 %37 to i64
  %39 = or i64 %38, 72057594037927936
  %40 = getelementptr i8, i8 addrspace(1)* null, i64 %39
  call void @_Bio__println(i8 addrspace(1)* %40)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %41 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %41, i8 addrspace(1)** %6
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %43 = addrspacecast i8 addrspace(1)* %42 to i8*
  %44 = ptrtoint i8* %43 to i64
  %45 = and i64 %44, 2233785415175766016
  %46 = icmp eq i64 %45, 504403158265495552
  br i1 %46, label %49, label %52
47:
  %48 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %48)
  unreachable
49:
  %50 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %42)
  %51 = icmp ne i64 %50, 0
  store i1 %51, i1* %5
  br label %53
52:
  store i1 1, i1* %5
  br label %53
53:
  %54 = load i1, i1* %5
  %55 = zext i1 %54 to i64
  %56 = or i64 %55, 72057594037927936
  %57 = getelementptr i8, i8 addrspace(1)* null, i64 %56
  call void @_Bio__println(i8 addrspace(1)* %57)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %58 = call i8 addrspace(1)* @_B_mkBoolean(i1 0)
  store i8 addrspace(1)* %58, i8 addrspace(1)** %9
  %59 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %59, i8 addrspace(1)** %10
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %62 = call i1 @_bal_exact_eq(i8 addrspace(1)* %60, i8 addrspace(1)* %61)
  store i1 %62, i1* %8
  %63 = load i1, i1* %8
  %64 = zext i1 %63 to i64
  %65 = or i64 %64, 72057594037927936
  %66 = getelementptr i8, i8 addrspace(1)* null, i64 %65
  call void @_Bio__println(i8 addrspace(1)* %66)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  %67 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %67, i8 addrspace(1)** %13
  %68 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %68, i8 addrspace(1)** %14
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %71 = call i1 @_bal_exact_eq(i8 addrspace(1)* %69, i8 addrspace(1)* %70)
  %72 = xor i1 %71, 1
  store i1 %72, i1* %12
  %73 = load i1, i1* %12
  %74 = zext i1 %73 to i64
  %75 = or i64 %74, 72057594037927936
  %76 = getelementptr i8, i8 addrspace(1)* null, i64 %75
  call void @_Bio__println(i8 addrspace(1)* %76)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %77 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %77, i8 addrspace(1)** %17
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  %79 = zext i1 0 to i64
  %80 = or i64 %79, 72057594037927936
  %81 = getelementptr i8, i8 addrspace(1)* null, i64 %80
  %82 = icmp ne i8 addrspace(1)* %78, %81
  store i1 %82, i1* %16
  %83 = load i1, i1* %16
  %84 = zext i1 %83 to i64
  %85 = or i64 %84, 72057594037927936
  %86 = getelementptr i8, i8 addrspace(1)* null, i64 %85
  call void @_Bio__println(i8 addrspace(1)* %86)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %87 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %87, i8 addrspace(1)** %20
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %89 = zext i1 1 to i64
  %90 = or i64 %89, 72057594037927936
  %91 = getelementptr i8, i8 addrspace(1)* null, i64 %90
  %92 = icmp ne i8 addrspace(1)* %88, %91
  store i1 %92, i1* %19
  %93 = load i1, i1* %19
  %94 = zext i1 %93 to i64
  %95 = or i64 %94, 72057594037927936
  %96 = getelementptr i8, i8 addrspace(1)* null, i64 %95
  call void @_Bio__println(i8 addrspace(1)* %96)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %97 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %97, i8 addrspace(1)** %23
  %98 = load i8 addrspace(1)*, i8 addrspace(1)** %23
  %99 = zext i1 1 to i64
  %100 = or i64 %99, 72057594037927936
  %101 = getelementptr i8, i8 addrspace(1)* null, i64 %100
  %102 = icmp eq i8 addrspace(1)* %98, %101
  store i1 %102, i1* %22
  %103 = load i1, i1* %22
  %104 = zext i1 %103 to i64
  %105 = or i64 %104, 72057594037927936
  %106 = getelementptr i8, i8 addrspace(1)* null, i64 %105
  call void @_Bio__println(i8 addrspace(1)* %106)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %107 = call i8 addrspace(1)* @_B_mkBoolean(i1 0)
  store i8 addrspace(1)* %107, i8 addrspace(1)** %26
  %108 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  %109 = zext i1 0 to i64
  %110 = or i64 %109, 72057594037927936
  %111 = getelementptr i8, i8 addrspace(1)* null, i64 %110
  %112 = icmp ne i8 addrspace(1)* %108, %111
  store i1 %112, i1* %25
  %113 = load i1, i1* %25
  %114 = zext i1 %113 to i64
  %115 = or i64 %114, 72057594037927936
  %116 = getelementptr i8, i8 addrspace(1)* null, i64 %115
  call void @_Bio__println(i8 addrspace(1)* %116)
  store i8 addrspace(1)* null, i8 addrspace(1)** %27
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
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844)
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
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 4868)
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
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 5892)
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
