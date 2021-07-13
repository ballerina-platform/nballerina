@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*)
declare void @_Bio__println(i8 addrspace(1)*)
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
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %22, label %16
16:
  %17 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %17, i8 addrspace(1)** %2
  %18 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %18, i8 addrspace(1)** %3
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %21 = icmp eq i8 addrspace(1)* %19, %20
  br i1 %21, label %23, label %24
22:
  call void @_bal_panic(i64 772)
  unreachable
23:
  store i1 1, i1* %1
  br label %34
24:
  %25 = addrspacecast i8 addrspace(1)* %19 to i8*
  %26 = ptrtoint i8* %25 to i64
  %27 = and i64 %26, 2233785415175766016
  %28 = icmp eq i64 %27, 504403158265495552
  %29 = addrspacecast i8 addrspace(1)* %20 to i8*
  %30 = ptrtoint i8* %29 to i64
  %31 = and i64 %30, 2233785415175766016
  %32 = icmp eq i64 %31, 504403158265495552
  %33 = and i1 %28, %32
  br i1 %33, label %44, label %48
34:
  %35 = load i1, i1* %1
  %36 = zext i1 %35 to i64
  %37 = or i64 %36, 72057594037927936
  %38 = getelementptr i8, i8 addrspace(1)* null, i64 %37
  call void @_Bio__println(i8 addrspace(1)* %38)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %39 = call i8 addrspace(1)* @_B_mkInt(i64 1)
  store i8 addrspace(1)* %39, i8 addrspace(1)** %6
  %40 = call i8 addrspace(1)* @_B_mkInt(i64 1)
  store i8 addrspace(1)* %40, i8 addrspace(1)** %7
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %43 = icmp eq i8 addrspace(1)* %41, %42
  br i1 %43, label %49, label %50
44:
  %45 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %19)
  %46 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %20)
  %47 = icmp eq i64 %45, %46
  store i1 %47, i1* %1
  br label %34
48:
  store i1 0, i1* %1
  br label %34
49:
  store i1 0, i1* %5
  br label %60
50:
  %51 = addrspacecast i8 addrspace(1)* %41 to i8*
  %52 = ptrtoint i8* %51 to i64
  %53 = and i64 %52, 2233785415175766016
  %54 = icmp eq i64 %53, 504403158265495552
  %55 = addrspacecast i8 addrspace(1)* %42 to i8*
  %56 = ptrtoint i8* %55 to i64
  %57 = and i64 %56, 2233785415175766016
  %58 = icmp eq i64 %57, 504403158265495552
  %59 = and i1 %54, %58
  br i1 %59, label %70, label %74
60:
  %61 = load i1, i1* %5
  %62 = zext i1 %61 to i64
  %63 = or i64 %62, 72057594037927936
  %64 = getelementptr i8, i8 addrspace(1)* null, i64 %63
  call void @_Bio__println(i8 addrspace(1)* %64)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %65 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %65, i8 addrspace(1)** %10
  %66 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %66, i8 addrspace(1)** %11
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %69 = icmp eq i8 addrspace(1)* %67, %68
  br i1 %69, label %75, label %76
70:
  %71 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %41)
  %72 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %42)
  %73 = icmp ne i64 %71, %72
  store i1 %73, i1* %5
  br label %60
74:
  store i1 1, i1* %5
  br label %60
75:
  store i1 1, i1* %9
  br label %86
76:
  %77 = addrspacecast i8 addrspace(1)* %67 to i8*
  %78 = ptrtoint i8* %77 to i64
  %79 = and i64 %78, 2233785415175766016
  %80 = icmp eq i64 %79, 504403158265495552
  %81 = addrspacecast i8 addrspace(1)* %68 to i8*
  %82 = ptrtoint i8* %81 to i64
  %83 = and i64 %82, 2233785415175766016
  %84 = icmp eq i64 %83, 504403158265495552
  %85 = and i1 %80, %84
  br i1 %85, label %91, label %95
86:
  %87 = load i1, i1* %9
  %88 = zext i1 %87 to i64
  %89 = or i64 %88, 72057594037927936
  %90 = getelementptr i8, i8 addrspace(1)* null, i64 %89
  call void @_Bio__println(i8 addrspace(1)* %90)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  ret void
91:
  %92 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %67)
  %93 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %68)
  %94 = icmp eq i64 %92, %93
  store i1 %94, i1* %9
  br label %86
95:
  store i1 0, i1* %9
  br label %86
}
define internal i8 addrspace(1)* @_B_mkNil() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret i8 addrspace(1)* null
5:
  call void @_bal_panic(i64 2308)
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
  call void @_bal_panic(i64 3332)
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
  call void @_bal_panic(i64 4356)
  unreachable
}
