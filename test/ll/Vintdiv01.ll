@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i64
  %15 = alloca i64
  %16 = alloca i64
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i64
  %20 = alloca i64
  %21 = alloca i64
  %22 = alloca i64
  %23 = alloca i64
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i64
  %26 = alloca i64
  %27 = alloca i64
  %28 = alloca i64
  %29 = alloca i64
  %30 = alloca i64
  %31 = alloca i64
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i8
  %34 = load i8*, i8** @_bal_stack_guard
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %94, label %36
36:
  %37 = call i64 @_B_div(i64 60, i64 2)
  store i64 %37, i64* %1
  %38 = load i64, i64* %1
  %39 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %38)
  call void @_Bio__println(i8 addrspace(1)* %39)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %40 = call i64 @_B_div(i64 120, i64 3)
  store i64 %40, i64* %3
  %41 = load i64, i64* %3
  %42 = call i64 @_B_div(i64 %41, i64 4)
  store i64 %42, i64* %4
  %43 = load i64, i64* %4
  %44 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %43)
  call void @_Bio__println(i8 addrspace(1)* %44)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %45 = call i64 @_B_div(i64 120, i64 3)
  store i64 %45, i64* %6
  %46 = call i64 @_B_div(i64 16, i64 4)
  store i64 %46, i64* %7
  %47 = load i64, i64* %6
  %48 = load i64, i64* %7
  %49 = call i64 @_B_div(i64 %47, i64 %48)
  store i64 %49, i64* %8
  %50 = load i64, i64* %8
  %51 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %50)
  call void @_Bio__println(i8 addrspace(1)* %51)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %52 = call i64 @_B_div(i64 120, i64 3)
  store i64 %52, i64* %10
  %53 = call i64 @_B_div(i64 16, i64 4)
  store i64 %53, i64* %11
  %54 = load i64, i64* %10
  %55 = load i64, i64* %11
  %56 = call i64 @_B_div(i64 %54, i64 %55)
  store i64 %56, i64* %12
  %57 = load i64, i64* %12
  %58 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %57)
  call void @_Bio__println(i8 addrspace(1)* %58)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  %59 = call i64 @_B_div(i64 120, i64 3)
  store i64 %59, i64* %14
  %60 = call i64 @_B_div(i64 16, i64 4)
  store i64 %60, i64* %15
  %61 = load i64, i64* %14
  %62 = load i64, i64* %15
  %63 = call i64 @_B_div(i64 %61, i64 %62)
  store i64 %63, i64* %16
  %64 = load i64, i64* %16
  %65 = call i64 @_B_div(i64 %64, i64 2)
  store i64 %65, i64* %17
  %66 = load i64, i64* %17
  %67 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %66)
  call void @_Bio__println(i8 addrspace(1)* %67)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %68 = call i64 @_B_div(i64 120, i64 3)
  store i64 %68, i64* %19
  %69 = call i64 @_B_div(i64 16, i64 4)
  store i64 %69, i64* %20
  %70 = load i64, i64* %19
  %71 = load i64, i64* %20
  %72 = call i64 @_B_div(i64 %70, i64 %71)
  store i64 %72, i64* %21
  %73 = call i64 @_B_div(i64 10, i64 5)
  store i64 %73, i64* %22
  %74 = load i64, i64* %21
  %75 = load i64, i64* %22
  %76 = call i64 @_B_div(i64 %74, i64 %75)
  store i64 %76, i64* %23
  %77 = load i64, i64* %23
  %78 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %77)
  call void @_Bio__println(i8 addrspace(1)* %78)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %79 = call i64 @_B_div(i64 120, i64 3)
  store i64 %79, i64* %25
  %80 = call i64 @_B_div(i64 16, i64 4)
  store i64 %80, i64* %26
  %81 = load i64, i64* %25
  %82 = load i64, i64* %26
  %83 = call i64 @_B_div(i64 %81, i64 %82)
  store i64 %83, i64* %27
  %84 = call i64 @_B_div(i64 400, i64 20)
  store i64 %84, i64* %28
  %85 = call i64 @_B_div(i64 100, i64 10)
  store i64 %85, i64* %29
  %86 = load i64, i64* %28
  %87 = load i64, i64* %29
  %88 = call i64 @_B_div(i64 %86, i64 %87)
  store i64 %88, i64* %30
  %89 = load i64, i64* %27
  %90 = load i64, i64* %30
  %91 = call i64 @_B_div(i64 %89, i64 %90)
  store i64 %91, i64* %31
  %92 = load i64, i64* %31
  %93 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %92)
  call void @_Bio__println(i8 addrspace(1)* %93)
  store i8 addrspace(1)* null, i8 addrspace(1)** %32
  ret void
94:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i64 @_B_div(i64 %0, i64 %1) {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %14, label %8
8:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %9 = load i64, i64* %x
  %10 = load i64, i64* %y
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %15, label %16
12:
  %13 = load i64, i64* %4
  call void @_bal_panic(i64 %13)
  unreachable
14:
  call void @_bal_panic(i64 3332)
  unreachable
15:
  store i64 3586, i64* %4
  br label %12
16:
  %17 = icmp eq i64 %9, -9223372036854775808
  %18 = icmp eq i64 %10, -1
  %19 = and i1 %17, %18
  br i1 %19, label %23, label %20
20:
  %21 = sdiv i64 %9, %10
  store i64 %21, i64* %3
  %22 = load i64, i64* %3
  ret i64 %22
23:
  store i64 3585, i64* %4
  br label %12
}
