@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i64 @_Barray__length(i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare {i64, i1} @_bal_float_to_int(double) nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i64
  %sum = alloca i64
  %4 = alloca i1
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %60, label %16
16:
  %17 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %18 = bitcast i8 addrspace(1)* %17 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %19 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %19
  %20 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %20
  %21 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %21
  %22 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %22
  %23 = getelementptr i8, i8 addrspace(1)* %17, i64 1297036692682702848
  store i8 addrspace(1)* %23, i8 addrspace(1)** %1
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %24, i8 addrspace(1)** %v
  store i64 0, i64* %i
  br label %25
25:
  %26 = load i64, i64* %i
  %27 = icmp slt i64 %26, 1000000
  store i1 %27, i1* %2
  %28 = load i1, i1* %2
  br i1 %28, label %29, label %35
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %31 = load i64, i64* %i
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %33 = call i64 @_bal_list_set(i8 addrspace(1)* %30, i64 %31, i8 addrspace(1)* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %62, label %66
35:
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1001)
  %38 = call i64 @_bal_list_set(i8 addrspace(1)* %36, i64 123000, i8 addrspace(1)* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %74, label %75
40:
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %42 = call i64 @_Barray__length(i8 addrspace(1)* %41)
  store i64 %42, i64* %5
  %43 = load i64, i64* %i
  %44 = load i64, i64* %5
  %45 = icmp slt i64 %43, %44
  store i1 %45, i1* %4
  %46 = load i1, i1* %4
  br i1 %46, label %47, label %55
47:
  %48 = load i64, i64* %i
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %50 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %49, i64 72057594037927935)
  %51 = bitcast i8 addrspace(1)* %50 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %52 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %51, i64 0, i32 1
  %53 = load i64, i64 addrspace(1)* %52, align 8
  %54 = icmp ult i64 %48, %53
  br i1 %54, label %78, label %88
55:
  %56 = load i64, i64* %sum
  %57 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %56)
  call void @_Bio__println(i8 addrspace(1)* %57)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  ret void
58:
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  call void @_bal_panic(i8 addrspace(1)* %59)
  unreachable
60:
  %61 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %61)
  unreachable
62:
  %63 = load i64, i64* %i
  %64 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %63, i64 1)
  %65 = extractvalue {i64, i1} %64, 1
  br i1 %65, label %72, label %69
66:
  %67 = or i64 %33, 2048
  %68 = call i8 addrspace(1)* @_bal_panic_construct(i64 %67)
  store i8 addrspace(1)* %68, i8 addrspace(1)** %12
  br label %58
69:
  %70 = extractvalue {i64, i1} %64, 0
  store i64 %70, i64* %3
  %71 = load i64, i64* %3
  store i64 %71, i64* %i
  br label %25
72:
  %73 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305)
  store i8 addrspace(1)* %73, i8 addrspace(1)** %12
  br label %58
74:
  store i64 0, i64* %i
  store i64 0, i64* %sum
  br label %40
75:
  %76 = or i64 %38, 2816
  %77 = call i8 addrspace(1)* @_bal_panic_construct(i64 %76)
  store i8 addrspace(1)* %77, i8 addrspace(1)** %12
  br label %58
78:
  %79 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %51, i64 0, i32 3
  %80 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %79, align 8
  %81 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %80, i64 0, i64 %48
  %82 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %81, align 8
  store i8 addrspace(1)* %82, i8 addrspace(1)** %6
  %83 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %84 = addrspacecast i8 addrspace(1)* %83 to i8*
  %85 = ptrtoint i8* %84 to i64
  %86 = and i64 %85, 2233785415175766016
  %87 = icmp eq i64 %86, 576460752303423488
  br i1 %87, label %96, label %100
88:
  %89 = call i8 addrspace(1)* @_bal_panic_construct(i64 3845)
  store i8 addrspace(1)* %89, i8 addrspace(1)** %12
  br label %58
90:
  %91 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %92 = addrspacecast i8 addrspace(1)* %91 to i8*
  %93 = ptrtoint i8* %92 to i64
  %94 = and i64 %93, 2233785415175766016
  %95 = icmp eq i64 %94, 504403158265495552
  br i1 %95, label %106, label %112
96:
  %97 = call double @_bal_tagged_to_float(i8 addrspace(1)* %83)
  %98 = call {i64, i1} @_bal_float_to_int(double %97)
  %99 = extractvalue {i64, i1} %98, 1
  br i1 %99, label %104, label %101
100:
  store i8 addrspace(1)* %83, i8 addrspace(1)** %7
  br label %90
101:
  %102 = extractvalue {i64, i1} %98, 0
  %103 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %102)
  store i8 addrspace(1)* %103, i8 addrspace(1)** %7
  br label %90
104:
  %105 = call i8 addrspace(1)* @_bal_panic_construct(i64 3843)
  store i8 addrspace(1)* %105, i8 addrspace(1)** %12
  br label %58
106:
  %107 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %91)
  store i64 %107, i64* %8
  %108 = load i64, i64* %sum
  %109 = load i64, i64* %8
  %110 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %108, i64 %109)
  %111 = extractvalue {i64, i1} %110, 1
  br i1 %111, label %120, label %114
112:
  %113 = call i8 addrspace(1)* @_bal_panic_construct(i64 3843)
  store i8 addrspace(1)* %113, i8 addrspace(1)** %12
  br label %58
114:
  %115 = extractvalue {i64, i1} %110, 0
  store i64 %115, i64* %9
  %116 = load i64, i64* %9
  store i64 %116, i64* %sum
  %117 = load i64, i64* %i
  %118 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %117, i64 1)
  %119 = extractvalue {i64, i1} %118, 1
  br i1 %119, label %125, label %122
120:
  %121 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841)
  store i8 addrspace(1)* %121, i8 addrspace(1)** %12
  br label %58
122:
  %123 = extractvalue {i64, i1} %118, 0
  store i64 %123, i64* %10
  %124 = load i64, i64* %10
  store i64 %124, i64* %i
  br label %40
125:
  %126 = call i8 addrspace(1)* @_bal_panic_construct(i64 4097)
  store i8 addrspace(1)* %126, i8 addrspace(1)** %12
  br label %58
}
