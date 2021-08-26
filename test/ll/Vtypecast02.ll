@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
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
  %19 = alloca i64
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
  br i1 %33, label %43, label %47
34:
  %35 = load i64, i64* %19
  call void @_bal_panic(i64 %35)
  unreachable
36:
  call void @_bal_panic(i64 772)
  unreachable
37:
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %39 = addrspacecast i8 addrspace(1)* %38 to i8*
  %40 = ptrtoint i8* %39 to i64
  %41 = and i64 %40, 2233785415175766016
  %42 = icmp eq i64 %41, 504403158265495552
  br i1 %42, label %52, label %62
43:
  %44 = call double @_bal_tagged_to_float(i8 addrspace(1)* %29)
  %45 = call {i64, i1} @_bal_float_to_int(double %44)
  %46 = extractvalue {i64, i1} %45, 1
  br i1 %46, label %51, label %48
47:
  store i8 addrspace(1)* %29, i8 addrspace(1)** %6
  br label %37
48:
  %49 = extractvalue {i64, i1} %45, 0
  %50 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %49)
  store i8 addrspace(1)* %50, i8 addrspace(1)** %6
  br label %37
51:
  store i64 1539, i64* %19
  br label %34
52:
  %53 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %38)
  store i64 %53, i64* %7
  %54 = load i64, i64* %7
  %55 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %54)
  call void @_Bio__println(i8 addrspace(1)* %55)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %56 = call i8 addrspace(1)* @_B_ifElse(i1 1, i64 42, i1 0)
  store i8 addrspace(1)* %56, i8 addrspace(1)** %9
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %58 = addrspacecast i8 addrspace(1)* %57 to i8*
  %59 = ptrtoint i8* %58 to i64
  %60 = and i64 %59, 2233785415175766016
  %61 = icmp eq i64 %60, 576460752303423488
  br i1 %61, label %69, label %73
62:
  store i64 1539, i64* %19
  br label %34
63:
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %65 = addrspacecast i8 addrspace(1)* %64 to i8*
  %66 = ptrtoint i8* %65 to i64
  %67 = and i64 %66, 2233785415175766016
  %68 = icmp eq i64 %67, 504403158265495552
  br i1 %68, label %78, label %89
69:
  %70 = call double @_bal_tagged_to_float(i8 addrspace(1)* %57)
  %71 = call {i64, i1} @_bal_float_to_int(double %70)
  %72 = extractvalue {i64, i1} %71, 1
  br i1 %72, label %77, label %74
73:
  store i8 addrspace(1)* %57, i8 addrspace(1)** %10
  br label %63
74:
  %75 = extractvalue {i64, i1} %71, 0
  %76 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %75)
  store i8 addrspace(1)* %76, i8 addrspace(1)** %10
  br label %63
77:
  store i64 1795, i64* %19
  br label %34
78:
  %79 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %64)
  store i64 %79, i64* %11
  %80 = load i64, i64* %11
  store i64 %80, i64* %x
  %81 = load i64, i64* %x
  %82 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %81)
  call void @_Bio__println(i8 addrspace(1)* %82)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %83 = call i8 addrspace(1)* @_B_ifElse(i1 0, i64 21, i1 1)
  store i8 addrspace(1)* %83, i8 addrspace(1)** %13
  %84 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %85 = addrspacecast i8 addrspace(1)* %84 to i8*
  %86 = ptrtoint i8* %85 to i64
  %87 = and i64 %86, 2233785415175766016
  %88 = icmp eq i64 %87, 72057594037927936
  br i1 %88, label %90, label %104
89:
  store i64 1795, i64* %19
  br label %34
90:
  %91 = addrspacecast i8 addrspace(1)* %84 to i8*
  %92 = ptrtoint i8* %91 to i64
  %93 = trunc i64 %92 to i1
  store i1 %93, i1* %14
  %94 = load i1, i1* %14
  %95 = zext i1 %94 to i64
  %96 = or i64 %95, 72057594037927936
  %97 = getelementptr i8, i8 addrspace(1)* null, i64 %96
  call void @_Bio__println(i8 addrspace(1)* %97)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %98 = call i8 addrspace(1)* @_B_ifElse(i1 0, i64 21, i1 0)
  store i8 addrspace(1)* %98, i8 addrspace(1)** %16
  %99 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %100 = addrspacecast i8 addrspace(1)* %99 to i8*
  %101 = ptrtoint i8* %100 to i64
  %102 = and i64 %101, 2233785415175766016
  %103 = icmp eq i64 %102, 72057594037927936
  br i1 %103, label %105, label %114
104:
  store i64 2307, i64* %19
  br label %34
105:
  %106 = addrspacecast i8 addrspace(1)* %99 to i8*
  %107 = ptrtoint i8* %106 to i64
  %108 = trunc i64 %107 to i1
  store i1 %108, i1* %17
  %109 = load i1, i1* %17
  store i1 %109, i1* %b
  %110 = load i1, i1* %b
  %111 = zext i1 %110 to i64
  %112 = or i64 %111, 72057594037927936
  %113 = getelementptr i8, i8 addrspace(1)* null, i64 %112
  call void @_Bio__println(i8 addrspace(1)* %113)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  ret void
114:
  store i64 2563, i64* %19
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
  call void @_bal_panic(i64 3588)
  unreachable
}
