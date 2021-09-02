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
  br i1 %15, label %81, label %16
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
  %28 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %29 = bitcast i8 addrspace(1)* %28 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %30 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %30
  %31 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %31
  %32 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29, i64 0, i32 2
  store i64 2, i64 addrspace(1)* %32
  %33 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %27, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %33
  %34 = getelementptr i8, i8 addrspace(1)* %28, i64 1297036692682702848
  store i8 addrspace(1)* %34, i8 addrspace(1)** %1
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %35, i8 addrspace(1)** %primes
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %37 = call i64 @_bal_list_set(i8 addrspace(1)* %36, i64 1000000, i8 addrspace(1)* null)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %83, label %84
39:
  %40 = load i64, i64* %gap
  %41 = load i64, i64* %gap
  %42 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %40, i64 %41)
  %43 = extractvalue {i64, i1} %42, 1
  br i1 %43, label %95, label %87
44:
  %45 = load i64, i64* %gap
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %47 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %46, i64 72057594037927935)
  %48 = bitcast i8 addrspace(1)* %47 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %49 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 1
  %50 = load i64, i64 addrspace(1)* %49, align 8
  %51 = icmp ult i64 %45, %50
  br i1 %51, label %97, label %105
52:
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  ret i8 addrspace(1)* %53
54:
  %55 = load i64, i64* %gap
  %56 = load i64, i64* %gap
  %57 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %55, i64 %56)
  %58 = extractvalue {i64, i1} %57, 1
  br i1 %58, label %110, label %107
59:
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %61 = call i64 @_Barray__length(i8 addrspace(1)* %60)
  store i64 %61, i64* %9
  %62 = load i64, i64* %i
  %63 = load i64, i64* %9
  %64 = icmp slt i64 %62, %63
  store i1 %64, i1* %8
  %65 = load i1, i1* %8
  br i1 %65, label %66, label %74
66:
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %68 = load i64, i64* %i
  %69 = zext i1 0 to i64
  %70 = or i64 %69, 72057594037927936
  %71 = getelementptr i8, i8 addrspace(1)* null, i64 %70
  %72 = call i64 @_bal_list_set(i8 addrspace(1)* %67, i64 %68, i8 addrspace(1)* %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %112, label %117
74:
  br label %75
75:
  %76 = load i64, i64* %gap
  %77 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %76, i64 1)
  %78 = extractvalue {i64, i1} %77, 1
  br i1 %78, label %128, label %125
79:
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  call void @_bal_panic(i8 addrspace(1)* %80)
  unreachable
81:
  %82 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540)
  call void @_bal_panic(i8 addrspace(1)* %82)
  unreachable
83:
  store i64 2, i64* %gap
  br label %39
84:
  %85 = or i64 %37, 2048
  %86 = call i8 addrspace(1)* @_bal_panic_construct(i64 %85)
  store i8 addrspace(1)* %86, i8 addrspace(1)** %12
  br label %79
87:
  %88 = extractvalue {i64, i1} %42, 0
  store i64 %88, i64* %3
  %89 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %90 = call i64 @_Barray__length(i8 addrspace(1)* %89)
  store i64 %90, i64* %4
  %91 = load i64, i64* %3
  %92 = load i64, i64* %4
  %93 = icmp slt i64 %91, %92
  store i1 %93, i1* %2
  %94 = load i1, i1* %2
  br i1 %94, label %44, label %52
95:
  %96 = call i8 addrspace(1)* @_bal_panic_construct(i64 2561)
  store i8 addrspace(1)* %96, i8 addrspace(1)** %12
  br label %79
97:
  %98 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 3
  %99 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %98, align 8
  %100 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %99, i64 0, i64 %45
  %101 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %100, align 8
  store i8 addrspace(1)* %101, i8 addrspace(1)** %6
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %103 = icmp eq i8 addrspace(1)* %102, null
  store i1 %103, i1* %5
  %104 = load i1, i1* %5
  br i1 %104, label %54, label %75
105:
  %106 = call i8 addrspace(1)* @_bal_panic_construct(i64 2821)
  store i8 addrspace(1)* %106, i8 addrspace(1)** %12
  br label %79
107:
  %108 = extractvalue {i64, i1} %57, 0
  store i64 %108, i64* %7
  %109 = load i64, i64* %7
  store i64 %109, i64* %i
  br label %59
110:
  %111 = call i8 addrspace(1)* @_bal_panic_construct(i64 3073)
  store i8 addrspace(1)* %111, i8 addrspace(1)** %12
  br label %79
112:
  %113 = load i64, i64* %i
  %114 = load i64, i64* %gap
  %115 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %113, i64 %114)
  %116 = extractvalue {i64, i1} %115, 1
  br i1 %116, label %123, label %120
117:
  %118 = or i64 %72, 3584
  %119 = call i8 addrspace(1)* @_bal_panic_construct(i64 %118)
  store i8 addrspace(1)* %119, i8 addrspace(1)** %12
  br label %79
120:
  %121 = extractvalue {i64, i1} %115, 0
  store i64 %121, i64* %10
  %122 = load i64, i64* %10
  store i64 %122, i64* %i
  br label %59
123:
  %124 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841)
  store i8 addrspace(1)* %124, i8 addrspace(1)** %12
  br label %79
125:
  %126 = extractvalue {i64, i1} %77, 0
  store i64 %126, i64* %11
  %127 = load i64, i64* %11
  store i64 %127, i64* %gap
  br label %39
128:
  %129 = call i8 addrspace(1)* @_bal_panic_construct(i64 4609)
  store i8 addrspace(1)* %129, i8 addrspace(1)** %12
  br label %79
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
  %44 = bitcast i8 addrspace(1)* %43 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %45 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44, i64 0, i32 1
  %46 = load i64, i64 addrspace(1)* %45, align 8
  %47 = icmp ult i64 %41, %46
  br i1 %47, label %50, label %58
48:
  %49 = call i8 addrspace(1)* @_bal_panic_construct(i64 6657)
  store i8 addrspace(1)* %49, i8 addrspace(1)** %10
  br label %35
50:
  %51 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44, i64 0, i32 3
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
