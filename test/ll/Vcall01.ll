@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
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
  %21 = alloca i64
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
  br i1 %31, label %45, label %35
32:
  %33 = load i64, i64* %21
  call void @_bal_panic(i64 %33)
  unreachable
34:
  call void @_bal_panic(i64 772)
  unreachable
35:
  %36 = extractvalue {i64, i1} %30, 0
  store i64 %36, i64* %3
  %37 = load i64, i64* %3
  %38 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %37)
  call void @_Bio__println(i8 addrspace(1)* %38)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %39 = call i64 @_B_foo()
  store i64 %39, i64* %5
  %40 = call i64 @_B_bar()
  store i64 %40, i64* %6
  %41 = load i64, i64* %5
  %42 = load i64, i64* %6
  %43 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %41, i64 %42)
  %44 = extractvalue {i64, i1} %43, 1
  br i1 %44, label %56, label %46
45:
  store i64 1025, i64* %21
  br label %32
46:
  %47 = extractvalue {i64, i1} %43, 0
  store i64 %47, i64* %7
  %48 = load i64, i64* %7
  %49 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %48)
  call void @_Bio__println(i8 addrspace(1)* %49)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %50 = call i64 @_B_foo()
  store i64 %50, i64* %9
  %51 = call i64 @_B_bar()
  store i64 %51, i64* %10
  %52 = load i64, i64* %9
  %53 = load i64, i64* %10
  %54 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %52, i64 %53)
  %55 = extractvalue {i64, i1} %54, 1
  br i1 %55, label %66, label %57
56:
  store i64 1281, i64* %21
  br label %32
57:
  %58 = extractvalue {i64, i1} %54, 0
  store i64 %58, i64* %11
  %59 = load i64, i64* %11
  %60 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %59)
  call void @_Bio__println(i8 addrspace(1)* %60)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %61 = call i64 @_B_foo()
  store i64 %61, i64* %13
  %62 = call i64 @_B_bar()
  store i64 %62, i64* %14
  %63 = load i64, i64* %13
  %64 = load i64, i64* %14
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %67, label %68
66:
  store i64 1537, i64* %21
  br label %32
67:
  store i64 1794, i64* %21
  br label %32
68:
  %69 = icmp eq i64 %63, -9223372036854775808
  %70 = icmp eq i64 %64, -1
  %71 = and i1 %69, %70
  br i1 %71, label %81, label %72
72:
  %73 = sdiv i64 %63, %64
  store i64 %73, i64* %15
  %74 = load i64, i64* %15
  %75 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %74)
  call void @_Bio__println(i8 addrspace(1)* %75)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %76 = call i64 @_B_foo()
  store i64 %76, i64* %17
  %77 = call i64 @_B_bar()
  store i64 %77, i64* %18
  %78 = load i64, i64* %17
  %79 = load i64, i64* %18
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %82, label %83
81:
  store i64 1793, i64* %21
  br label %32
82:
  store i64 2050, i64* %21
  br label %32
83:
  %84 = icmp eq i64 %78, -9223372036854775808
  %85 = icmp eq i64 %79, -1
  %86 = and i1 %84, %85
  br i1 %86, label %89, label %87
87:
  %88 = srem i64 %78, %79
  store i64 %88, i64* %19
  br label %90
89:
  store i64 0, i64* %19
  br label %90
90:
  %91 = load i64, i64* %19
  %92 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %91)
  call void @_Bio__println(i8 addrspace(1)* %92)
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
  call void @_bal_panic(i64 2820)
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
  call void @_bal_panic(i64 3844)
  unreachable
}
