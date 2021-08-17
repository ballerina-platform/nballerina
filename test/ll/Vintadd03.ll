@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
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
  %13 = alloca i64
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i64
  %16 = alloca i64
  %17 = alloca i64
  %18 = alloca i64
  %19 = alloca i64
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i64
  %22 = alloca i64
  %23 = alloca i64
  %24 = alloca i64
  %25 = alloca i64
  %26 = alloca i64
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i64
  %29 = alloca i64
  %30 = alloca i64
  %31 = alloca i64
  %32 = alloca i64
  %33 = alloca i64
  %34 = alloca i64
  %35 = alloca i8 addrspace(1)*
  %36 = alloca i8
  %37 = load i8*, i8** @_bal_stack_guard
  %38 = icmp ult i8* %36, %37
  br i1 %38, label %103, label %39
39:
  %40 = call i64 @_B_add(i64 -3, i64 -5)
  store i64 %40, i64* %1
  %41 = load i64, i64* %1
  %42 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %41)
  call void @_Bio__println(i8 addrspace(1)* %42)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %43 = call i64 @_B_add(i64 -3, i64 -5)
  store i64 %43, i64* %3
  %44 = load i64, i64* %3
  %45 = call i64 @_B_add(i64 %44, i64 -11)
  store i64 %45, i64* %4
  %46 = load i64, i64* %4
  %47 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %46)
  call void @_Bio__println(i8 addrspace(1)* %47)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %48 = call i64 @_B_add(i64 -3, i64 -5)
  store i64 %48, i64* %6
  %49 = call i64 @_B_add(i64 -5, i64 -9)
  store i64 %49, i64* %7
  %50 = load i64, i64* %6
  %51 = load i64, i64* %7
  %52 = call i64 @_B_add(i64 %50, i64 %51)
  store i64 %52, i64* %8
  %53 = load i64, i64* %8
  %54 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %53)
  call void @_Bio__println(i8 addrspace(1)* %54)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %55 = call i64 @_B_add(i64 -3, i64 -5)
  store i64 %55, i64* %10
  %56 = call i64 @_B_add(i64 -5, i64 -9)
  store i64 %56, i64* %11
  %57 = load i64, i64* %10
  %58 = load i64, i64* %11
  %59 = call i64 @_B_add(i64 %57, i64 %58)
  store i64 %59, i64* %12
  %60 = load i64, i64* %12
  %61 = call i64 @_B_add(i64 %60, i64 -12)
  store i64 %61, i64* %13
  %62 = load i64, i64* %13
  %63 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %62)
  call void @_Bio__println(i8 addrspace(1)* %63)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %64 = call i64 @_B_add(i64 -3, i64 -5)
  store i64 %64, i64* %15
  %65 = call i64 @_B_add(i64 -5, i64 -9)
  store i64 %65, i64* %16
  %66 = load i64, i64* %15
  %67 = load i64, i64* %16
  %68 = call i64 @_B_add(i64 %66, i64 %67)
  store i64 %68, i64* %17
  %69 = call i64 @_B_add(i64 -4, i64 -7)
  store i64 %69, i64* %18
  %70 = load i64, i64* %17
  %71 = load i64, i64* %18
  %72 = call i64 @_B_add(i64 %70, i64 %71)
  store i64 %72, i64* %19
  %73 = load i64, i64* %19
  %74 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %73)
  call void @_Bio__println(i8 addrspace(1)* %74)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %75 = call i64 @_B_add(i64 -3, i64 -5)
  store i64 %75, i64* %21
  %76 = call i64 @_B_add(i64 -5, i64 -9)
  store i64 %76, i64* %22
  %77 = load i64, i64* %21
  %78 = load i64, i64* %22
  %79 = call i64 @_B_add(i64 %77, i64 %78)
  store i64 %79, i64* %23
  %80 = call i64 @_B_add(i64 -4, i64 -7)
  store i64 %80, i64* %24
  %81 = load i64, i64* %24
  %82 = call i64 @_B_add(i64 %81, i64 -5)
  store i64 %82, i64* %25
  %83 = load i64, i64* %23
  %84 = load i64, i64* %25
  %85 = call i64 @_B_add(i64 %83, i64 %84)
  store i64 %85, i64* %26
  %86 = load i64, i64* %26
  %87 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %86)
  call void @_Bio__println(i8 addrspace(1)* %87)
  store i8 addrspace(1)* null, i8 addrspace(1)** %27
  %88 = call i64 @_B_add(i64 -3, i64 -5)
  store i64 %88, i64* %28
  %89 = call i64 @_B_add(i64 -5, i64 -9)
  store i64 %89, i64* %29
  %90 = load i64, i64* %28
  %91 = load i64, i64* %29
  %92 = call i64 @_B_add(i64 %90, i64 %91)
  store i64 %92, i64* %30
  %93 = call i64 @_B_add(i64 -4, i64 -7)
  store i64 %93, i64* %31
  %94 = call i64 @_B_add(i64 -23, i64 -50)
  store i64 %94, i64* %32
  %95 = load i64, i64* %31
  %96 = load i64, i64* %32
  %97 = call i64 @_B_add(i64 %95, i64 %96)
  store i64 %97, i64* %33
  %98 = load i64, i64* %30
  %99 = load i64, i64* %33
  %100 = call i64 @_B_add(i64 %98, i64 %99)
  store i64 %100, i64* %34
  %101 = load i64, i64* %34
  %102 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %101)
  call void @_Bio__println(i8 addrspace(1)* %102)
  store i8 addrspace(1)* null, i8 addrspace(1)** %35
  ret void
103:
  call void @_bal_panic(i64 516)
  unreachable
}
define internal i64 @_B_add(i64 %0, i64 %1) {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %9 = load i64, i64* %x
  %10 = load i64, i64* %y
  %11 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %19, label %16
13:
  %14 = load i64, i64* %4
  call void @_bal_panic(i64 %14)
  unreachable
15:
  call void @_bal_panic(i64 3076)
  unreachable
16:
  %17 = extractvalue {i64, i1} %11, 0
  store i64 %17, i64* %3
  %18 = load i64, i64* %3
  ret i64 %18
19:
  store i64 3329, i64* %4
  br label %13
}
