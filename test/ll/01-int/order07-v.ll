@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i1
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i1
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i1
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i1
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i1
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i1
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i1
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i1
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i1
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i1
  %38 = alloca i8 addrspace(1)*
  %39 = alloca i1
  %40 = alloca i8 addrspace(1)*
  %41 = alloca i1
  %42 = alloca i8 addrspace(1)*
  %43 = alloca i1
  %44 = alloca i8 addrspace(1)*
  %45 = alloca i1
  %46 = alloca i8 addrspace(1)*
  %47 = alloca i1
  %48 = alloca i8 addrspace(1)*
  %49 = alloca i1
  %50 = alloca i8 addrspace(1)*
  %51 = alloca i8
  %52 = load i8*, i8** @_bal_stack_guard
  %53 = icmp ult i8* %51, %52
  br i1 %53, label %105, label %54
54:
  %55 = call i1 @_B_gt(i64 9223372036854775806, i64 9223372036854775806)
  store i1 %55, i1* %1
  %56 = load i1, i1* %1
  call void @_B_printBoolean(i1 %56)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %57 = call i1 @_B_gt(i64 9223372036854775806, i64 1)
  store i1 %57, i1* %3
  %58 = load i1, i1* %3
  call void @_B_printBoolean(i1 %58)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %59 = call i1 @_B_gt(i64 9223372036854775806, i64 0)
  store i1 %59, i1* %5
  %60 = load i1, i1* %5
  call void @_B_printBoolean(i1 %60)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %61 = call i1 @_B_gt(i64 9223372036854775806, i64 -1)
  store i1 %61, i1* %7
  %62 = load i1, i1* %7
  call void @_B_printBoolean(i1 %62)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %63 = call i1 @_B_gt(i64 9223372036854775806, i64 -9223372036854775806)
  store i1 %63, i1* %9
  %64 = load i1, i1* %9
  call void @_B_printBoolean(i1 %64)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %65 = call i1 @_B_gt(i64 1, i64 9223372036854775806)
  store i1 %65, i1* %11
  %66 = load i1, i1* %11
  call void @_B_printBoolean(i1 %66)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %67 = call i1 @_B_gt(i64 1, i64 1)
  store i1 %67, i1* %13
  %68 = load i1, i1* %13
  call void @_B_printBoolean(i1 %68)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %69 = call i1 @_B_gt(i64 1, i64 0)
  store i1 %69, i1* %15
  %70 = load i1, i1* %15
  call void @_B_printBoolean(i1 %70)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %71 = call i1 @_B_gt(i64 1, i64 -1)
  store i1 %71, i1* %17
  %72 = load i1, i1* %17
  call void @_B_printBoolean(i1 %72)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %73 = call i1 @_B_gt(i64 1, i64 -9223372036854775806)
  store i1 %73, i1* %19
  %74 = load i1, i1* %19
  call void @_B_printBoolean(i1 %74)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %75 = call i1 @_B_gt(i64 0, i64 9223372036854775806)
  store i1 %75, i1* %21
  %76 = load i1, i1* %21
  call void @_B_printBoolean(i1 %76)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  %77 = call i1 @_B_gt(i64 0, i64 1)
  store i1 %77, i1* %23
  %78 = load i1, i1* %23
  call void @_B_printBoolean(i1 %78)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %79 = call i1 @_B_gt(i64 0, i64 0)
  store i1 %79, i1* %25
  %80 = load i1, i1* %25
  call void @_B_printBoolean(i1 %80)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  %81 = call i1 @_B_gt(i64 0, i64 -1)
  store i1 %81, i1* %27
  %82 = load i1, i1* %27
  call void @_B_printBoolean(i1 %82)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %83 = call i1 @_B_gt(i64 0, i64 -9223372036854775806)
  store i1 %83, i1* %29
  %84 = load i1, i1* %29
  call void @_B_printBoolean(i1 %84)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  %85 = call i1 @_B_gt(i64 -1, i64 9223372036854775806)
  store i1 %85, i1* %31
  %86 = load i1, i1* %31
  call void @_B_printBoolean(i1 %86)
  store i8 addrspace(1)* null, i8 addrspace(1)** %32
  %87 = call i1 @_B_gt(i64 -1, i64 1)
  store i1 %87, i1* %33
  %88 = load i1, i1* %33
  call void @_B_printBoolean(i1 %88)
  store i8 addrspace(1)* null, i8 addrspace(1)** %34
  %89 = call i1 @_B_gt(i64 -1, i64 0)
  store i1 %89, i1* %35
  %90 = load i1, i1* %35
  call void @_B_printBoolean(i1 %90)
  store i8 addrspace(1)* null, i8 addrspace(1)** %36
  %91 = call i1 @_B_gt(i64 -1, i64 -1)
  store i1 %91, i1* %37
  %92 = load i1, i1* %37
  call void @_B_printBoolean(i1 %92)
  store i8 addrspace(1)* null, i8 addrspace(1)** %38
  %93 = call i1 @_B_gt(i64 -1, i64 -9223372036854775806)
  store i1 %93, i1* %39
  %94 = load i1, i1* %39
  call void @_B_printBoolean(i1 %94)
  store i8 addrspace(1)* null, i8 addrspace(1)** %40
  %95 = call i1 @_B_gt(i64 -9223372036854775806, i64 9223372036854775806)
  store i1 %95, i1* %41
  %96 = load i1, i1* %41
  call void @_B_printBoolean(i1 %96)
  store i8 addrspace(1)* null, i8 addrspace(1)** %42
  %97 = call i1 @_B_gt(i64 -9223372036854775806, i64 1)
  store i1 %97, i1* %43
  %98 = load i1, i1* %43
  call void @_B_printBoolean(i1 %98)
  store i8 addrspace(1)* null, i8 addrspace(1)** %44
  %99 = call i1 @_B_gt(i64 -9223372036854775806, i64 0)
  store i1 %99, i1* %45
  %100 = load i1, i1* %45
  call void @_B_printBoolean(i1 %100)
  store i8 addrspace(1)* null, i8 addrspace(1)** %46
  %101 = call i1 @_B_gt(i64 -9223372036854775806, i64 -1)
  store i1 %101, i1* %47
  %102 = load i1, i1* %47
  call void @_B_printBoolean(i1 %102)
  store i8 addrspace(1)* null, i8 addrspace(1)** %48
  %103 = call i1 @_B_gt(i64 -9223372036854775806, i64 -9223372036854775806)
  store i1 %103, i1* %49
  %104 = load i1, i1* %49
  call void @_B_printBoolean(i1 %104)
  store i8 addrspace(1)* null, i8 addrspace(1)** %50
  ret void
105:
  %106 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %106)
  unreachable
}
define internal i1 @_B_gt(i64 %0, i64 %1) {
  %a = alloca i64
  %b = alloca i64
  %3 = alloca i1
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %12, label %7
7:
  store i64 %0, i64* %a
  store i64 %1, i64* %b
  %8 = load i64, i64* %a
  %9 = load i64, i64* %b
  %10 = icmp sgt i64 %8, %9
  store i1 %10, i1* %3
  %11 = load i1, i1* %3
  ret i1 %11
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 9220)
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
define internal void @_B_printBoolean(i1 %0) {
  %b = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  store i1 %0, i1* %b
  %8 = load i1, i1* %b
  br i1 %8, label %9, label %11
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  br label %13
11:
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %12)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %13
13:
  ret void
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 10244)
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
