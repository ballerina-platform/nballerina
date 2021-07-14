@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i32 @_bal_eq(i8 addrspace(1)*, i8 addrspace(1)*)
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*)
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
  br i1 %30, label %48, label %31
31:
  %32 = call i8 addrspace(1)* @_B_mkInt(i64 0)
  store i8 addrspace(1)* %32, i8 addrspace(1)** %2
  %33 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %33, i8 addrspace(1)** %3
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %36 = call i32 @_bal_eq(i8 addrspace(1)* %34, i8 addrspace(1)* %35)
  %37 = trunc i32 %36 to i1
  store i1 %37, i1* %1
  %38 = load i1, i1* %1
  %39 = zext i1 %38 to i64
  %40 = or i64 %39, 72057594037927936
  %41 = getelementptr i8, i8 addrspace(1)* null, i64 %40
  call void @_Bio__println(i8 addrspace(1)* %41)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %42 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %42, i8 addrspace(1)** %6
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %44 = addrspacecast i8 addrspace(1)* %43 to i8*
  %45 = ptrtoint i8* %44 to i64
  %46 = and i64 %45, 2233785415175766016
  %47 = icmp eq i64 %46, 504403158265495552
  br i1 %47, label %49, label %52
48:
  call void @_bal_panic(i64 772)
  unreachable
49:
  %50 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %43)
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
  %62 = call i32 @_bal_eq(i8 addrspace(1)* %60, i8 addrspace(1)* %61)
  %63 = trunc i32 %62 to i1
  store i1 %63, i1* %8
  %64 = load i1, i1* %8
  %65 = zext i1 %64 to i64
  %66 = or i64 %65, 72057594037927936
  %67 = getelementptr i8, i8 addrspace(1)* null, i64 %66
  call void @_Bio__println(i8 addrspace(1)* %67)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  %68 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %68, i8 addrspace(1)** %13
  %69 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %69, i8 addrspace(1)** %14
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %72 = call i32 @_bal_eq(i8 addrspace(1)* %70, i8 addrspace(1)* %71)
  %73 = trunc i32 %72 to i1
  %74 = xor i1 %73, 1
  store i1 %74, i1* %12
  %75 = load i1, i1* %12
  %76 = zext i1 %75 to i64
  %77 = or i64 %76, 72057594037927936
  %78 = getelementptr i8, i8 addrspace(1)* null, i64 %77
  call void @_Bio__println(i8 addrspace(1)* %78)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %79 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %79, i8 addrspace(1)** %17
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  %81 = zext i1 0 to i64
  %82 = or i64 %81, 72057594037927936
  %83 = getelementptr i8, i8 addrspace(1)* null, i64 %82
  %84 = icmp ne i8 addrspace(1)* %80, %83
  store i1 %84, i1* %16
  %85 = load i1, i1* %16
  %86 = zext i1 %85 to i64
  %87 = or i64 %86, 72057594037927936
  %88 = getelementptr i8, i8 addrspace(1)* null, i64 %87
  call void @_Bio__println(i8 addrspace(1)* %88)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %89 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %89, i8 addrspace(1)** %20
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %91 = zext i1 1 to i64
  %92 = or i64 %91, 72057594037927936
  %93 = getelementptr i8, i8 addrspace(1)* null, i64 %92
  %94 = icmp ne i8 addrspace(1)* %90, %93
  store i1 %94, i1* %19
  %95 = load i1, i1* %19
  %96 = zext i1 %95 to i64
  %97 = or i64 %96, 72057594037927936
  %98 = getelementptr i8, i8 addrspace(1)* null, i64 %97
  call void @_Bio__println(i8 addrspace(1)* %98)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %99 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %99, i8 addrspace(1)** %23
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %23
  %101 = zext i1 1 to i64
  %102 = or i64 %101, 72057594037927936
  %103 = getelementptr i8, i8 addrspace(1)* null, i64 %102
  %104 = icmp eq i8 addrspace(1)* %100, %103
  store i1 %104, i1* %22
  %105 = load i1, i1* %22
  %106 = zext i1 %105 to i64
  %107 = or i64 %106, 72057594037927936
  %108 = getelementptr i8, i8 addrspace(1)* null, i64 %107
  call void @_Bio__println(i8 addrspace(1)* %108)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %109 = call i8 addrspace(1)* @_B_mkBoolean(i1 0)
  store i8 addrspace(1)* %109, i8 addrspace(1)** %26
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  %111 = zext i1 0 to i64
  %112 = or i64 %111, 72057594037927936
  %113 = getelementptr i8, i8 addrspace(1)* null, i64 %112
  %114 = icmp ne i8 addrspace(1)* %110, %113
  store i1 %114, i1* %25
  %115 = load i1, i1* %25
  %116 = zext i1 %115 to i64
  %117 = or i64 %116, 72057594037927936
  %118 = getelementptr i8, i8 addrspace(1)* null, i64 %117
  call void @_Bio__println(i8 addrspace(1)* %118)
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
  call void @_bal_panic(i64 3588)
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
  call void @_bal_panic(i64 4612)
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
  call void @_bal_panic(i64 5636)
  unreachable
}
