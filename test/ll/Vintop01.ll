@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i1
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i1
  %10 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i1
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i1
  %17 = alloca i1
  %18 = alloca i1
  %19 = alloca i1
  %20 = alloca i64
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i1
  %23 = alloca i1
  %24 = alloca i64
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i1
  %27 = alloca i1
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i1
  %30 = alloca i1
  %31 = alloca i8 addrspace(1)*
  %32 = alloca i64
  %33 = alloca i8
  %34 = load i8*, i8** @_bal_stack_guard
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %41, label %36
36:
  %37 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 12, i64 6)
  %38 = extractvalue {i64, i1} %37, 1
  br i1 %38, label %46, label %42
39:
  %40 = load i64, i64* %32
  call void @_bal_panic(i64 %40)
  unreachable
41:
  call void @_bal_panic(i64 772)
  unreachable
42:
  %43 = extractvalue {i64, i1} %37, 0
  store i64 %43, i64* %2
  %44 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 3, i64 15)
  %45 = extractvalue {i64, i1} %44, 1
  br i1 %45, label %55, label %47
46:
  store i64 1025, i64* %32
  br label %39
47:
  %48 = extractvalue {i64, i1} %44, 0
  store i64 %48, i64* %3
  %49 = load i64, i64* %2
  %50 = load i64, i64* %3
  %51 = icmp eq i64 %49, %50
  store i1 %51, i1* %1
  %52 = load i1, i1* %1
  call void @_B_printBoolean(i1 %52)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %53 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 5, i64 2)
  %54 = extractvalue {i64, i1} %53, 1
  br i1 %54, label %69, label %56
55:
  store i64 1025, i64* %32
  br label %39
56:
  %57 = extractvalue {i64, i1} %53, 0
  store i64 %57, i64* %6
  %58 = load i64, i64* %6
  %59 = icmp ne i64 5, %58
  store i1 %59, i1* %5
  %60 = load i1, i1* %5
  call void @_B_printBoolean(i1 %60)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %61 = icmp slt i64 5, 9
  store i1 %61, i1* %9
  %62 = icmp sgt i64 5, 2
  store i1 %62, i1* %10
  %63 = load i1, i1* %9
  %64 = load i1, i1* %10
  %65 = icmp eq i1 %63, %64
  store i1 %65, i1* %8
  %66 = load i1, i1* %8
  call void @_B_printBoolean(i1 %66)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  %67 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 1, i64 3)
  %68 = extractvalue {i64, i1} %67, 1
  br i1 %68, label %74, label %70
69:
  store i64 1281, i64* %32
  br label %39
70:
  %71 = extractvalue {i64, i1} %67, 0
  store i64 %71, i64* %13
  %72 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 2, i64 4)
  %73 = extractvalue {i64, i1} %72, 1
  br i1 %73, label %84, label %75
74:
  store i64 1793, i64* %32
  br label %39
75:
  %76 = extractvalue {i64, i1} %72, 0
  store i64 %76, i64* %14
  %77 = load i64, i64* %13
  %78 = load i64, i64* %14
  %79 = icmp sle i64 %77, %78
  store i1 %79, i1* %12
  %80 = load i1, i1* %12
  call void @_B_printBoolean(i1 %80)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %81 = icmp sge i64 1, 5
  store i1 %81, i1* %18
  %82 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 1, i64 2)
  %83 = extractvalue {i64, i1} %82, 1
  br i1 %83, label %97, label %85
84:
  store i64 1793, i64* %32
  br label %39
85:
  %86 = extractvalue {i64, i1} %82, 0
  store i64 %86, i64* %20
  %87 = load i64, i64* %20
  %88 = icmp sge i64 %87, 3
  store i1 %88, i1* %19
  %89 = load i1, i1* %18
  %90 = load i1, i1* %19
  %91 = icmp eq i1 %89, %90
  store i1 %91, i1* %17
  %92 = load i1, i1* %17
  %93 = icmp ne i1 %92, 0
  store i1 %93, i1* %16
  %94 = load i1, i1* %16
  call void @_B_printBoolean(i1 %94)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %95 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 7, i64 1)
  %96 = extractvalue {i64, i1} %95, 1
  br i1 %96, label %111, label %98
97:
  store i64 2049, i64* %32
  br label %39
98:
  %99 = extractvalue {i64, i1} %95, 0
  store i64 %99, i64* %24
  %100 = load i64, i64* %24
  %101 = icmp eq i64 %100, 8
  store i1 %101, i1* %23
  %102 = load i1, i1* %23
  %103 = icmp ne i1 %102, 0
  store i1 %103, i1* %22
  %104 = load i1, i1* %22
  call void @_B_printBoolean(i1 %104)
  store i8 addrspace(1)* null, i8 addrspace(1)** %25
  store i1 0, i1* %27
  %105 = load i1, i1* %27
  %106 = icmp eq i1 %105, 0
  store i1 %106, i1* %26
  %107 = load i1, i1* %26
  call void @_B_printBoolean(i1 %107)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  store i1 0, i1* %30
  %108 = load i1, i1* %30
  %109 = icmp eq i1 0, %108
  store i1 %109, i1* %29
  %110 = load i1, i1* %29
  call void @_B_printBoolean(i1 %110)
  store i8 addrspace(1)* null, i8 addrspace(1)** %31
  ret void
111:
  store i64 2305, i64* %32
  br label %39
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
  call void @_bal_panic(i64 3844)
  unreachable
}
