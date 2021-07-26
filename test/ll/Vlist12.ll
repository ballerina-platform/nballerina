@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i64 @_Barray__length(i8 addrspace(1)*)
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i64
  %sum = alloca i64
  %5 = alloca i1
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i64
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %58, label %16
16:
  %17 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %18 = bitcast i8 addrspace(1)* %17 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %19 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %19
  %20 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %20
  %21 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %21
  %22 = getelementptr i8, i8 addrspace(1)* %17, i64 1297036692682702848
  store i8 addrspace(1)* %22, i8 addrspace(1)** %1
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %23, i8 addrspace(1)** %v
  store i64 0, i64* %i
  br label %24
24:
  %25 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 1000, i64 1000)
  %26 = extractvalue {i64, i1} %25, 1
  br i1 %26, label %65, label %59
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1001)
  %30 = call i64 @_bal_list_set(i8 addrspace(1)* %28, i64 123000, i8 addrspace(1)* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %66, label %67
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %34 = load i64, i64* %i
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %36 = call i64 @_bal_list_set(i8 addrspace(1)* %33, i64 %34, i8 addrspace(1)* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %69, label %73
38:
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %40 = call i64 @_Barray__length(i8 addrspace(1)* %39)
  store i64 %40, i64* %6
  %41 = load i64, i64* %i
  %42 = load i64, i64* %6
  %43 = icmp slt i64 %41, %42
  store i1 %43, i1* %5
  %44 = load i1, i1* %5
  br i1 %44, label %48, label %45
45:
  %46 = load i64, i64* %sum
  %47 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %46)
  call void @_Bio__println(i8 addrspace(1)* %47)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  ret void
48:
  %49 = load i64, i64* %i
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %51 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %50, i64 72057594037927935)
  %52 = bitcast i8 addrspace(1)* %51 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %53 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %52, i64 0, i32 0
  %54 = load i64, i64 addrspace(1)* %53, align 8
  %55 = icmp ult i64 %49, %54
  br i1 %55, label %79, label %89
56:
  %57 = load i64, i64* %12
  call void @_bal_panic(i64 %57)
  unreachable
58:
  call void @_bal_panic(i64 772)
  unreachable
59:
  %60 = extractvalue {i64, i1} %25, 0
  store i64 %60, i64* %3
  %61 = load i64, i64* %i
  %62 = load i64, i64* %3
  %63 = icmp slt i64 %61, %62
  store i1 %63, i1* %2
  %64 = load i1, i1* %2
  br i1 %64, label %32, label %27
65:
  store i64 1537, i64* %12
  br label %56
66:
  store i64 0, i64* %i
  store i64 0, i64* %sum
  br label %38
67:
  %68 = or i64 %30, 2560
  store i64 %68, i64* %12
  br label %56
69:
  %70 = load i64, i64* %i
  %71 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %70, i64 1)
  %72 = extractvalue {i64, i1} %71, 1
  br i1 %72, label %78, label %75
73:
  %74 = or i64 %36, 1792
  store i64 %74, i64* %12
  br label %56
75:
  %76 = extractvalue {i64, i1} %71, 0
  store i64 %76, i64* %4
  %77 = load i64, i64* %4
  store i64 %77, i64* %i
  br label %24
78:
  store i64 2049, i64* %12
  br label %56
79:
  %80 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %52, i64 0, i32 2
  %81 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %80, align 8
  %82 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %81, i64 0, i64 %49
  %83 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %82, align 8
  store i8 addrspace(1)* %83, i8 addrspace(1)** %7
  %84 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %85 = addrspacecast i8 addrspace(1)* %84 to i8*
  %86 = ptrtoint i8* %85 to i64
  %87 = and i64 %86, 2233785415175766016
  %88 = icmp eq i64 %87, 504403158265495552
  br i1 %88, label %90, label %96
89:
  store i64 3589, i64* %12
  br label %56
90:
  %91 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %84)
  store i64 %91, i64* %8
  %92 = load i64, i64* %sum
  %93 = load i64, i64* %8
  %94 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %92, i64 %93)
  %95 = extractvalue {i64, i1} %94, 1
  br i1 %95, label %103, label %97
96:
  store i64 3587, i64* %12
  br label %56
97:
  %98 = extractvalue {i64, i1} %94, 0
  store i64 %98, i64* %9
  %99 = load i64, i64* %9
  store i64 %99, i64* %sum
  %100 = load i64, i64* %i
  %101 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %100, i64 1)
  %102 = extractvalue {i64, i1} %101, 1
  br i1 %102, label %107, label %104
103:
  store i64 3585, i64* %12
  br label %56
104:
  %105 = extractvalue {i64, i1} %101, 0
  store i64 %105, i64* %10
  %106 = load i64, i64* %10
  store i64 %106, i64* %i
  br label %38
107:
  store i64 3841, i64* %12
  br label %56
}
