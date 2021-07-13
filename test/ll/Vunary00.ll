@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i64
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i1
  %15 = alloca i64
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i1
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i1
  %21 = alloca i1
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i64
  %24 = alloca i8
  %25 = load i8*, i8** @_bal_stack_guard
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %32, label %27
27:
  %28 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 2)
  %29 = extractvalue {i64, i1} %28, 1
  br i1 %29, label %38, label %33
30:
  %31 = load i64, i64* %23
  call void @_bal_panic(i64 %31)
  unreachable
32:
  call void @_bal_panic(i64 772)
  unreachable
33:
  %34 = extractvalue {i64, i1} %28, 0
  store i64 %34, i64* %1
  %35 = load i64, i64* %1
  %36 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %35, i64 5)
  %37 = extractvalue {i64, i1} %36, 1
  br i1 %37, label %45, label %39
38:
  store i64 1025, i64* %23
  br label %30
39:
  %40 = extractvalue {i64, i1} %36, 0
  store i64 %40, i64* %2
  %41 = load i64, i64* %2
  %42 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %41)
  call void @_Bio__println(i8 addrspace(1)* %42)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %43 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 2)
  %44 = extractvalue {i64, i1} %43, 1
  br i1 %44, label %51, label %46
45:
  store i64 1025, i64* %23
  br label %30
46:
  %47 = extractvalue {i64, i1} %43, 0
  store i64 %47, i64* %4
  %48 = load i64, i64* %4
  %49 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 5, i64 %48)
  %50 = extractvalue {i64, i1} %49, 1
  br i1 %50, label %58, label %52
51:
  store i64 1281, i64* %23
  br label %30
52:
  %53 = extractvalue {i64, i1} %49, 0
  store i64 %53, i64* %5
  %54 = load i64, i64* %5
  %55 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %54)
  call void @_Bio__println(i8 addrspace(1)* %55)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %56 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 2)
  %57 = extractvalue {i64, i1} %56, 1
  br i1 %57, label %64, label %59
58:
  store i64 1281, i64* %23
  br label %30
59:
  %60 = extractvalue {i64, i1} %56, 0
  store i64 %60, i64* %7
  %61 = load i64, i64* %7
  %62 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %61, i64 3)
  %63 = extractvalue {i64, i1} %62, 1
  br i1 %63, label %70, label %65
64:
  store i64 1537, i64* %23
  br label %30
65:
  %66 = extractvalue {i64, i1} %62, 0
  store i64 %66, i64* %8
  %67 = load i64, i64* %8
  %68 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 5, i64 %67)
  %69 = extractvalue {i64, i1} %68, 1
  br i1 %69, label %77, label %71
70:
  store i64 1537, i64* %23
  br label %30
71:
  %72 = extractvalue {i64, i1} %68, 0
  store i64 %72, i64* %9
  %73 = load i64, i64* %9
  %74 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %73)
  call void @_Bio__println(i8 addrspace(1)* %74)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %75 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %76 = extractvalue {i64, i1} %75, 1
  br i1 %76, label %85, label %78
77:
  store i64 1537, i64* %23
  br label %30
78:
  %79 = extractvalue {i64, i1} %75, 0
  store i64 %79, i64* %12
  %80 = load i64, i64* %12
  %81 = icmp slt i64 %80, 2
  store i1 %81, i1* %11
  %82 = load i1, i1* %11
  call void @_B_printBoolean(i1 %82)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  %83 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %84 = extractvalue {i64, i1} %83, 1
  br i1 %84, label %97, label %86
85:
  store i64 1793, i64* %23
  br label %30
86:
  %87 = extractvalue {i64, i1} %83, 0
  store i64 %87, i64* %15
  %88 = load i64, i64* %15
  %89 = icmp sge i64 2, %88
  store i1 %89, i1* %14
  %90 = load i1, i1* %14
  call void @_B_printBoolean(i1 %90)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  store i1 1, i1* %18
  %91 = load i1, i1* %18
  %92 = icmp uge i1 %91, 0
  store i1 %92, i1* %17
  %93 = load i1, i1* %17
  call void @_B_printBoolean(i1 %93)
  store i8 addrspace(1)* null, i8 addrspace(1)** %19
  store i1 1, i1* %21
  %94 = load i1, i1* %21
  %95 = icmp ule i1 0, %94
  store i1 %95, i1* %20
  %96 = load i1, i1* %20
  call void @_B_printBoolean(i1 %96)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  ret void
97:
  store i64 2049, i64* %23
  br label %30
}
define internal void @_B_printBoolean(i1 %0) {
  %x = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  store i1 %0, i1* %x
  %8 = load i1, i1* %x
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
  call void @_bal_panic(i64 3588)
  unreachable
}
