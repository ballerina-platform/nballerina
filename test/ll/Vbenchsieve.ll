@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
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
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 516)
  call void @_bal_panic(i8 addrspace(1)* %10)
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
  %12 = alloca i8 addrspace(1)*
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
  br i1 %37, label %82, label %83
38:
  %39 = load i64, i64* %gap
  %40 = load i64, i64* %gap
  %41 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %39, i64 %40)
  %42 = extractvalue {i64, i1} %41, 1
  br i1 %42, label %94, label %86
43:
  %44 = load i64, i64* %gap
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %46 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %45, i64 72057594037927935)
  %47 = bitcast i8 addrspace(1)* %46 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %48 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47, i64 0, i32 0
  %49 = load i64, i64 addrspace(1)* %48, align 8
  %50 = icmp ult i64 %44, %49
  br i1 %50, label %96, label %104
51:
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  ret i8 addrspace(1)* %52
53:
  %54 = load i64, i64* %gap
  %55 = load i64, i64* %gap
  %56 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %54, i64 %55)
  %57 = extractvalue {i64, i1} %56, 1
  br i1 %57, label %109, label %106
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
  br i1 %72, label %111, label %116
73:
  br label %74
74:
  %75 = load i64, i64* %gap
  %76 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %75, i64 1)
  %77 = extractvalue {i64, i1} %76, 1
  br i1 %77, label %127, label %124
78:
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  call void @_bal_panic(i8 addrspace(1)* %79)
  unreachable
80:
  %81 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540)
  call void @_bal_panic(i8 addrspace(1)* %81)
  unreachable
82:
  store i64 2, i64* %gap
  br label %38
83:
  %84 = or i64 %36, 2048
  %85 = call i8 addrspace(1)* @_bal_panic_construct(i64 %84)
  store i8 addrspace(1)* %85, i8 addrspace(1)** %12
  br label %78
86:
  %87 = extractvalue {i64, i1} %41, 0
  store i64 %87, i64* %3
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %89 = call i64 @_Barray__length(i8 addrspace(1)* %88)
  store i64 %89, i64* %4
  %90 = load i64, i64* %3
  %91 = load i64, i64* %4
  %92 = icmp slt i64 %90, %91
  store i1 %92, i1* %2
  %93 = load i1, i1* %2
  br i1 %93, label %43, label %51
94:
  %95 = call i8 addrspace(1)* @_bal_panic_construct(i64 2561)
  store i8 addrspace(1)* %95, i8 addrspace(1)** %12
  br label %78
96:
  %97 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47, i64 0, i32 2
  %98 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %97, align 8
  %99 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %98, i64 0, i64 %44
  %100 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %99, align 8
  store i8 addrspace(1)* %100, i8 addrspace(1)** %6
  %101 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %102 = icmp eq i8 addrspace(1)* %101, null
  store i1 %102, i1* %5
  %103 = load i1, i1* %5
  br i1 %103, label %53, label %74
104:
  %105 = call i8 addrspace(1)* @_bal_panic_construct(i64 2821)
  store i8 addrspace(1)* %105, i8 addrspace(1)** %12
  br label %78
106:
  %107 = extractvalue {i64, i1} %56, 0
  store i64 %107, i64* %7
  %108 = load i64, i64* %7
  store i64 %108, i64* %i
  br label %58
109:
  %110 = call i8 addrspace(1)* @_bal_panic_construct(i64 3073)
  store i8 addrspace(1)* %110, i8 addrspace(1)** %12
  br label %78
111:
  %112 = load i64, i64* %i
  %113 = load i64, i64* %gap
  %114 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %112, i64 %113)
  %115 = extractvalue {i64, i1} %114, 1
  br i1 %115, label %122, label %119
116:
  %117 = or i64 %71, 3584
  %118 = call i8 addrspace(1)* @_bal_panic_construct(i64 %117)
  store i8 addrspace(1)* %118, i8 addrspace(1)** %12
  br label %78
119:
  %120 = extractvalue {i64, i1} %114, 0
  store i64 %120, i64* %10
  %121 = load i64, i64* %10
  store i64 %121, i64* %i
  br label %58
122:
  %123 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841)
  store i8 addrspace(1)* %123, i8 addrspace(1)** %12
  br label %78
124:
  %125 = extractvalue {i64, i1} %76, 0
  store i64 %125, i64* %11
  %126 = load i64, i64* %11
  store i64 %126, i64* %gap
  br label %38
127:
  %128 = call i8 addrspace(1)* @_bal_panic_construct(i64 4609)
  store i8 addrspace(1)* %128, i8 addrspace(1)** %12
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
  %10 = alloca i8 addrspace(1)*
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
  br i1 %25, label %48, label %39
26:
  ret void
27:
  %28 = load i64, i64* %i
  %29 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %28, i64 1)
  %30 = extractvalue {i64, i1} %29, 1
  br i1 %30, label %64, label %60
31:
  %32 = load i64, i64* %i
  %33 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %32, i64 2)
  %34 = extractvalue {i64, i1} %33, 1
  br i1 %34, label %69, label %66
35:
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  call void @_bal_panic(i8 addrspace(1)* %36)
  unreachable
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 5892)
  call void @_bal_panic(i8 addrspace(1)* %38)
  unreachable
39:
  %40 = extractvalue {i64, i1} %24, 0
  store i64 %40, i64* %5
  %41 = load i64, i64* %5
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %43 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %42, i64 72057594037927935)
  %44 = bitcast i8 addrspace(1)* %43 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %45 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44, i64 0, i32 0
  %46 = load i64, i64 addrspace(1)* %45, align 8
  %47 = icmp ult i64 %41, %46
  br i1 %47, label %50, label %58
48:
  %49 = call i8 addrspace(1)* @_bal_panic_construct(i64 6657)
  store i8 addrspace(1)* %49, i8 addrspace(1)** %10
  br label %35
50:
  %51 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44, i64 0, i32 2
  %52 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %51, align 8
  %53 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %52, i64 0, i64 %41
  %54 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %53, align 8
  store i8 addrspace(1)* %54, i8 addrspace(1)** %6
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %56 = icmp eq i8 addrspace(1)* %55, null
  store i1 %56, i1* %4
  %57 = load i1, i1* %4
  br i1 %57, label %27, label %31
58:
  %59 = call i8 addrspace(1)* @_bal_panic_construct(i64 6661)
  store i8 addrspace(1)* %59, i8 addrspace(1)** %10
  br label %35
60:
  %61 = extractvalue {i64, i1} %29, 0
  store i64 %61, i64* %7
  %62 = load i64, i64* %7
  %63 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %62)
  call void @_Bio__println(i8 addrspace(1)* %63)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  br label %31
64:
  %65 = call i8 addrspace(1)* @_bal_panic_construct(i64 6913)
  store i8 addrspace(1)* %65, i8 addrspace(1)** %10
  br label %35
66:
  %67 = extractvalue {i64, i1} %33, 0
  store i64 %67, i64* %9
  %68 = load i64, i64* %9
  store i64 %68, i64* %i
  br label %15
69:
  %70 = call i8 addrspace(1)* @_bal_panic_construct(i64 8961)
  store i8 addrspace(1)* %70, i8 addrspace(1)** %10
  br label %35
}
