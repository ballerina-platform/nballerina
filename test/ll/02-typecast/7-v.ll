@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare {i64, i1} @_bal_float_to_int(double) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %x = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i1
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %b = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8
  %21 = load i8*, i8** @_bal_stack_guard
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %36, label %23
23:
  %24 = call i8 addrspace(1)* @_B_ifElse(i1 1, i64 17, i1 0)
  store i8 addrspace(1)* %24, i8 addrspace(1)** %1
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_Bio__println(i8 addrspace(1)* %25)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %26 = call i8 addrspace(1)* @_B_ifElse(i1 0, i64 32, i1 1)
  store i8 addrspace(1)* %26, i8 addrspace(1)** %3
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_Bio__println(i8 addrspace(1)* %27)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %28 = call i8 addrspace(1)* @_B_ifElse(i1 1, i64 32, i1 1)
  store i8 addrspace(1)* %28, i8 addrspace(1)** %5
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %30 = addrspacecast i8 addrspace(1)* %29 to i8*
  %31 = ptrtoint i8* %30 to i64
  %32 = and i64 %31, 2233785415175766016
  %33 = icmp eq i64 %32, 576460752303423488
  br i1 %33, label %44, label %48
34:
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %37)
  unreachable
38:
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %40 = addrspacecast i8 addrspace(1)* %39 to i8*
  %41 = ptrtoint i8* %40 to i64
  %42 = and i64 %41, 2233785415175766016
  %43 = icmp eq i64 %42, 504403158265495552
  br i1 %43, label %54, label %64
44:
  %45 = call double @_bal_tagged_to_float(i8 addrspace(1)* %29)
  %46 = call {i64, i1} @_bal_float_to_int(double %45)
  %47 = extractvalue {i64, i1} %46, 1
  br i1 %47, label %52, label %49
48:
  store i8 addrspace(1)* %29, i8 addrspace(1)** %6
  br label %38
49:
  %50 = extractvalue {i64, i1} %46, 0
  %51 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %50)
  store i8 addrspace(1)* %51, i8 addrspace(1)** %6
  br label %38
52:
  %53 = call i8 addrspace(1)* @_bal_panic_construct(i64 1795)
  store i8 addrspace(1)* %53, i8 addrspace(1)** %19
  br label %34
54:
  %55 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %39)
  store i64 %55, i64* %7
  %56 = load i64, i64* %7
  %57 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %56)
  call void @_Bio__println(i8 addrspace(1)* %57)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %58 = call i8 addrspace(1)* @_B_ifElse(i1 1, i64 42, i1 0)
  store i8 addrspace(1)* %58, i8 addrspace(1)** %9
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %60 = addrspacecast i8 addrspace(1)* %59 to i8*
  %61 = ptrtoint i8* %60 to i64
  %62 = and i64 %61, 2233785415175766016
  %63 = icmp eq i64 %62, 576460752303423488
  br i1 %63, label %72, label %76
64:
  %65 = call i8 addrspace(1)* @_bal_panic_construct(i64 1795)
  store i8 addrspace(1)* %65, i8 addrspace(1)** %19
  br label %34
66:
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %68 = addrspacecast i8 addrspace(1)* %67 to i8*
  %69 = ptrtoint i8* %68 to i64
  %70 = and i64 %69, 2233785415175766016
  %71 = icmp eq i64 %70, 504403158265495552
  br i1 %71, label %82, label %93
72:
  %73 = call double @_bal_tagged_to_float(i8 addrspace(1)* %59)
  %74 = call {i64, i1} @_bal_float_to_int(double %73)
  %75 = extractvalue {i64, i1} %74, 1
  br i1 %75, label %80, label %77
76:
  store i8 addrspace(1)* %59, i8 addrspace(1)** %10
  br label %66
77:
  %78 = extractvalue {i64, i1} %74, 0
  %79 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %78)
  store i8 addrspace(1)* %79, i8 addrspace(1)** %10
  br label %66
80:
  %81 = call i8 addrspace(1)* @_bal_panic_construct(i64 2051)
  store i8 addrspace(1)* %81, i8 addrspace(1)** %19
  br label %34
82:
  %83 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %67)
  store i64 %83, i64* %11
  %84 = load i64, i64* %11
  store i64 %84, i64* %x
  %85 = load i64, i64* %x
  %86 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %85)
  call void @_Bio__println(i8 addrspace(1)* %86)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %87 = call i8 addrspace(1)* @_B_ifElse(i1 0, i64 21, i1 1)
  store i8 addrspace(1)* %87, i8 addrspace(1)** %13
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %89 = addrspacecast i8 addrspace(1)* %88 to i8*
  %90 = ptrtoint i8* %89 to i64
  %91 = and i64 %90, 2233785415175766016
  %92 = icmp eq i64 %91, 72057594037927936
  br i1 %92, label %95, label %109
93:
  %94 = call i8 addrspace(1)* @_bal_panic_construct(i64 2051)
  store i8 addrspace(1)* %94, i8 addrspace(1)** %19
  br label %34
95:
  %96 = addrspacecast i8 addrspace(1)* %88 to i8*
  %97 = ptrtoint i8* %96 to i64
  %98 = trunc i64 %97 to i1
  store i1 %98, i1* %14
  %99 = load i1, i1* %14
  %100 = zext i1 %99 to i64
  %101 = or i64 %100, 72057594037927936
  %102 = getelementptr i8, i8 addrspace(1)* null, i64 %101
  call void @_Bio__println(i8 addrspace(1)* %102)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %103 = call i8 addrspace(1)* @_B_ifElse(i1 0, i64 21, i1 0)
  store i8 addrspace(1)* %103, i8 addrspace(1)** %16
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %105 = addrspacecast i8 addrspace(1)* %104 to i8*
  %106 = ptrtoint i8* %105 to i64
  %107 = and i64 %106, 2233785415175766016
  %108 = icmp eq i64 %107, 72057594037927936
  br i1 %108, label %111, label %120
109:
  %110 = call i8 addrspace(1)* @_bal_panic_construct(i64 2563)
  store i8 addrspace(1)* %110, i8 addrspace(1)** %19
  br label %34
111:
  %112 = addrspacecast i8 addrspace(1)* %104 to i8*
  %113 = ptrtoint i8* %112 to i64
  %114 = trunc i64 %113 to i1
  store i1 %114, i1* %17
  %115 = load i1, i1* %17
  store i1 %115, i1* %b
  %116 = load i1, i1* %b
  %117 = zext i1 %116 to i64
  %118 = or i64 %117, 72057594037927936
  %119 = getelementptr i8, i8 addrspace(1)* null, i64 %118
  call void @_Bio__println(i8 addrspace(1)* %119)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  ret void
120:
  %121 = call i8 addrspace(1)* @_bal_panic_construct(i64 2819)
  store i8 addrspace(1)* %121, i8 addrspace(1)** %19
  br label %34
}
define internal i8 addrspace(1)* @_B_ifElse(i1 %0, i64 %1, i1 %2) {
  %t = alloca i1
  %n = alloca i64
  %b = alloca i1
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %17, label %7
7:
  store i1 %0, i1* %t
  store i64 %1, i64* %n
  store i1 %2, i1* %b
  %8 = load i1, i1* %t
  br i1 %8, label %9, label %12
9:
  %10 = load i64, i64* %n
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %10)
  ret i8 addrspace(1)* %11
12:
  %13 = load i1, i1* %b
  %14 = zext i1 %13 to i64
  %15 = or i64 %14, 72057594037927936
  %16 = getelementptr i8, i8 addrspace(1)* null, i64 %15
  ret i8 addrspace(1)* %16
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844)
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
}
