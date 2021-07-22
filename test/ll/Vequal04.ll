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
  %36 = call i1 @_bal_eq(i8 addrspace(1)* %34, i8 addrspace(1)* %35)
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
  br i1 %46, label %48, label %51
47:
  call void @_bal_panic(i64 772)
  unreachable
48:
  %49 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %42)
  %50 = icmp ne i64 %49, 0
  store i1 %50, i1* %5
  br label %52
51:
  store i1 1, i1* %5
  br label %52
52:
  %53 = load i1, i1* %5
  %54 = zext i1 %53 to i64
  %55 = or i64 %54, 72057594037927936
  %56 = getelementptr i8, i8 addrspace(1)* null, i64 %55
  call void @_Bio__println(i8 addrspace(1)* %56)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %57 = call i8 addrspace(1)* @_B_mkBoolean(i1 0)
  store i8 addrspace(1)* %57, i8 addrspace(1)** %9
  %58 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %58, i8 addrspace(1)** %10
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %61 = call i1 @_bal_eq(i8 addrspace(1)* %59, i8 addrspace(1)* %60)
  store i1 %61, i1* %8
  %62 = load i1, i1* %8
  %63 = zext i1 %62 to i64
  %64 = or i64 %63, 72057594037927936
  %65 = getelementptr i8, i8 addrspace(1)* null, i64 %64
  call void @_Bio__println(i8 addrspace(1)* %65)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  %66 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %66, i8 addrspace(1)** %13
  %67 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %67, i8 addrspace(1)** %14
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %70 = call i1 @_bal_eq(i8 addrspace(1)* %68, i8 addrspace(1)* %69)
  %71 = xor i1 %70, 1
  store i1 %71, i1* %12
  %72 = load i1, i1* %12
  %73 = zext i1 %72 to i64
  %74 = or i64 %73, 72057594037927936
  %75 = getelementptr i8, i8 addrspace(1)* null, i64 %74
  call void @_Bio__println(i8 addrspace(1)* %75)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %76 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %76, i8 addrspace(1)** %17
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  %78 = zext i1 0 to i64
  %79 = or i64 %78, 72057594037927936
  %80 = getelementptr i8, i8 addrspace(1)* null, i64 %79
  %81 = icmp ne i8 addrspace(1)* %77, %80
  store i1 %81, i1* %16
  %82 = load i1, i1* %16
  %83 = zext i1 %82 to i64
  %84 = or i64 %83, 72057594037927936
  %85 = getelementptr i8, i8 addrspace(1)* null, i64 %84
  call void @_Bio__println(i8 addrspace(1)* %85)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %86 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %86, i8 addrspace(1)** %20
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %88 = zext i1 1 to i64
  %89 = or i64 %88, 72057594037927936
  %90 = getelementptr i8, i8 addrspace(1)* null, i64 %89
  %91 = icmp ne i8 addrspace(1)* %87, %90
  store i1 %91, i1* %19
  %92 = load i1, i1* %19
  %93 = zext i1 %92 to i64
  %94 = or i64 %93, 72057594037927936
  %95 = getelementptr i8, i8 addrspace(1)* null, i64 %94
  call void @_Bio__println(i8 addrspace(1)* %95)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %96 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %96, i8 addrspace(1)** %23
  %97 = load i8 addrspace(1)*, i8 addrspace(1)** %23
  %98 = zext i1 1 to i64
  %99 = or i64 %98, 72057594037927936
  %100 = getelementptr i8, i8 addrspace(1)* null, i64 %99
  %101 = icmp eq i8 addrspace(1)* %97, %100
  store i1 %101, i1* %22
  %102 = load i1, i1* %22
  %103 = zext i1 %102 to i64
  %104 = or i64 %103, 72057594037927936
  %105 = getelementptr i8, i8 addrspace(1)* null, i64 %104
  call void @_Bio__println(i8 addrspace(1)* %105)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %106 = call i8 addrspace(1)* @_B_mkBoolean(i1 0)
  store i8 addrspace(1)* %106, i8 addrspace(1)** %26
  %107 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  %108 = zext i1 0 to i64
  %109 = or i64 %108, 72057594037927936
  %110 = getelementptr i8, i8 addrspace(1)* null, i64 %109
  %111 = icmp ne i8 addrspace(1)* %107, %110
  store i1 %111, i1* %25
  %112 = load i1, i1* %25
  %113 = zext i1 %112 to i64
  %114 = or i64 %113, 72057594037927936
  %115 = getelementptr i8, i8 addrspace(1)* null, i64 %114
  call void @_Bio__println(i8 addrspace(1)* %115)
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
