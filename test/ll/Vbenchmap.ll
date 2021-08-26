@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_Bint__toHexString(i64)
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare {i64, i1} @_bal_float_to_int(double) nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %sum = alloca i64
  %count = alloca i64
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i64
  %x = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %i.1 = alloca i64
  %6 = alloca i1
  %7 = alloca i64
  %x.1 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i64
  %15 = alloca i8
  %16 = load i8*, i8** @_bal_stack_guard
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %51, label %18
18:
  %19 = call i8 addrspace(1)* @_bal_mapping_construct(i64 0)
  store i8 addrspace(1)* %19, i8 addrspace(1)** %1
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %20, i8 addrspace(1)** %m
  store i64 0, i64* %sum
  store i64 10000000, i64* %count
  store i64 0, i64* %i
  br label %21
21:
  %22 = load i64, i64* %i
  %23 = load i64, i64* %count
  %24 = icmp slt i64 %22, %23
  store i1 %24, i1* %2
  %25 = load i1, i1* %2
  br i1 %25, label %27, label %26
26:
  store i64 0, i64* %i.1
  br label %34
27:
  %28 = load i64, i64* %i
  %29 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 48879, i64 %28)
  %30 = extractvalue {i64, i1} %29, 1
  br i1 %30, label %59, label %52
31:
  %32 = load i64, i64* %i
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %i
  br label %21
34:
  %35 = load i64, i64* %i.1
  %36 = load i64, i64* %count
  %37 = icmp slt i64 %35, %36
  store i1 %37, i1* %6
  %38 = load i1, i1* %6
  br i1 %38, label %42, label %39
39:
  %40 = load i64, i64* %sum
  %41 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %40)
  call void @_Bio__println(i8 addrspace(1)* %41)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  ret void
42:
  %43 = load i64, i64* %i.1
  %44 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 48879, i64 %43)
  %45 = extractvalue {i64, i1} %44, 1
  br i1 %45, label %88, label %75
46:
  %47 = load i64, i64* %i.1
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %i.1
  br label %34
49:
  %50 = load i64, i64* %14
  call void @_bal_panic(i64 %50)
  unreachable
51:
  call void @_bal_panic(i64 772)
  unreachable
52:
  %53 = extractvalue {i64, i1} %29, 0
  store i64 %53, i64* %3
  %54 = load i64, i64* %3
  store i64 %54, i64* %x
  %55 = load i64, i64* %sum
  %56 = load i64, i64* %i
  %57 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %55, i64 %56)
  %58 = extractvalue {i64, i1} %57, 1
  br i1 %58, label %71, label %60
59:
  store i64 2049, i64* %14
  br label %49
60:
  %61 = extractvalue {i64, i1} %57, 0
  store i64 %61, i64* %4
  %62 = load i64, i64* %4
  store i64 %62, i64* %sum
  %63 = load i64, i64* %x
  %64 = call i8 addrspace(1)* @_Bint__toHexString(i64 %63)
  store i8 addrspace(1)* %64, i8 addrspace(1)** %5
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %67 = load i64, i64* %i
  %68 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %67)
  %69 = call i64 @_bal_mapping_set(i8 addrspace(1)* %65, i8 addrspace(1)* %66, i8 addrspace(1)* %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %72, label %73
71:
  store i64 2305, i64* %14
  br label %49
72:
  br label %31
73:
  %74 = or i64 %69, 2560
  store i64 %74, i64* %14
  br label %49
75:
  %76 = extractvalue {i64, i1} %44, 0
  store i64 %76, i64* %7
  %77 = load i64, i64* %7
  store i64 %77, i64* %x.1
  %78 = load i64, i64* %x.1
  %79 = call i8 addrspace(1)* @_Bint__toHexString(i64 %78)
  store i8 addrspace(1)* %79, i8 addrspace(1)** %8
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %82 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %80, i8 addrspace(1)* %81)
  store i8 addrspace(1)* %82, i8 addrspace(1)** %9
  %83 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %84 = addrspacecast i8 addrspace(1)* %83 to i8*
  %85 = ptrtoint i8* %84 to i64
  %86 = and i64 %85, 2233785415175766016
  %87 = icmp eq i64 %86, 576460752303423488
  br i1 %87, label %95, label %99
88:
  store i64 3329, i64* %14
  br label %49
89:
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %91 = addrspacecast i8 addrspace(1)* %90 to i8*
  %92 = ptrtoint i8* %91 to i64
  %93 = and i64 %92, 2233785415175766016
  %94 = icmp eq i64 %93, 504403158265495552
  br i1 %94, label %104, label %110
95:
  %96 = call double @_bal_tagged_to_float(i8 addrspace(1)* %83)
  %97 = call {i64, i1} @_bal_float_to_int(double %96)
  %98 = extractvalue {i64, i1} %97, 1
  br i1 %98, label %103, label %100
99:
  store i8 addrspace(1)* %83, i8 addrspace(1)** %10
  br label %89
100:
  %101 = extractvalue {i64, i1} %97, 0
  %102 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %101)
  store i8 addrspace(1)* %102, i8 addrspace(1)** %10
  br label %89
103:
  store i64 3587, i64* %14
  br label %49
104:
  %105 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %90)
  store i64 %105, i64* %11
  %106 = load i64, i64* %sum
  %107 = load i64, i64* %11
  %108 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %106, i64 %107)
  %109 = extractvalue {i64, i1} %108, 1
  br i1 %109, label %114, label %111
110:
  store i64 3587, i64* %14
  br label %49
111:
  %112 = extractvalue {i64, i1} %108, 0
  store i64 %112, i64* %12
  %113 = load i64, i64* %12
  store i64 %113, i64* %sum
  br label %46
114:
  store i64 3585, i64* %14
  br label %49
}
