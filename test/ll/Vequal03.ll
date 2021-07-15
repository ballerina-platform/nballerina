@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare zeroext i1 @_bal_eq(i8 addrspace(1)*, i8 addrspace(1)*)
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
  %36 = call i1 @_bal_eq(i8 addrspace(1)* %34, i8 addrspace(1)* %35)
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
  %45 = call i1 @_bal_eq(i8 addrspace(1)* %43, i8 addrspace(1)* %44)
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
  %55 = call i1 @_bal_eq(i8 addrspace(1)* %53, i8 addrspace(1)* %54)
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
  br i1 %75, label %77, label %80
76:
  call void @_bal_panic(i64 772)
  unreachable
77:
  %78 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %71)
  %79 = icmp eq i64 %78, 1
  store i1 %79, i1* %16
  br label %81
80:
  store i1 0, i1* %16
  br label %81
81:
  %82 = load i1, i1* %16
  %83 = zext i1 %82 to i64
  %84 = or i64 %83, 72057594037927936
  %85 = getelementptr i8, i8 addrspace(1)* null, i64 %84
  call void @_Bio__println(i8 addrspace(1)* %85)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %86 = call i8 addrspace(1)* @_B_mkBoolean(i1 0)
  store i8 addrspace(1)* %86, i8 addrspace(1)** %20
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %88 = addrspacecast i8 addrspace(1)* %87 to i8*
  %89 = ptrtoint i8* %88 to i64
  %90 = and i64 %89, 2233785415175766016
  %91 = icmp eq i64 %90, 504403158265495552
  br i1 %91, label %92, label %95
92:
  %93 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %87)
  %94 = icmp ne i64 %93, 0
  store i1 %94, i1* %19
  br label %96
95:
  store i1 1, i1* %19
  br label %96
96:
  %97 = load i1, i1* %19
  %98 = zext i1 %97 to i64
  %99 = or i64 %98, 72057594037927936
  %100 = getelementptr i8, i8 addrspace(1)* null, i64 %99
  call void @_Bio__println(i8 addrspace(1)* %100)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %101 = call i8 addrspace(1)* @_B_mkInt(i64 1)
  store i8 addrspace(1)* %101, i8 addrspace(1)** %23
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %23
  %103 = zext i1 1 to i64
  %104 = or i64 %103, 72057594037927936
  %105 = getelementptr i8, i8 addrspace(1)* null, i64 %104
  %106 = icmp eq i8 addrspace(1)* %102, %105
  store i1 %106, i1* %22
  %107 = load i1, i1* %22
  %108 = zext i1 %107 to i64
  %109 = or i64 %108, 72057594037927936
  %110 = getelementptr i8, i8 addrspace(1)* null, i64 %109
  call void @_Bio__println(i8 addrspace(1)* %110)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %111 = call i8 addrspace(1)* @_B_mkInt(i64 0)
  store i8 addrspace(1)* %111, i8 addrspace(1)** %26
  %112 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  %113 = zext i1 0 to i64
  %114 = or i64 %113, 72057594037927936
  %115 = getelementptr i8, i8 addrspace(1)* null, i64 %114
  %116 = icmp ne i8 addrspace(1)* %112, %115
  store i1 %116, i1* %25
  %117 = load i1, i1* %25
  %118 = zext i1 %117 to i64
  %119 = or i64 %118, 72057594037927936
  %120 = getelementptr i8, i8 addrspace(1)* null, i64 %119
  call void @_Bio__println(i8 addrspace(1)* %120)
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
