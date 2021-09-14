@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
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
  %31 = alloca i8
  %32 = load i8*, i8** @_bal_stack_guard
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %80, label %34
34:
  %35 = call i64 @_B_mul(i64 9223372036854775806, i64 1)
  store i64 %35, i64* %1
  %36 = load i64, i64* %1
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %36)
  call void @_Bio__println(i8 addrspace(1)* %37)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %38 = call i64 @_B_mul(i64 9223372036854775806, i64 0)
  store i64 %38, i64* %3
  %39 = load i64, i64* %3
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %39)
  call void @_Bio__println(i8 addrspace(1)* %40)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %41 = call i64 @_B_mul(i64 9223372036854775806, i64 -1)
  store i64 %41, i64* %5
  %42 = load i64, i64* %5
  %43 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %42)
  call void @_Bio__println(i8 addrspace(1)* %43)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %44 = call i64 @_B_mul(i64 1, i64 1)
  store i64 %44, i64* %7
  %45 = load i64, i64* %7
  %46 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %45)
  call void @_Bio__println(i8 addrspace(1)* %46)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %47 = call i64 @_B_mul(i64 1, i64 0)
  store i64 %47, i64* %9
  %48 = load i64, i64* %9
  %49 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %48)
  call void @_Bio__println(i8 addrspace(1)* %49)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %50 = call i64 @_B_mul(i64 1, i64 -1)
  store i64 %50, i64* %11
  %51 = load i64, i64* %11
  %52 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %51)
  call void @_Bio__println(i8 addrspace(1)* %52)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %53 = call i64 @_B_mul(i64 0, i64 1)
  store i64 %53, i64* %13
  %54 = load i64, i64* %13
  %55 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %54)
  call void @_Bio__println(i8 addrspace(1)* %55)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %56 = call i64 @_B_mul(i64 0, i64 0)
  store i64 %56, i64* %15
  %57 = load i64, i64* %15
  %58 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %57)
  call void @_Bio__println(i8 addrspace(1)* %58)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %59 = call i64 @_B_mul(i64 0, i64 -1)
  store i64 %59, i64* %17
  %60 = load i64, i64* %17
  %61 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %60)
  call void @_Bio__println(i8 addrspace(1)* %61)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %62 = call i64 @_B_mul(i64 -1, i64 1)
  store i64 %62, i64* %19
  %63 = load i64, i64* %19
  %64 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %63)
  call void @_Bio__println(i8 addrspace(1)* %64)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %65 = call i64 @_B_mul(i64 -1, i64 0)
  store i64 %65, i64* %21
  %66 = load i64, i64* %21
  %67 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %66)
  call void @_Bio__println(i8 addrspace(1)* %67)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  %68 = call i64 @_B_mul(i64 -1, i64 -1)
  store i64 %68, i64* %23
  %69 = load i64, i64* %23
  %70 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %69)
  call void @_Bio__println(i8 addrspace(1)* %70)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %71 = call i64 @_B_mul(i64 -9223372036854775806, i64 1)
  store i64 %71, i64* %25
  %72 = load i64, i64* %25
  %73 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %72)
  call void @_Bio__println(i8 addrspace(1)* %73)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  %74 = call i64 @_B_mul(i64 -9223372036854775806, i64 0)
  store i64 %74, i64* %27
  %75 = load i64, i64* %27
  %76 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %75)
  call void @_Bio__println(i8 addrspace(1)* %76)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %77 = call i64 @_B_mul(i64 -9223372036854775806, i64 -1)
  store i64 %77, i64* %29
  %78 = load i64, i64* %29
  %79 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %78)
  call void @_Bio__println(i8 addrspace(1)* %79)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  ret void
80:
  %81 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %81)
  unreachable
}
define internal i64 @_B_mul(i64 %0, i64 %1) {
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
  %11 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %20, label %17
13:
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 6660)
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
17:
  %18 = extractvalue {i64, i1} %11, 0
  store i64 %18, i64* %3
  %19 = load i64, i64* %3
  ret i64 %19
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 6913)
  store i8 addrspace(1)* %21, i8 addrspace(1)** %4
  br label %13
}
