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
  br i1 %30, label %79, label %31
31:
  %32 = call i8 addrspace(1)* @_B_mkInt(i64 2)
  store i8 addrspace(1)* %32, i8 addrspace(1)** %2
  %33 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
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
  %42 = call i8 addrspace(1)* @_B_mkInt(i64 0)
  store i8 addrspace(1)* %42, i8 addrspace(1)** %6
  %43 = call i8 addrspace(1)* @_B_mkBoolean(i1 0)
  store i8 addrspace(1)* %43, i8 addrspace(1)** %7
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %46 = call i32 @_bal_eq(i8 addrspace(1)* %44, i8 addrspace(1)* %45)
  %47 = trunc i32 %46 to i1
  %48 = xor i1 %47, 1
  store i1 %48, i1* %5
  %49 = load i1, i1* %5
  %50 = zext i1 %49 to i64
  %51 = or i64 %50, 72057594037927936
  %52 = getelementptr i8, i8 addrspace(1)* null, i64 %51
  call void @_Bio__println(i8 addrspace(1)* %52)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %53 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %53, i8 addrspace(1)** %10
  %54 = call i8 addrspace(1)* @_B_mkInt(i64 1)
  store i8 addrspace(1)* %54, i8 addrspace(1)** %11
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %57 = call i32 @_bal_eq(i8 addrspace(1)* %55, i8 addrspace(1)* %56)
  %58 = trunc i32 %57 to i1
  store i1 %58, i1* %9
  %59 = load i1, i1* %9
  %60 = zext i1 %59 to i64
  %61 = or i64 %60, 72057594037927936
  %62 = getelementptr i8, i8 addrspace(1)* null, i64 %61
  call void @_Bio__println(i8 addrspace(1)* %62)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %63 = call i8 addrspace(1)* @_B_mkInt(i64 0)
  store i8 addrspace(1)* %63, i8 addrspace(1)** %14
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %65 = zext i1 0 to i64
  %66 = or i64 %65, 72057594037927936
  %67 = getelementptr i8, i8 addrspace(1)* null, i64 %66
  %68 = icmp ne i8 addrspace(1)* %64, %67
  store i1 %68, i1* %13
  %69 = load i1, i1* %13
  %70 = zext i1 %69 to i64
  %71 = or i64 %70, 72057594037927936
  %72 = getelementptr i8, i8 addrspace(1)* null, i64 %71
  call void @_Bio__println(i8 addrspace(1)* %72)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %73 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %73, i8 addrspace(1)** %17
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  %75 = addrspacecast i8 addrspace(1)* %74 to i8*
  %76 = ptrtoint i8* %75 to i64
  %77 = and i64 %76, 2233785415175766016
  %78 = icmp eq i64 %77, 504403158265495552
  br i1 %78, label %80, label %83
79:
  call void @_bal_panic(i64 772)
  unreachable
80:
  %81 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %74)
  %82 = icmp eq i64 %81, 1
  store i1 %82, i1* %16
  br label %84
83:
  store i1 0, i1* %16
  br label %84
84:
  %85 = load i1, i1* %16
  %86 = zext i1 %85 to i64
  %87 = or i64 %86, 72057594037927936
  %88 = getelementptr i8, i8 addrspace(1)* null, i64 %87
  call void @_Bio__println(i8 addrspace(1)* %88)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %89 = call i8 addrspace(1)* @_B_mkBoolean(i1 0)
  store i8 addrspace(1)* %89, i8 addrspace(1)** %20
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %91 = addrspacecast i8 addrspace(1)* %90 to i8*
  %92 = ptrtoint i8* %91 to i64
  %93 = and i64 %92, 2233785415175766016
  %94 = icmp eq i64 %93, 504403158265495552
  br i1 %94, label %95, label %98
95:
  %96 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %90)
  %97 = icmp ne i64 %96, 0
  store i1 %97, i1* %19
  br label %99
98:
  store i1 1, i1* %19
  br label %99
99:
  %100 = load i1, i1* %19
  %101 = zext i1 %100 to i64
  %102 = or i64 %101, 72057594037927936
  %103 = getelementptr i8, i8 addrspace(1)* null, i64 %102
  call void @_Bio__println(i8 addrspace(1)* %103)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %104 = call i8 addrspace(1)* @_B_mkInt(i64 1)
  store i8 addrspace(1)* %104, i8 addrspace(1)** %23
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %23
  %106 = zext i1 1 to i64
  %107 = or i64 %106, 72057594037927936
  %108 = getelementptr i8, i8 addrspace(1)* null, i64 %107
  %109 = icmp eq i8 addrspace(1)* %105, %108
  store i1 %109, i1* %22
  %110 = load i1, i1* %22
  %111 = zext i1 %110 to i64
  %112 = or i64 %111, 72057594037927936
  %113 = getelementptr i8, i8 addrspace(1)* null, i64 %112
  call void @_Bio__println(i8 addrspace(1)* %113)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %114 = call i8 addrspace(1)* @_B_mkInt(i64 0)
  store i8 addrspace(1)* %114, i8 addrspace(1)** %26
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  %116 = zext i1 0 to i64
  %117 = or i64 %116, 72057594037927936
  %118 = getelementptr i8, i8 addrspace(1)* null, i64 %117
  %119 = icmp ne i8 addrspace(1)* %115, %118
  store i1 %119, i1* %25
  %120 = load i1, i1* %25
  %121 = zext i1 %120 to i64
  %122 = or i64 %121, 72057594037927936
  %123 = getelementptr i8, i8 addrspace(1)* null, i64 %122
  call void @_Bio__println(i8 addrspace(1)* %123)
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
