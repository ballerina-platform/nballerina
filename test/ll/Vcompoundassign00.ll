@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
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
  %21 = alloca i64
  %22 = alloca i8
  %23 = load i8*, i8** @_bal_stack_guard
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %31, label %25
25:
  store i64 10, i64* %x
  %26 = load i64, i64* %x
  %27 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %26, i64 3)
  %28 = extractvalue {i64, i1} %27, 1
  br i1 %28, label %40, label %32
29:
  %30 = load i64, i64* %21
  call void @_bal_panic(i64 %30)
  unreachable
31:
  call void @_bal_panic(i64 772)
  unreachable
32:
  %33 = extractvalue {i64, i1} %27, 0
  store i64 %33, i64* %1
  %34 = load i64, i64* %1
  store i64 %34, i64* %x
  %35 = load i64, i64* %x
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %35)
  call void @_Bio__println(i8 addrspace(1)* %36)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %37 = load i64, i64* %x
  %38 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %37, i64 2)
  %39 = extractvalue {i64, i1} %38, 1
  br i1 %39, label %49, label %41
40:
  store i64 1281, i64* %21
  br label %29
41:
  %42 = extractvalue {i64, i1} %38, 0
  store i64 %42, i64* %3
  %43 = load i64, i64* %3
  store i64 %43, i64* %x
  %44 = load i64, i64* %x
  %45 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %44)
  call void @_Bio__println(i8 addrspace(1)* %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %46 = load i64, i64* %x
  %47 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %46, i64 4)
  %48 = extractvalue {i64, i1} %47, 1
  br i1 %48, label %57, label %50
49:
  store i64 1793, i64* %21
  br label %29
50:
  %51 = extractvalue {i64, i1} %47, 0
  store i64 %51, i64* %5
  %52 = load i64, i64* %5
  store i64 %52, i64* %x
  %53 = load i64, i64* %x
  %54 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %53)
  call void @_Bio__println(i8 addrspace(1)* %54)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %55 = load i64, i64* %x
  %56 = icmp eq i64 2, 0
  br i1 %56, label %58, label %59
57:
  store i64 2305, i64* %21
  br label %29
58:
  store i64 2818, i64* %21
  br label %29
59:
  %60 = icmp eq i64 %55, -9223372036854775808
  %61 = icmp eq i64 2, -1
  %62 = and i1 %60, %61
  br i1 %62, label %101, label %63
63:
  %64 = sdiv i64 %55, 2
  store i64 %64, i64* %7
  %65 = load i64, i64* %7
  store i64 %65, i64* %x
  %66 = load i64, i64* %x
  %67 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %66)
  call void @_Bio__println(i8 addrspace(1)* %67)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %68 = load i64, i64* %x
  %69 = and i64 %68, 5
  store i64 %69, i64* %9
  %70 = load i64, i64* %9
  store i64 %70, i64* %x
  %71 = load i64, i64* %x
  %72 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %71)
  call void @_Bio__println(i8 addrspace(1)* %72)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %73 = load i64, i64* %x
  %74 = or i64 %73, 9
  store i64 %74, i64* %11
  %75 = load i64, i64* %11
  store i64 %75, i64* %x
  %76 = load i64, i64* %x
  %77 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %76)
  call void @_Bio__println(i8 addrspace(1)* %77)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %78 = load i64, i64* %x
  %79 = xor i64 %78, 2
  store i64 %79, i64* %13
  %80 = load i64, i64* %13
  store i64 %80, i64* %x
  %81 = load i64, i64* %x
  %82 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %81)
  call void @_Bio__println(i8 addrspace(1)* %82)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %83 = load i64, i64* %x
  %84 = and i64 63, 7
  %85 = shl i64 %83, %84
  store i64 %85, i64* %15
  %86 = load i64, i64* %15
  store i64 %86, i64* %x
  %87 = load i64, i64* %x
  %88 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %87)
  call void @_Bio__println(i8 addrspace(1)* %88)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %89 = load i64, i64* %x
  %90 = and i64 63, 6
  %91 = ashr i64 %89, %90
  store i64 %91, i64* %17
  %92 = load i64, i64* %17
  store i64 %92, i64* %x
  %93 = load i64, i64* %x
  %94 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %93)
  call void @_Bio__println(i8 addrspace(1)* %94)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %95 = load i64, i64* %x
  %96 = and i64 63, 2
  %97 = lshr i64 %95, %96
  store i64 %97, i64* %19
  %98 = load i64, i64* %19
  store i64 %98, i64* %x
  %99 = load i64, i64* %x
  %100 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %99)
  call void @_Bio__println(i8 addrspace(1)* %100)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  ret void
101:
  store i64 2817, i64* %21
  br label %29
}
