@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %x = alloca i64
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
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8
  %23 = load i8*, i8** @_bal_stack_guard
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %31, label %25
25:
  store i64 10, i64* %x
  %26 = load i64, i64* %x
  %27 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %26, i64 3)
  %28 = extractvalue {i64, i1} %27, 1
  br i1 %28, label %41, label %33
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
31:
  %32 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %32)
  unreachable
33:
  %34 = extractvalue {i64, i1} %27, 0
  store i64 %34, i64* %1
  %35 = load i64, i64* %1
  store i64 %35, i64* %x
  %36 = load i64, i64* %x
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %36)
  call void @_Bio__println(i8 addrspace(1)* %37)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %38 = load i64, i64* %x
  %39 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %38, i64 2)
  %40 = extractvalue {i64, i1} %39, 1
  br i1 %40, label %51, label %43
41:
  %42 = call i8 addrspace(1)* @_bal_panic_construct(i64 1537)
  store i8 addrspace(1)* %42, i8 addrspace(1)** %21
  br label %29
43:
  %44 = extractvalue {i64, i1} %39, 0
  store i64 %44, i64* %3
  %45 = load i64, i64* %3
  store i64 %45, i64* %x
  %46 = load i64, i64* %x
  %47 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %46)
  call void @_Bio__println(i8 addrspace(1)* %47)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %48 = load i64, i64* %x
  %49 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %48, i64 4)
  %50 = extractvalue {i64, i1} %49, 1
  br i1 %50, label %60, label %53
51:
  %52 = call i8 addrspace(1)* @_bal_panic_construct(i64 2049)
  store i8 addrspace(1)* %52, i8 addrspace(1)** %21
  br label %29
53:
  %54 = extractvalue {i64, i1} %49, 0
  store i64 %54, i64* %5
  %55 = load i64, i64* %5
  store i64 %55, i64* %x
  %56 = load i64, i64* %x
  %57 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %56)
  call void @_Bio__println(i8 addrspace(1)* %57)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %58 = load i64, i64* %x
  %59 = icmp eq i64 2, 0
  br i1 %59, label %62, label %64
60:
  %61 = call i8 addrspace(1)* @_bal_panic_construct(i64 2561)
  store i8 addrspace(1)* %61, i8 addrspace(1)** %21
  br label %29
62:
  %63 = call i8 addrspace(1)* @_bal_panic_construct(i64 3074)
  store i8 addrspace(1)* %63, i8 addrspace(1)** %21
  br label %29
64:
  %65 = icmp eq i64 %58, -9223372036854775808
  %66 = icmp eq i64 2, -1
  %67 = and i1 %65, %66
  br i1 %67, label %106, label %68
68:
  %69 = sdiv i64 %58, 2
  store i64 %69, i64* %7
  %70 = load i64, i64* %7
  store i64 %70, i64* %x
  %71 = load i64, i64* %x
  %72 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %71)
  call void @_Bio__println(i8 addrspace(1)* %72)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %73 = load i64, i64* %x
  %74 = and i64 %73, 5
  store i64 %74, i64* %9
  %75 = load i64, i64* %9
  store i64 %75, i64* %x
  %76 = load i64, i64* %x
  %77 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %76)
  call void @_Bio__println(i8 addrspace(1)* %77)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %78 = load i64, i64* %x
  %79 = or i64 %78, 9
  store i64 %79, i64* %11
  %80 = load i64, i64* %11
  store i64 %80, i64* %x
  %81 = load i64, i64* %x
  %82 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %81)
  call void @_Bio__println(i8 addrspace(1)* %82)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %83 = load i64, i64* %x
  %84 = xor i64 %83, 2
  store i64 %84, i64* %13
  %85 = load i64, i64* %13
  store i64 %85, i64* %x
  %86 = load i64, i64* %x
  %87 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %86)
  call void @_Bio__println(i8 addrspace(1)* %87)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %88 = load i64, i64* %x
  %89 = and i64 63, 7
  %90 = shl i64 %88, %89
  store i64 %90, i64* %15
  %91 = load i64, i64* %15
  store i64 %91, i64* %x
  %92 = load i64, i64* %x
  %93 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %92)
  call void @_Bio__println(i8 addrspace(1)* %93)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %94 = load i64, i64* %x
  %95 = and i64 63, 6
  %96 = ashr i64 %94, %95
  store i64 %96, i64* %17
  %97 = load i64, i64* %17
  store i64 %97, i64* %x
  %98 = load i64, i64* %x
  %99 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %98)
  call void @_Bio__println(i8 addrspace(1)* %99)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %100 = load i64, i64* %x
  %101 = and i64 63, 2
  %102 = lshr i64 %100, %101
  store i64 %102, i64* %19
  %103 = load i64, i64* %19
  store i64 %103, i64* %x
  %104 = load i64, i64* %x
  %105 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %104)
  call void @_Bio__println(i8 addrspace(1)* %105)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  ret void
106:
  %107 = call i8 addrspace(1)* @_bal_panic_construct(i64 3073)
  store i8 addrspace(1)* %107, i8 addrspace(1)** %21
  br label %29
}
