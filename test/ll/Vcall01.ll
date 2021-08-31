@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i64
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i64
  %19 = alloca i64
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8
  %23 = load i8*, i8** @_bal_stack_guard
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %34, label %25
25:
  %26 = call i64 @_B_foo()
  store i64 %26, i64* %1
  %27 = call i64 @_B_bar()
  store i64 %27, i64* %2
  %28 = load i64, i64* %1
  %29 = load i64, i64* %2
  %30 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %28, i64 %29)
  %31 = extractvalue {i64, i1} %30, 1
  br i1 %31, label %46, label %36
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = extractvalue {i64, i1} %30, 0
  store i64 %37, i64* %3
  %38 = load i64, i64* %3
  %39 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %38)
  call void @_Bio__println(i8 addrspace(1)* %39)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %40 = call i64 @_B_foo()
  store i64 %40, i64* %5
  %41 = call i64 @_B_bar()
  store i64 %41, i64* %6
  %42 = load i64, i64* %5
  %43 = load i64, i64* %6
  %44 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %42, i64 %43)
  %45 = extractvalue {i64, i1} %44, 1
  br i1 %45, label %58, label %48
46:
  %47 = call i8 addrspace(1)* @_bal_panic_construct(i64 1025)
  store i8 addrspace(1)* %47, i8 addrspace(1)** %21
  br label %32
48:
  %49 = extractvalue {i64, i1} %44, 0
  store i64 %49, i64* %7
  %50 = load i64, i64* %7
  %51 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %50)
  call void @_Bio__println(i8 addrspace(1)* %51)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %52 = call i64 @_B_foo()
  store i64 %52, i64* %9
  %53 = call i64 @_B_bar()
  store i64 %53, i64* %10
  %54 = load i64, i64* %9
  %55 = load i64, i64* %10
  %56 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %54, i64 %55)
  %57 = extractvalue {i64, i1} %56, 1
  br i1 %57, label %69, label %60
58:
  %59 = call i8 addrspace(1)* @_bal_panic_construct(i64 1281)
  store i8 addrspace(1)* %59, i8 addrspace(1)** %21
  br label %32
60:
  %61 = extractvalue {i64, i1} %56, 0
  store i64 %61, i64* %11
  %62 = load i64, i64* %11
  %63 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %62)
  call void @_Bio__println(i8 addrspace(1)* %63)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %64 = call i64 @_B_foo()
  store i64 %64, i64* %13
  %65 = call i64 @_B_bar()
  store i64 %65, i64* %14
  %66 = load i64, i64* %13
  %67 = load i64, i64* %14
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %71, label %73
69:
  %70 = call i8 addrspace(1)* @_bal_panic_construct(i64 1537)
  store i8 addrspace(1)* %70, i8 addrspace(1)** %21
  br label %32
71:
  %72 = call i8 addrspace(1)* @_bal_panic_construct(i64 1794)
  store i8 addrspace(1)* %72, i8 addrspace(1)** %21
  br label %32
73:
  %74 = icmp eq i64 %66, -9223372036854775808
  %75 = icmp eq i64 %67, -1
  %76 = and i1 %74, %75
  br i1 %76, label %86, label %77
77:
  %78 = sdiv i64 %66, %67
  store i64 %78, i64* %15
  %79 = load i64, i64* %15
  %80 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %79)
  call void @_Bio__println(i8 addrspace(1)* %80)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %81 = call i64 @_B_foo()
  store i64 %81, i64* %17
  %82 = call i64 @_B_bar()
  store i64 %82, i64* %18
  %83 = load i64, i64* %17
  %84 = load i64, i64* %18
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %88, label %90
86:
  %87 = call i8 addrspace(1)* @_bal_panic_construct(i64 1793)
  store i8 addrspace(1)* %87, i8 addrspace(1)** %21
  br label %32
88:
  %89 = call i8 addrspace(1)* @_bal_panic_construct(i64 2050)
  store i8 addrspace(1)* %89, i8 addrspace(1)** %21
  br label %32
90:
  %91 = icmp eq i64 %83, -9223372036854775808
  %92 = icmp eq i64 %84, -1
  %93 = and i1 %91, %92
  br i1 %93, label %96, label %94
94:
  %95 = srem i64 %83, %84
  store i64 %95, i64* %19
  br label %97
96:
  store i64 0, i64* %19
  br label %97
97:
  %98 = load i64, i64* %19
  %99 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %98)
  call void @_Bio__println(i8 addrspace(1)* %99)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  ret void
}
define internal i64 @_B_foo() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret i64 105
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820)
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
define internal i64 @_B_bar() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret i64 2
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844)
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
