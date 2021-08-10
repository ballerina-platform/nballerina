@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %i6 = alloca i64
  %i5 = alloca i64
  %i3 = alloca i64
  %i2 = alloca i64
  %i1 = alloca i64
  %t = alloca i1
  %f = alloca i1
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
  br i1 %35, label %42, label %36
36:
  store i64 6, i64* %i6
  store i64 5, i64* %i5
  store i64 3, i64* %i3
  store i64 2, i64* %i2
  store i64 1, i64* %i1
  store i1 1, i1* %t
  store i1 0, i1* %f
  %37 = load i64, i64* %i6
  %38 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 12, i64 %37)
  %39 = extractvalue {i64, i1} %38, 1
  br i1 %39, label %48, label %43
40:
  %41 = load i64, i64* %32
  call void @_bal_panic(i64 %41)
  unreachable
42:
  call void @_bal_panic(i64 772)
  unreachable
43:
  %44 = extractvalue {i64, i1} %38, 0
  store i64 %44, i64* %2
  %45 = load i64, i64* %i3
  %46 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %45, i64 15)
  %47 = extractvalue {i64, i1} %46, 1
  br i1 %47, label %58, label %49
48:
  store i64 2817, i64* %32
  br label %40
49:
  %50 = extractvalue {i64, i1} %46, 0
  store i64 %50, i64* %3
  %51 = load i64, i64* %2
  %52 = load i64, i64* %3
  %53 = icmp eq i64 %51, %52
  store i1 %53, i1* %1
  %54 = load i1, i1* %1
  call void @_B_printBoolean(i1 %54)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %55 = load i64, i64* %i5
  %56 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %55, i64 2)
  %57 = extractvalue {i64, i1} %56, 1
  br i1 %57, label %77, label %59
58:
  store i64 2817, i64* %32
  br label %40
59:
  %60 = extractvalue {i64, i1} %56, 0
  store i64 %60, i64* %6
  %61 = load i64, i64* %i5
  %62 = load i64, i64* %6
  %63 = icmp ne i64 %61, %62
  store i1 %63, i1* %5
  %64 = load i1, i1* %5
  call void @_B_printBoolean(i1 %64)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %65 = load i64, i64* %i5
  %66 = icmp slt i64 %65, 9
  store i1 %66, i1* %9
  %67 = load i64, i64* %i5
  %68 = icmp sgt i64 %67, 2
  store i1 %68, i1* %10
  %69 = load i1, i1* %9
  %70 = load i1, i1* %10
  %71 = icmp eq i1 %69, %70
  store i1 %71, i1* %8
  %72 = load i1, i1* %8
  call void @_B_printBoolean(i1 %72)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  %73 = load i64, i64* %i1
  %74 = load i64, i64* %i3
  %75 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %73, i64 %74)
  %76 = extractvalue {i64, i1} %75, 1
  br i1 %76, label %83, label %78
77:
  store i64 3073, i64* %32
  br label %40
78:
  %79 = extractvalue {i64, i1} %75, 0
  store i64 %79, i64* %13
  %80 = load i64, i64* %i2
  %81 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %80, i64 4)
  %82 = extractvalue {i64, i1} %81, 1
  br i1 %82, label %96, label %84
83:
  store i64 3585, i64* %32
  br label %40
84:
  %85 = extractvalue {i64, i1} %81, 0
  store i64 %85, i64* %14
  %86 = load i64, i64* %13
  %87 = load i64, i64* %14
  %88 = icmp sle i64 %86, %87
  store i1 %88, i1* %12
  %89 = load i1, i1* %12
  call void @_B_printBoolean(i1 %89)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %90 = load i64, i64* %i1
  %91 = load i64, i64* %i5
  %92 = icmp sge i64 %90, %91
  store i1 %92, i1* %18
  %93 = load i64, i64* %i2
  %94 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 1, i64 %93)
  %95 = extractvalue {i64, i1} %94, 1
  br i1 %95, label %112, label %97
96:
  store i64 3585, i64* %32
  br label %40
97:
  %98 = extractvalue {i64, i1} %94, 0
  store i64 %98, i64* %20
  %99 = load i64, i64* %20
  %100 = load i64, i64* %i3
  %101 = icmp sge i64 %99, %100
  store i1 %101, i1* %19
  %102 = load i1, i1* %18
  %103 = load i1, i1* %19
  %104 = icmp eq i1 %102, %103
  store i1 %104, i1* %17
  %105 = load i1, i1* %17
  %106 = load i1, i1* %f
  %107 = icmp ne i1 %105, %106
  store i1 %107, i1* %16
  %108 = load i1, i1* %16
  call void @_B_printBoolean(i1 %108)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %109 = load i64, i64* %i1
  %110 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 7, i64 %109)
  %111 = extractvalue {i64, i1} %110, 1
  br i1 %111, label %133, label %113
112:
  store i64 3841, i64* %32
  br label %40
113:
  %114 = extractvalue {i64, i1} %110, 0
  store i64 %114, i64* %24
  %115 = load i64, i64* %24
  %116 = icmp eq i64 %115, 8
  store i1 %116, i1* %23
  %117 = load i1, i1* %23
  %118 = load i1, i1* %f
  %119 = icmp ne i1 %117, %118
  store i1 %119, i1* %22
  %120 = load i1, i1* %22
  call void @_B_printBoolean(i1 %120)
  store i8 addrspace(1)* null, i8 addrspace(1)** %25
  %121 = load i1, i1* %t
  %122 = xor i1 1, %121
  store i1 %122, i1* %27
  %123 = load i1, i1* %27
  %124 = load i1, i1* %f
  %125 = icmp eq i1 %123, %124
  store i1 %125, i1* %26
  %126 = load i1, i1* %26
  call void @_B_printBoolean(i1 %126)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %127 = load i1, i1* %t
  %128 = xor i1 1, %127
  store i1 %128, i1* %30
  %129 = load i1, i1* %f
  %130 = load i1, i1* %30
  %131 = icmp eq i1 %129, %130
  store i1 %131, i1* %29
  %132 = load i1, i1* %29
  call void @_B_printBoolean(i1 %132)
  store i8 addrspace(1)* null, i8 addrspace(1)** %31
  ret void
133:
  store i64 4097, i64* %32
  br label %40
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
  call void @_bal_panic(i64 5636)
  unreachable
}
