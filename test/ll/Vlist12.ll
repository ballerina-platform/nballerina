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
  br i1 %33, label %61, label %65
34:
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1001)
  %37 = call i64 @_bal_list_set(i8 addrspace(1)* %35, i64 123000, i8 addrspace(1)* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %73, label %74
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
  br i1 %53, label %77, label %87
54:
  %55 = load i64, i64* %sum
  %56 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %55)
  call void @_Bio__println(i8 addrspace(1)* %56)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  ret void
57:
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  call void @_bal_panic(i8 addrspace(1)* %58)
  unreachable
59:
  %60 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %60)
  unreachable
61:
  %62 = load i64, i64* %i
  %63 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %62, i64 1)
  %64 = extractvalue {i64, i1} %63, 1
  br i1 %64, label %71, label %68
65:
  %66 = or i64 %32, 1792
  %67 = call i8 addrspace(1)* @_bal_panic_construct(i64 %66)
  store i8 addrspace(1)* %67, i8 addrspace(1)** %12
  br label %57
68:
  %69 = extractvalue {i64, i1} %63, 0
  store i64 %69, i64* %3
  %70 = load i64, i64* %3
  store i64 %70, i64* %i
  br label %24
71:
  %72 = call i8 addrspace(1)* @_bal_panic_construct(i64 2049)
  store i8 addrspace(1)* %72, i8 addrspace(1)** %12
  br label %57
73:
  store i64 0, i64* %i
  store i64 0, i64* %sum
  br label %39
74:
  %75 = or i64 %37, 2560
  %76 = call i8 addrspace(1)* @_bal_panic_construct(i64 %75)
  store i8 addrspace(1)* %76, i8 addrspace(1)** %12
  br label %57
77:
  %78 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %50, i64 0, i32 2
  %79 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %78, align 8
  %80 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %79, i64 0, i64 %47
  %81 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %80, align 8
  store i8 addrspace(1)* %81, i8 addrspace(1)** %6
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %83 = addrspacecast i8 addrspace(1)* %82 to i8*
  %84 = ptrtoint i8* %83 to i64
  %85 = and i64 %84, 2233785415175766016
  %86 = icmp eq i64 %85, 576460752303423488
  br i1 %86, label %95, label %99
87:
  %88 = call i8 addrspace(1)* @_bal_panic_construct(i64 3589)
  store i8 addrspace(1)* %88, i8 addrspace(1)** %12
  br label %57
89:
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %91 = addrspacecast i8 addrspace(1)* %90 to i8*
  %92 = ptrtoint i8* %91 to i64
  %93 = and i64 %92, 2233785415175766016
  %94 = icmp eq i64 %93, 504403158265495552
  br i1 %94, label %105, label %111
95:
  %96 = call double @_bal_tagged_to_float(i8 addrspace(1)* %82)
  %97 = call {i64, i1} @_bal_float_to_int(double %96)
  %98 = extractvalue {i64, i1} %97, 1
  br i1 %98, label %103, label %100
99:
  store i8 addrspace(1)* %82, i8 addrspace(1)** %7
  br label %89
100:
  %101 = extractvalue {i64, i1} %97, 0
  %102 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %101)
  store i8 addrspace(1)* %102, i8 addrspace(1)** %7
  br label %89
103:
  %104 = call i8 addrspace(1)* @_bal_panic_construct(i64 3587)
  store i8 addrspace(1)* %104, i8 addrspace(1)** %12
  br label %57
105:
  %106 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %90)
  store i64 %106, i64* %8
  %107 = load i64, i64* %sum
  %108 = load i64, i64* %8
  %109 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %107, i64 %108)
  %110 = extractvalue {i64, i1} %109, 1
  br i1 %110, label %119, label %113
111:
  %112 = call i8 addrspace(1)* @_bal_panic_construct(i64 3587)
  store i8 addrspace(1)* %112, i8 addrspace(1)** %12
  br label %57
113:
  %114 = extractvalue {i64, i1} %109, 0
  store i64 %114, i64* %9
  %115 = load i64, i64* %9
  store i64 %115, i64* %sum
  %116 = load i64, i64* %i
  %117 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %116, i64 1)
  %118 = extractvalue {i64, i1} %117, 1
  br i1 %118, label %124, label %121
119:
  %120 = call i8 addrspace(1)* @_bal_panic_construct(i64 3585)
  store i8 addrspace(1)* %120, i8 addrspace(1)** %12
  br label %57
121:
  %122 = extractvalue {i64, i1} %117, 0
  store i64 %122, i64* %10
  %123 = load i64, i64* %10
  store i64 %123, i64* %i
  br label %39
124:
  %125 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841)
  store i8 addrspace(1)* %125, i8 addrspace(1)** %12
  br label %57
}
