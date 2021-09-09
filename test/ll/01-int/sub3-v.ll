@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i64
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i64
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i64
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i64
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i64
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i64
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i64
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i64
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i64
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i64
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i64
  %38 = alloca i8 addrspace(1)*
  %39 = alloca i8
  %40 = load i8*, i8** @_bal_stack_guard
  %41 = icmp ult i8* %39, %40
  br i1 %41, label %100, label %42
42:
  %43 = call i64 @_B_sub(i64 9223372036854775806, i64 9223372036854775806)
  store i64 %43, i64* %1
  %44 = load i64, i64* %1
  %45 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %44)
  call void @_Bio__println(i8 addrspace(1)* %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %46 = call i64 @_B_sub(i64 1, i64 9223372036854775806)
  store i64 %46, i64* %3
  %47 = load i64, i64* %3
  %48 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %47)
  call void @_Bio__println(i8 addrspace(1)* %48)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %49 = call i64 @_B_sub(i64 0, i64 9223372036854775806)
  store i64 %49, i64* %5
  %50 = load i64, i64* %5
  %51 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %50)
  call void @_Bio__println(i8 addrspace(1)* %51)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %52 = call i64 @_B_sub(i64 9223372036854775806, i64 1)
  store i64 %52, i64* %7
  %53 = load i64, i64* %7
  %54 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %53)
  call void @_Bio__println(i8 addrspace(1)* %54)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %55 = call i64 @_B_sub(i64 1, i64 1)
  store i64 %55, i64* %9
  %56 = load i64, i64* %9
  %57 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %56)
  call void @_Bio__println(i8 addrspace(1)* %57)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %58 = call i64 @_B_sub(i64 0, i64 1)
  store i64 %58, i64* %11
  %59 = load i64, i64* %11
  %60 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %59)
  call void @_Bio__println(i8 addrspace(1)* %60)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %61 = call i64 @_B_sub(i64 -1, i64 -1)
  store i64 %61, i64* %13
  %62 = load i64, i64* %13
  %63 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %62)
  call void @_Bio__println(i8 addrspace(1)* %63)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %64 = call i64 @_B_sub(i64 9223372036854775806, i64 0)
  store i64 %64, i64* %15
  %65 = load i64, i64* %15
  %66 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %65)
  call void @_Bio__println(i8 addrspace(1)* %66)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %67 = call i64 @_B_sub(i64 1, i64 0)
  store i64 %67, i64* %17
  %68 = load i64, i64* %17
  %69 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %68)
  call void @_Bio__println(i8 addrspace(1)* %69)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %70 = call i64 @_B_sub(i64 0, i64 0)
  store i64 %70, i64* %19
  %71 = load i64, i64* %19
  %72 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %71)
  call void @_Bio__println(i8 addrspace(1)* %72)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %73 = call i64 @_B_sub(i64 -1, i64 0)
  store i64 %73, i64* %21
  %74 = load i64, i64* %21
  %75 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %74)
  call void @_Bio__println(i8 addrspace(1)* %75)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  %76 = call i64 @_B_sub(i64 -9223372036854775806, i64 0)
  store i64 %76, i64* %23
  %77 = load i64, i64* %23
  %78 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %77)
  call void @_Bio__println(i8 addrspace(1)* %78)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %79 = call i64 @_B_sub(i64 9223372036854775806, i64 -1)
  store i64 %79, i64* %25
  %80 = load i64, i64* %25
  %81 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %80)
  call void @_Bio__println(i8 addrspace(1)* %81)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  %82 = call i64 @_B_sub(i64 1, i64 -1)
  store i64 %82, i64* %27
  %83 = load i64, i64* %27
  %84 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %83)
  call void @_Bio__println(i8 addrspace(1)* %84)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %85 = call i64 @_B_sub(i64 0, i64 -1)
  store i64 %85, i64* %29
  %86 = load i64, i64* %29
  %87 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %86)
  call void @_Bio__println(i8 addrspace(1)* %87)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  %88 = call i64 @_B_sub(i64 -1, i64 1)
  store i64 %88, i64* %31
  %89 = load i64, i64* %31
  %90 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %89)
  call void @_Bio__println(i8 addrspace(1)* %90)
  store i8 addrspace(1)* null, i8 addrspace(1)** %32
  %91 = call i64 @_B_sub(i64 9223372036854775806, i64 9223372036854775806)
  store i64 %91, i64* %33
  %92 = load i64, i64* %33
  %93 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %92)
  call void @_Bio__println(i8 addrspace(1)* %93)
  store i8 addrspace(1)* null, i8 addrspace(1)** %34
  %94 = call i64 @_B_sub(i64 1, i64 9223372036854775806)
  store i64 %94, i64* %35
  %95 = load i64, i64* %35
  %96 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %95)
  call void @_Bio__println(i8 addrspace(1)* %96)
  store i8 addrspace(1)* null, i8 addrspace(1)** %36
  %97 = call i64 @_B_sub(i64 0, i64 9223372036854775806)
  store i64 %97, i64* %37
  %98 = load i64, i64* %37
  %99 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %98)
  call void @_Bio__println(i8 addrspace(1)* %99)
  store i8 addrspace(1)* null, i8 addrspace(1)** %38
  ret void
100:
  %101 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %101)
  unreachable
}
define internal i64 @_B_sub(i64 %0, i64 %1) {
  %a = alloca i64
  %b = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, i64* %a
  store i64 %1, i64* %b
  %9 = load i64, i64* %a
  %10 = load i64, i64* %b
  %11 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %20, label %17
13:
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 7428)
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
17:
  %18 = extractvalue {i64, i1} %11, 0
  store i64 %18, i64* %3
  %19 = load i64, i64* %3
  ret i64 %19
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 7681)
  store i8 addrspace(1)* %21, i8 addrspace(1)** %4
  br label %13
}
