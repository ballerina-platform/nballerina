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
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
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
  br i1 %30, label %76, label %31
31:
  %32 = call i8 addrspace(1)* @_B_mkInt(i64 2)
  store i8 addrspace(1)* %32, i8 addrspace(1)** %2
  %33 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
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
  %41 = call i8 addrspace(1)* @_B_mkInt(i64 0)
  store i8 addrspace(1)* %41, i8 addrspace(1)** %6
  %42 = call i8 addrspace(1)* @_B_mkBoolean(i1 0)
  store i8 addrspace(1)* %42, i8 addrspace(1)** %7
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %45 = call i1 @_bal_exact_eq(i8 addrspace(1)* %43, i8 addrspace(1)* %44)
  %46 = xor i1 %45, 1
  store i1 %46, i1* %5
  %47 = load i1, i1* %5
  %48 = zext i1 %47 to i64
  %49 = or i64 %48, 72057594037927936
  %50 = getelementptr i8, i8 addrspace(1)* null, i64 %49
  call void @_Bio__println(i8 addrspace(1)* %50)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %51 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %51, i8 addrspace(1)** %10
  %52 = call i8 addrspace(1)* @_B_mkInt(i64 1)
  store i8 addrspace(1)* %52, i8 addrspace(1)** %11
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %55 = call i1 @_bal_exact_eq(i8 addrspace(1)* %53, i8 addrspace(1)* %54)
  store i1 %55, i1* %9
  %56 = load i1, i1* %9
  %57 = zext i1 %56 to i64
  %58 = or i64 %57, 72057594037927936
  %59 = getelementptr i8, i8 addrspace(1)* null, i64 %58
  call void @_Bio__println(i8 addrspace(1)* %59)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %60 = call i8 addrspace(1)* @_B_mkInt(i64 0)
  store i8 addrspace(1)* %60, i8 addrspace(1)** %14
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %62 = zext i1 0 to i64
  %63 = or i64 %62, 72057594037927936
  %64 = getelementptr i8, i8 addrspace(1)* null, i64 %63
  %65 = icmp ne i8 addrspace(1)* %61, %64
  store i1 %65, i1* %13
  %66 = load i1, i1* %13
  %67 = zext i1 %66 to i64
  %68 = or i64 %67, 72057594037927936
  %69 = getelementptr i8, i8 addrspace(1)* null, i64 %68
  call void @_Bio__println(i8 addrspace(1)* %69)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %70 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %70, i8 addrspace(1)** %17
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  %72 = addrspacecast i8 addrspace(1)* %71 to i8*
  %73 = ptrtoint i8* %72 to i64
  %74 = and i64 %73, 2233785415175766016
  %75 = icmp eq i64 %74, 504403158265495552
  br i1 %75, label %78, label %81
76:
  %77 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %77)
  unreachable
78:
  %79 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %71)
  %80 = icmp eq i64 %79, 1
  store i1 %80, i1* %16
  br label %82
81:
  store i1 0, i1* %16
  br label %82
82:
  %83 = load i1, i1* %16
  %84 = zext i1 %83 to i64
  %85 = or i64 %84, 72057594037927936
  %86 = getelementptr i8, i8 addrspace(1)* null, i64 %85
  call void @_Bio__println(i8 addrspace(1)* %86)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %87 = call i8 addrspace(1)* @_B_mkBoolean(i1 0)
  store i8 addrspace(1)* %87, i8 addrspace(1)** %20
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %89 = addrspacecast i8 addrspace(1)* %88 to i8*
  %90 = ptrtoint i8* %89 to i64
  %91 = and i64 %90, 2233785415175766016
  %92 = icmp eq i64 %91, 504403158265495552
  br i1 %92, label %93, label %96
93:
  %94 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %88)
  %95 = icmp ne i64 %94, 0
  store i1 %95, i1* %19
  br label %97
96:
  store i1 1, i1* %19
  br label %97
97:
  %98 = load i1, i1* %19
  %99 = zext i1 %98 to i64
  %100 = or i64 %99, 72057594037927936
  %101 = getelementptr i8, i8 addrspace(1)* null, i64 %100
  call void @_Bio__println(i8 addrspace(1)* %101)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %102 = call i8 addrspace(1)* @_B_mkInt(i64 1)
  store i8 addrspace(1)* %102, i8 addrspace(1)** %23
  %103 = load i8 addrspace(1)*, i8 addrspace(1)** %23
  %104 = zext i1 1 to i64
  %105 = or i64 %104, 72057594037927936
  %106 = getelementptr i8, i8 addrspace(1)* null, i64 %105
  %107 = icmp eq i8 addrspace(1)* %103, %106
  store i1 %107, i1* %22
  %108 = load i1, i1* %22
  %109 = zext i1 %108 to i64
  %110 = or i64 %109, 72057594037927936
  %111 = getelementptr i8, i8 addrspace(1)* null, i64 %110
  call void @_Bio__println(i8 addrspace(1)* %111)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %112 = call i8 addrspace(1)* @_B_mkInt(i64 0)
  store i8 addrspace(1)* %112, i8 addrspace(1)** %26
  %113 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  %114 = zext i1 0 to i64
  %115 = or i64 %114, 72057594037927936
  %116 = getelementptr i8, i8 addrspace(1)* null, i64 %115
  %117 = icmp ne i8 addrspace(1)* %113, %116
  store i1 %117, i1* %25
  %118 = load i1, i1* %25
  %119 = zext i1 %118 to i64
  %120 = or i64 %119, 72057594037927936
  %121 = getelementptr i8, i8 addrspace(1)* null, i64 %120
  call void @_Bio__println(i8 addrspace(1)* %121)
  store i8 addrspace(1)* null, i8 addrspace(1)** %27
  ret void
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
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844)
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
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 4868)
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
