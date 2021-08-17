@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i64 @_Barray__length(i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %9, label %6
6:
  %7 = call i8 addrspace(1)* @_B_findPrimes()
  store i8 addrspace(1)* %7, i8 addrspace(1)** %1
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_B_printMersenne(i8 addrspace(1)* %8)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
9:
  call void @_bal_panic(i64 516)
  unreachable
}
define internal i8 addrspace(1)* @_B_findPrimes() {
  %1 = alloca i8 addrspace(1)*
  %primes = alloca i8 addrspace(1)*
  %gap = alloca i64
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %i = alloca i64
  %8 = alloca i1
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %80, label %16
16:
  %17 = call i8 addrspace(1)* @_bal_alloc(i64 16)
  %18 = bitcast i8 addrspace(1)* %17 to [2 x i8 addrspace(1)*] addrspace(1)*
  %19 = zext i1 0 to i64
  %20 = or i64 %19, 72057594037927936
  %21 = getelementptr i8, i8 addrspace(1)* null, i64 %20
  %22 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %18, i64 0, i64 0
  store i8 addrspace(1)* %21, i8 addrspace(1)* addrspace(1)* %22
  %23 = zext i1 0 to i64
  %24 = or i64 %23, 72057594037927936
  %25 = getelementptr i8, i8 addrspace(1)* null, i64 %24
  %26 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %18, i64 0, i64 1
  store i8 addrspace(1)* %25, i8 addrspace(1)* addrspace(1)* %26
  %27 = bitcast [2 x i8 addrspace(1)*] addrspace(1)* %18 to [0 x i8 addrspace(1)*] addrspace(1)*
  %28 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %29 = bitcast i8 addrspace(1)* %28 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %30 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29, i64 0, i32 0
  store i64 2, i64 addrspace(1)* %30
  %31 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %31
  %32 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %27, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %32
  %33 = getelementptr i8, i8 addrspace(1)* %28, i64 1297036692682702848
  store i8 addrspace(1)* %33, i8 addrspace(1)** %1
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %34, i8 addrspace(1)** %primes
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %36 = call i64 @_bal_list_set(i8 addrspace(1)* %35, i64 1000000, i8 addrspace(1)* null)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %81, label %82
38:
  %39 = load i64, i64* %gap
  %40 = load i64, i64* %gap
  %41 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %39, i64 %40)
  %42 = extractvalue {i64, i1} %41, 1
  br i1 %42, label %92, label %84
43:
  %44 = load i64, i64* %gap
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %46 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %45, i64 72057594037927935)
  %47 = bitcast i8 addrspace(1)* %46 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %48 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47, i64 0, i32 0
  %49 = load i64, i64 addrspace(1)* %48, align 8
  %50 = icmp ult i64 %44, %49
  br i1 %50, label %93, label %101
51:
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  ret i8 addrspace(1)* %52
53:
  %54 = load i64, i64* %gap
  %55 = load i64, i64* %gap
  %56 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %54, i64 %55)
  %57 = extractvalue {i64, i1} %56, 1
  br i1 %57, label %105, label %102
58:
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %60 = call i64 @_Barray__length(i8 addrspace(1)* %59)
  store i64 %60, i64* %9
  %61 = load i64, i64* %i
  %62 = load i64, i64* %9
  %63 = icmp slt i64 %61, %62
  store i1 %63, i1* %8
  %64 = load i1, i1* %8
  br i1 %64, label %65, label %73
65:
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %67 = load i64, i64* %i
  %68 = zext i1 0 to i64
  %69 = or i64 %68, 72057594037927936
  %70 = getelementptr i8, i8 addrspace(1)* null, i64 %69
  %71 = call i64 @_bal_list_set(i8 addrspace(1)* %66, i64 %67, i8 addrspace(1)* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %106, label %111
73:
  br label %74
74:
  %75 = load i64, i64* %gap
  %76 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %75, i64 1)
  %77 = extractvalue {i64, i1} %76, 1
  br i1 %77, label %120, label %117
78:
  %79 = load i64, i64* %12
  call void @_bal_panic(i64 %79)
  unreachable
80:
  call void @_bal_panic(i64 1540)
  unreachable
81:
  store i64 2, i64* %gap
  br label %38
82:
  %83 = or i64 %36, 2048
  store i64 %83, i64* %12
  br label %78
84:
  %85 = extractvalue {i64, i1} %41, 0
  store i64 %85, i64* %3
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %87 = call i64 @_Barray__length(i8 addrspace(1)* %86)
  store i64 %87, i64* %4
  %88 = load i64, i64* %3
  %89 = load i64, i64* %4
  %90 = icmp slt i64 %88, %89
  store i1 %90, i1* %2
  %91 = load i1, i1* %2
  br i1 %91, label %43, label %51
92:
  store i64 2561, i64* %12
  br label %78
93:
  %94 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47, i64 0, i32 2
  %95 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %94, align 8
  %96 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %95, i64 0, i64 %44
  %97 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %96, align 8
  store i8 addrspace(1)* %97, i8 addrspace(1)** %6
  %98 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %99 = icmp eq i8 addrspace(1)* %98, null
  store i1 %99, i1* %5
  %100 = load i1, i1* %5
  br i1 %100, label %53, label %74
101:
  store i64 2821, i64* %12
  br label %78
102:
  %103 = extractvalue {i64, i1} %56, 0
  store i64 %103, i64* %7
  %104 = load i64, i64* %7
  store i64 %104, i64* %i
  br label %58
105:
  store i64 3073, i64* %12
  br label %78
106:
  %107 = load i64, i64* %i
  %108 = load i64, i64* %gap
  %109 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %107, i64 %108)
  %110 = extractvalue {i64, i1} %109, 1
  br i1 %110, label %116, label %113
111:
  %112 = or i64 %71, 3584
  store i64 %112, i64* %12
  br label %78
113:
  %114 = extractvalue {i64, i1} %109, 0
  store i64 %114, i64* %10
  %115 = load i64, i64* %10
  store i64 %115, i64* %i
  br label %58
116:
  store i64 3841, i64* %12
  br label %78
117:
  %118 = extractvalue {i64, i1} %76, 0
  store i64 %118, i64* %11
  %119 = load i64, i64* %11
  store i64 %119, i64* %gap
  br label %38
120:
  store i64 4609, i64* %12
  br label %78
}
define internal void @_B_printMersenne(i8 addrspace(1)* %0) {
  %primes = alloca i8 addrspace(1)*
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i1
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %37, label %14
14:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %primes
  store i64 2, i64* %i
  br label %15
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %17 = call i64 @_Barray__length(i8 addrspace(1)* %16)
  store i64 %17, i64* %3
  %18 = load i64, i64* %i
  %19 = load i64, i64* %3
  %20 = icmp slt i64 %18, %19
  store i1 %20, i1* %2
  %21 = load i1, i1* %2
  br i1 %21, label %22, label %26
22:
  %23 = load i64, i64* %i
  %24 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %23, i64 1)
  %25 = extractvalue {i64, i1} %24, 1
  br i1 %25, label %47, label %38
26:
  ret void
27:
  %28 = load i64, i64* %i
  %29 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %28, i64 1)
  %30 = extractvalue {i64, i1} %29, 1
  br i1 %30, label %61, label %57
31:
  %32 = load i64, i64* %i
  %33 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %32, i64 2)
  %34 = extractvalue {i64, i1} %33, 1
  br i1 %34, label %65, label %62
35:
  %36 = load i64, i64* %10
  call void @_bal_panic(i64 %36)
  unreachable
37:
  call void @_bal_panic(i64 5892)
  unreachable
38:
  %39 = extractvalue {i64, i1} %24, 0
  store i64 %39, i64* %5
  %40 = load i64, i64* %5
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %42 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %41, i64 72057594037927935)
  %43 = bitcast i8 addrspace(1)* %42 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %44 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %43, i64 0, i32 0
  %45 = load i64, i64 addrspace(1)* %44, align 8
  %46 = icmp ult i64 %40, %45
  br i1 %46, label %48, label %56
47:
  store i64 6657, i64* %10
  br label %35
48:
  %49 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %43, i64 0, i32 2
  %50 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %49, align 8
  %51 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %50, i64 0, i64 %40
  %52 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %51, align 8
  store i8 addrspace(1)* %52, i8 addrspace(1)** %6
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %54 = icmp eq i8 addrspace(1)* %53, null
  store i1 %54, i1* %4
  %55 = load i1, i1* %4
  br i1 %55, label %27, label %31
56:
  store i64 6661, i64* %10
  br label %35
57:
  %58 = extractvalue {i64, i1} %29, 0
  store i64 %58, i64* %7
  %59 = load i64, i64* %7
  %60 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %59)
  call void @_Bio__println(i8 addrspace(1)* %60)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  br label %31
61:
  store i64 6913, i64* %10
  br label %35
62:
  %63 = extractvalue {i64, i1} %33, 0
  store i64 %63, i64* %9
  %64 = load i64, i64* %9
  store i64 %64, i64* %i
  br label %15
65:
  store i64 8961, i64* %10
  br label %35
}
