@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_Bb0m4lang5arraylength(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %9, label %6
6:
  %7 = call i8 addrspace(1)* @_B_findPrimes(), !dbg !12
  store i8 addrspace(1)* %7, i8 addrspace(1)** %1, !dbg !12
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !13
  call void @_B_printMersenne(i8 addrspace(1)* %8), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !13
  ret void
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
define internal i8 addrspace(1)* @_B_findPrimes() !dbg !7 {
  %primes = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %gap = alloca i64
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %i = alloca i64
  %7 = alloca i64
  %8 = alloca i1
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %92, label %16
16:
  %17 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 2)
  %18 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %17, i64 0, i32 3
  %19 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %18, align 8
  %20 = zext i1 0 to i64
  %21 = or i64 %20, 72057594037927936
  %22 = getelementptr i8, i8 addrspace(1)* null, i64 %21
  %23 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %19, i64 0, i64 0
  store i8 addrspace(1)* %22, i8 addrspace(1)* addrspace(1)* %23
  %24 = zext i1 0 to i64
  %25 = or i64 %24, 72057594037927936
  %26 = getelementptr i8, i8 addrspace(1)* null, i64 %25
  %27 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %19, i64 0, i64 1
  store i8 addrspace(1)* %26, i8 addrspace(1)* addrspace(1)* %27
  %28 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %17, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %28
  %29 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %17 to i8 addrspace(1)*
  %30 = getelementptr i8, i8 addrspace(1)* %29, i64 1297036692682702852
  store i8 addrspace(1)* %30, i8 addrspace(1)** %1
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %31, i8 addrspace(1)** %primes
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %33 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %32, i64 72057594037927928)
  %34 = bitcast i8 addrspace(1)* %33 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %35 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %34, i64 0, i32 0
  %36 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %35, align 8
  %37 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %36, i64 0, i32 2
  %38 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %37, align 8
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %40 = call i64 %38(i8 addrspace(1)* %39, i64 1000000, i8 addrspace(1)* null)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %94, label %95
42:
  %43 = load i64, i64* %gap
  %44 = load i64, i64* %gap
  %45 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %43, i64 %44)
  %46 = extractvalue {i64, i1} %45, 1
  br i1 %46, label %107, label %98
47:
  %48 = load i64, i64* %gap
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %50 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %49, i64 72057594037927928)
  %51 = bitcast i8 addrspace(1)* %50 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %52 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %51, i64 0, i32 1
  %53 = load i64, i64 addrspace(1)* %52, align 8
  %54 = icmp ult i64 %48, %53
  br i1 %54, label %109, label %120
55:
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  ret i8 addrspace(1)* %56
57:
  %58 = load i64, i64* %gap
  %59 = load i64, i64* %gap
  %60 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %58, i64 %59)
  %61 = extractvalue {i64, i1} %60, 1
  br i1 %61, label %125, label %122
62:
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %primes, !dbg !16
  %64 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %63, i64 -5), !dbg !16
  %65 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %64), !dbg !16
  store i64 %65, i64* %9, !dbg !16
  %66 = load i64, i64* %i
  %67 = load i64, i64* %9
  %68 = icmp slt i64 %66, %67
  store i1 %68, i1* %8
  %69 = load i1, i1* %8
  br i1 %69, label %70, label %85
70:
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %72 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %71, i64 72057594037927928)
  %73 = bitcast i8 addrspace(1)* %72 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %74 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %73, i64 0, i32 0
  %75 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %74, align 8
  %76 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %75, i64 0, i32 2
  %77 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %76, align 8
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %79 = load i64, i64* %i
  %80 = zext i1 0 to i64
  %81 = or i64 %80, 72057594037927936
  %82 = getelementptr i8, i8 addrspace(1)* null, i64 %81
  %83 = call i64 %77(i8 addrspace(1)* %78, i64 %79, i8 addrspace(1)* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %127, label %132
85:
  br label %86
86:
  %87 = load i64, i64* %gap
  %88 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %87, i64 1)
  %89 = extractvalue {i64, i1} %88, 1
  br i1 %89, label %143, label %140
90:
  %91 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  call void @_bal_panic(i8 addrspace(1)* %91)
  unreachable
92:
  %93 = call i8 addrspace(1)* @_bal_panic_construct(i64 1796), !dbg !14
  call void @_bal_panic(i8 addrspace(1)* %93)
  unreachable
94:
  store i64 2, i64* %gap
  br label %42
95:
  %96 = or i64 %40, 2304
  %97 = call i8 addrspace(1)* @_bal_panic_construct(i64 %96), !dbg !14
  store i8 addrspace(1)* %97, i8 addrspace(1)** %12
  br label %90
98:
  %99 = extractvalue {i64, i1} %45, 0
  store i64 %99, i64* %3
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %primes, !dbg !15
  %101 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %100, i64 -5), !dbg !15
  %102 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %101), !dbg !15
  store i64 %102, i64* %4, !dbg !15
  %103 = load i64, i64* %3
  %104 = load i64, i64* %4
  %105 = icmp slt i64 %103, %104
  store i1 %105, i1* %2
  %106 = load i1, i1* %2
  br i1 %106, label %47, label %55
107:
  %108 = call i8 addrspace(1)* @_bal_panic_construct(i64 2817), !dbg !14
  store i8 addrspace(1)* %108, i8 addrspace(1)** %12
  br label %90
109:
  %110 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %51, i64 0, i32 0
  %111 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %110, align 8
  %112 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %111, i64 0, i32 1
  %113 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %112, align 8
  %114 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %115 = load i64, i64* %gap
  %116 = call i8 addrspace(1)* %113(i8 addrspace(1)* %114, i64 %115)
  store i8 addrspace(1)* %116, i8 addrspace(1)** %6
  %117 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %118 = icmp eq i8 addrspace(1)* %117, null
  store i1 %118, i1* %5
  %119 = load i1, i1* %5
  br i1 %119, label %57, label %86
120:
  %121 = call i8 addrspace(1)* @_bal_panic_construct(i64 3077), !dbg !14
  store i8 addrspace(1)* %121, i8 addrspace(1)** %12
  br label %90
122:
  %123 = extractvalue {i64, i1} %60, 0
  store i64 %123, i64* %7
  %124 = load i64, i64* %7
  store i64 %124, i64* %i
  br label %62
125:
  %126 = call i8 addrspace(1)* @_bal_panic_construct(i64 3329), !dbg !14
  store i8 addrspace(1)* %126, i8 addrspace(1)** %12
  br label %90
127:
  %128 = load i64, i64* %i
  %129 = load i64, i64* %gap
  %130 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %128, i64 %129)
  %131 = extractvalue {i64, i1} %130, 1
  br i1 %131, label %138, label %135
132:
  %133 = or i64 %83, 3840
  %134 = call i8 addrspace(1)* @_bal_panic_construct(i64 %133), !dbg !14
  store i8 addrspace(1)* %134, i8 addrspace(1)** %12
  br label %90
135:
  %136 = extractvalue {i64, i1} %130, 0
  store i64 %136, i64* %10
  %137 = load i64, i64* %10
  store i64 %137, i64* %i
  br label %62
138:
  %139 = call i8 addrspace(1)* @_bal_panic_construct(i64 4097), !dbg !14
  store i8 addrspace(1)* %139, i8 addrspace(1)** %12
  br label %90
140:
  %141 = extractvalue {i64, i1} %88, 0
  store i64 %141, i64* %11
  %142 = load i64, i64* %11
  store i64 %142, i64* %gap
  br label %42
143:
  %144 = call i8 addrspace(1)* @_bal_panic_construct(i64 4865), !dbg !14
  store i8 addrspace(1)* %144, i8 addrspace(1)** %12
  br label %90
}
define internal void @_B_printMersenne(i8 addrspace(1)* %0) !dbg !9 {
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
  br i1 %13, label %38, label %14
14:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %primes
  store i64 2, i64* %i
  br label %15
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %primes, !dbg !18
  %17 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %16, i64 -5), !dbg !18
  %18 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %17), !dbg !18
  store i64 %18, i64* %3, !dbg !18
  %19 = load i64, i64* %i
  %20 = load i64, i64* %3
  %21 = icmp slt i64 %19, %20
  store i1 %21, i1* %2
  %22 = load i1, i1* %2
  br i1 %22, label %23, label %27
23:
  %24 = load i64, i64* %i
  %25 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %24, i64 1)
  %26 = extractvalue {i64, i1} %25, 1
  br i1 %26, label %49, label %40
27:
  ret void
28:
  %29 = load i64, i64* %i
  %30 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %29, i64 1)
  %31 = extractvalue {i64, i1} %30, 1
  br i1 %31, label %68, label %64
32:
  %33 = load i64, i64* %i
  %34 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %33, i64 2)
  %35 = extractvalue {i64, i1} %34, 1
  br i1 %35, label %73, label %70
36:
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  call void @_bal_panic(i8 addrspace(1)* %37)
  unreachable
38:
  %39 = call i8 addrspace(1)* @_bal_panic_construct(i64 6148), !dbg !17
  call void @_bal_panic(i8 addrspace(1)* %39)
  unreachable
40:
  %41 = extractvalue {i64, i1} %25, 0
  store i64 %41, i64* %5
  %42 = load i64, i64* %5
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %44 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %43, i64 72057594037927928)
  %45 = bitcast i8 addrspace(1)* %44 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %46 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %45, i64 0, i32 1
  %47 = load i64, i64 addrspace(1)* %46, align 8
  %48 = icmp ult i64 %42, %47
  br i1 %48, label %51, label %62
49:
  %50 = call i8 addrspace(1)* @_bal_panic_construct(i64 6913), !dbg !17
  store i8 addrspace(1)* %50, i8 addrspace(1)** %10
  br label %36
51:
  %52 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %45, i64 0, i32 0
  %53 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %52, align 8
  %54 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %53, i64 0, i32 1
  %55 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %54, align 8
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %57 = load i64, i64* %5
  %58 = call i8 addrspace(1)* %55(i8 addrspace(1)* %56, i64 %57)
  store i8 addrspace(1)* %58, i8 addrspace(1)** %6
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %60 = icmp eq i8 addrspace(1)* %59, null
  store i1 %60, i1* %4
  %61 = load i1, i1* %4
  br i1 %61, label %28, label %32
62:
  %63 = call i8 addrspace(1)* @_bal_panic_construct(i64 6917), !dbg !17
  store i8 addrspace(1)* %63, i8 addrspace(1)** %10
  br label %36
64:
  %65 = extractvalue {i64, i1} %30, 0
  store i64 %65, i64* %7
  %66 = load i64, i64* %7, !dbg !19
  %67 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %66), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %67), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !19
  br label %32
68:
  %69 = call i8 addrspace(1)* @_bal_panic_construct(i64 7169), !dbg !17
  store i8 addrspace(1)* %69, i8 addrspace(1)** %10
  br label %36
70:
  %71 = extractvalue {i64, i1} %34, 0
  store i64 %71, i64* %9
  %72 = load i64, i64* %9
  store i64 %72, i64* %i
  br label %15
73:
  %74 = call i8 addrspace(1)* @_bal_panic_construct(i64 9217), !dbg !17
  store i8 addrspace(1)* %74, i8 addrspace(1)** %10
  br label %36
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-bench/sieve-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"findPrimes", linkageName:"_B_findPrimes", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"printMersenne", linkageName:"_B_printMersenne", scope: !1, file: !1, line: 24, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 18, scope: !5)
!13 = !DILocation(line: 4, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
!15 = !DILocation(line: 11, column: 35, scope: !7)
!16 = !DILocation(line: 14, column: 35, scope: !7)
!17 = !DILocation(line: 0, column: 0, scope: !9)
!18 = !DILocation(line: 26, column: 27, scope: !9)
!19 = !DILocation(line: 28, column: 12, scope: !9)
