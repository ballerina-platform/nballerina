@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
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
  %12 = alloca i64
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %59, label %16
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
  %25 = load i64, i64* %i
  %26 = icmp slt i64 %25, 1000000
  store i1 %26, i1* %2
  %27 = load i1, i1* %2
  br i1 %27, label %28, label %34
28:
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %30 = load i64, i64* %i
  %31 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %32 = call i64 @_bal_list_set(i8 addrspace(1)* %29, i64 %30, i8 addrspace(1)* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %60, label %64
34:
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1001)
  %37 = call i64 @_bal_list_set(i8 addrspace(1)* %35, i64 123000, i8 addrspace(1)* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %70, label %71
39:
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %41 = call i64 @_Barray__length(i8 addrspace(1)* %40)
  store i64 %41, i64* %5
  %42 = load i64, i64* %i
  %43 = load i64, i64* %5
  %44 = icmp slt i64 %42, %43
  store i1 %44, i1* %4
  %45 = load i1, i1* %4
  br i1 %45, label %46, label %54
46:
  %47 = load i64, i64* %i
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %49 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %48, i64 72057594037927935)
  %50 = bitcast i8 addrspace(1)* %49 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %51 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %50, i64 0, i32 0
  %52 = load i64, i64 addrspace(1)* %51, align 8
  %53 = icmp ult i64 %47, %52
  br i1 %53, label %73, label %83
54:
  %55 = load i64, i64* %sum
  %56 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %55)
  call void @_Bio__println(i8 addrspace(1)* %56)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  ret void
57:
  %58 = load i64, i64* %12
  call void @_bal_panic(i64 %58)
  unreachable
59:
  call void @_bal_panic(i64 772)
  unreachable
60:
  %61 = load i64, i64* %i
  %62 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %61, i64 1)
  %63 = extractvalue {i64, i1} %62, 1
  br i1 %63, label %69, label %66
64:
  %65 = or i64 %32, 1792
  store i64 %65, i64* %12
  br label %57
66:
  %67 = extractvalue {i64, i1} %62, 0
  store i64 %67, i64* %3
  %68 = load i64, i64* %3
  store i64 %68, i64* %i
  br label %24
69:
  store i64 2049, i64* %12
  br label %57
70:
  store i64 0, i64* %i
  store i64 0, i64* %sum
  br label %39
71:
  %72 = or i64 %37, 2560
  store i64 %72, i64* %12
  br label %57
73:
  %74 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %50, i64 0, i32 2
  %75 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %74, align 8
  %76 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %75, i64 0, i64 %47
  %77 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %76, align 8
  store i8 addrspace(1)* %77, i8 addrspace(1)** %6
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %79 = addrspacecast i8 addrspace(1)* %78 to i8*
  %80 = ptrtoint i8* %79 to i64
  %81 = and i64 %80, 2233785415175766016
  %82 = icmp eq i64 %81, 576460752303423488
  br i1 %82, label %90, label %94
83:
  store i64 3589, i64* %12
  br label %57
84:
  %85 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %86 = addrspacecast i8 addrspace(1)* %85 to i8*
  %87 = ptrtoint i8* %86 to i64
  %88 = and i64 %87, 2233785415175766016
  %89 = icmp eq i64 %88, 504403158265495552
  br i1 %89, label %99, label %105
90:
  %91 = call double @_bal_tagged_to_float(i8 addrspace(1)* %78)
  %92 = call {i64, i1} @_bal_float_to_int(double %91)
  %93 = extractvalue {i64, i1} %92, 1
  br i1 %93, label %98, label %95
94:
  store i8 addrspace(1)* %78, i8 addrspace(1)** %7
  br label %84
95:
  %96 = extractvalue {i64, i1} %92, 0
  %97 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %96)
  store i8 addrspace(1)* %97, i8 addrspace(1)** %7
  br label %84
98:
  store i64 3587, i64* %12
  br label %57
99:
  %100 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %85)
  store i64 %100, i64* %8
  %101 = load i64, i64* %sum
  %102 = load i64, i64* %8
  %103 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %101, i64 %102)
  %104 = extractvalue {i64, i1} %103, 1
  br i1 %104, label %112, label %106
105:
  store i64 3587, i64* %12
  br label %57
106:
  %107 = extractvalue {i64, i1} %103, 0
  store i64 %107, i64* %9
  %108 = load i64, i64* %9
  store i64 %108, i64* %sum
  %109 = load i64, i64* %i
  %110 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %109, i64 1)
  %111 = extractvalue {i64, i1} %110, 1
  br i1 %111, label %116, label %113
112:
  store i64 3585, i64* %12
  br label %57
113:
  %114 = extractvalue {i64, i1} %110, 0
  store i64 %114, i64* %10
  %115 = load i64, i64* %10
  store i64 %115, i64* %i
  br label %39
116:
  store i64 3841, i64* %12
  br label %57
}
