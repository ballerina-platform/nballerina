@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
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
  %n = alloca i64
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i1
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %b = alloca i1
  %19 = alloca i1
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i1
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i8
  %26 = load i8*, i8** @_bal_stack_guard
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %35, label %28
28:
  %29 = call i8 addrspace(1)* @_B_mkInt(i64 2)
  store i8 addrspace(1)* %29, i8 addrspace(1)** %2
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %31 = addrspacecast i8 addrspace(1)* %30 to i8*
  %32 = ptrtoint i8* %31 to i64
  %33 = and i64 %32, 2233785415175766016
  %34 = icmp eq i64 %33, 504403158265495552
  br i1 %34, label %36, label %39
35:
  call void @_bal_panic(i64 772)
  unreachable
36:
  %37 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %30)
  %38 = icmp eq i64 %37, 2
  store i1 %38, i1* %1
  br label %40
39:
  store i1 0, i1* %1
  br label %40
40:
  %41 = load i1, i1* %1
  %42 = zext i1 %41 to i64
  %43 = or i64 %42, 72057594037927936
  %44 = getelementptr i8, i8 addrspace(1)* null, i64 %43
  call void @_Bio__println(i8 addrspace(1)* %44)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %45 = call i8 addrspace(1)* @_B_mkInt(i64 17)
  store i8 addrspace(1)* %45, i8 addrspace(1)** %5
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %47 = addrspacecast i8 addrspace(1)* %46 to i8*
  %48 = ptrtoint i8* %47 to i64
  %49 = and i64 %48, 2233785415175766016
  %50 = icmp eq i64 %49, 504403158265495552
  br i1 %50, label %51, label %54
51:
  %52 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %46)
  %53 = icmp ne i64 %52, 17
  store i1 %53, i1* %4
  br label %55
54:
  store i1 1, i1* %4
  br label %55
55:
  %56 = load i1, i1* %4
  %57 = zext i1 %56 to i64
  %58 = or i64 %57, 72057594037927936
  %59 = getelementptr i8, i8 addrspace(1)* null, i64 %58
  call void @_Bio__println(i8 addrspace(1)* %59)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %60 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %60, i8 addrspace(1)** %8
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %62 = zext i1 1 to i64
  %63 = or i64 %62, 72057594037927936
  %64 = getelementptr i8, i8 addrspace(1)* null, i64 %63
  %65 = icmp eq i8 addrspace(1)* %61, %64
  store i1 %65, i1* %7
  %66 = load i1, i1* %7
  %67 = zext i1 %66 to i64
  %68 = or i64 %67, 72057594037927936
  %69 = getelementptr i8, i8 addrspace(1)* null, i64 %68
  call void @_Bio__println(i8 addrspace(1)* %69)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %70 = call i8 addrspace(1)* @_B_mkBoolean(i1 0)
  store i8 addrspace(1)* %70, i8 addrspace(1)** %11
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %72 = zext i1 0 to i64
  %73 = or i64 %72, 72057594037927936
  %74 = getelementptr i8, i8 addrspace(1)* null, i64 %73
  %75 = icmp ne i8 addrspace(1)* %71, %74
  store i1 %75, i1* %10
  %76 = load i1, i1* %10
  %77 = zext i1 %76 to i64
  %78 = or i64 %77, 72057594037927936
  %79 = getelementptr i8, i8 addrspace(1)* null, i64 %78
  call void @_Bio__println(i8 addrspace(1)* %79)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  store i64 2, i64* %n
  %80 = call i8 addrspace(1)* @_B_mkInt(i64 2)
  store i8 addrspace(1)* %80, i8 addrspace(1)** %14
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %82 = load i64, i64* %n
  %83 = addrspacecast i8 addrspace(1)* %81 to i8*
  %84 = ptrtoint i8* %83 to i64
  %85 = and i64 %84, 2233785415175766016
  %86 = icmp eq i64 %85, 504403158265495552
  br i1 %86, label %87, label %90
87:
  %88 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %81)
  %89 = icmp eq i64 %88, %82
  store i1 %89, i1* %13
  br label %91
90:
  store i1 0, i1* %13
  br label %91
91:
  %92 = load i1, i1* %13
  %93 = zext i1 %92 to i64
  %94 = or i64 %93, 72057594037927936
  %95 = getelementptr i8, i8 addrspace(1)* null, i64 %94
  call void @_Bio__println(i8 addrspace(1)* %95)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  store i64 17, i64* %n
  %96 = call i8 addrspace(1)* @_B_mkInt(i64 17)
  store i8 addrspace(1)* %96, i8 addrspace(1)** %17
  %97 = load i64, i64* %n
  %98 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  %99 = addrspacecast i8 addrspace(1)* %98 to i8*
  %100 = ptrtoint i8* %99 to i64
  %101 = and i64 %100, 2233785415175766016
  %102 = icmp eq i64 %101, 504403158265495552
  br i1 %102, label %103, label %106
103:
  %104 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %98)
  %105 = icmp ne i64 %104, %97
  store i1 %105, i1* %16
  br label %107
106:
  store i1 1, i1* %16
  br label %107
107:
  %108 = load i1, i1* %16
  %109 = zext i1 %108 to i64
  %110 = or i64 %109, 72057594037927936
  %111 = getelementptr i8, i8 addrspace(1)* null, i64 %110
  call void @_Bio__println(i8 addrspace(1)* %111)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  store i1 1, i1* %b
  %112 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %112, i8 addrspace(1)** %20
  %113 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %114 = load i1, i1* %b
  %115 = zext i1 %114 to i64
  %116 = or i64 %115, 72057594037927936
  %117 = getelementptr i8, i8 addrspace(1)* null, i64 %116
  %118 = icmp eq i8 addrspace(1)* %113, %117
  store i1 %118, i1* %19
  %119 = load i1, i1* %19
  %120 = zext i1 %119 to i64
  %121 = or i64 %120, 72057594037927936
  %122 = getelementptr i8, i8 addrspace(1)* null, i64 %121
  call void @_Bio__println(i8 addrspace(1)* %122)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  store i1 0, i1* %b
  %123 = call i8 addrspace(1)* @_B_mkBoolean(i1 0)
  store i8 addrspace(1)* %123, i8 addrspace(1)** %23
  %124 = load i1, i1* %b
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %23
  %126 = zext i1 %124 to i64
  %127 = or i64 %126, 72057594037927936
  %128 = getelementptr i8, i8 addrspace(1)* null, i64 %127
  %129 = icmp ne i8 addrspace(1)* %125, %128
  store i1 %129, i1* %22
  %130 = load i1, i1* %22
  %131 = zext i1 %130 to i64
  %132 = or i64 %131, 72057594037927936
  %133 = getelementptr i8, i8 addrspace(1)* null, i64 %132
  call void @_Bio__println(i8 addrspace(1)* %133)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
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
