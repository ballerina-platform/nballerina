@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i64 @_Barray__length(i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
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
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i8
  %13 = load i8*, i8** @_bal_stack_guard
  %14 = icmp ult i8* %12, %13
  br i1 %14, label %58, label %15
15:
  %16 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %17 = bitcast i8 addrspace(1)* %16 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %18 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %17, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %18
  %19 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %17, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %19
  %20 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %17, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %20
  %21 = getelementptr i8, i8 addrspace(1)* %16, i64 1297036692682702848
  store i8 addrspace(1)* %21, i8 addrspace(1)** %1
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %22, i8 addrspace(1)** %v
  store i64 0, i64* %i
  br label %23
23:
  %24 = load i64, i64* %i
  %25 = icmp slt i64 %24, 1000000
  store i1 %25, i1* %2
  %26 = load i1, i1* %2
  br i1 %26, label %27, label %33
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %29 = load i64, i64* %i
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %31 = call i64 @_bal_list_set(i8 addrspace(1)* %28, i64 %29, i8 addrspace(1)* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %59, label %63
33:
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1001)
  %36 = call i64 @_bal_list_set(i8 addrspace(1)* %34, i64 123000, i8 addrspace(1)* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %69, label %70
38:
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %40 = call i64 @_Barray__length(i8 addrspace(1)* %39)
  store i64 %40, i64* %5
  %41 = load i64, i64* %i
  %42 = load i64, i64* %5
  %43 = icmp slt i64 %41, %42
  store i1 %43, i1* %4
  %44 = load i1, i1* %4
  br i1 %44, label %45, label %53
45:
  %46 = load i64, i64* %i
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %48 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %47, i64 72057594037927935)
  %49 = bitcast i8 addrspace(1)* %48 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %50 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %49, i64 0, i32 0
  %51 = load i64, i64 addrspace(1)* %50, align 8
  %52 = icmp ult i64 %46, %51
  br i1 %52, label %72, label %82
53:
  %54 = load i64, i64* %sum
  %55 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %54)
  call void @_Bio__println(i8 addrspace(1)* %55)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  ret void
56:
  %57 = load i64, i64* %11
  call void @_bal_panic(i64 %57)
  unreachable
58:
  call void @_bal_panic(i64 772)
  unreachable
59:
  %60 = load i64, i64* %i
  %61 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %60, i64 1)
  %62 = extractvalue {i64, i1} %61, 1
  br i1 %62, label %68, label %65
63:
  %64 = or i64 %31, 1792
  store i64 %64, i64* %11
  br label %56
65:
  %66 = extractvalue {i64, i1} %61, 0
  store i64 %66, i64* %3
  %67 = load i64, i64* %3
  store i64 %67, i64* %i
  br label %23
68:
  store i64 2049, i64* %11
  br label %56
69:
  store i64 0, i64* %i
  store i64 0, i64* %sum
  br label %38
70:
  %71 = or i64 %36, 2560
  store i64 %71, i64* %11
  br label %56
72:
  %73 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %49, i64 0, i32 2
  %74 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %73, align 8
  %75 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %74, i64 0, i64 %46
  %76 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %75, align 8
  store i8 addrspace(1)* %76, i8 addrspace(1)** %6
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %78 = addrspacecast i8 addrspace(1)* %77 to i8*
  %79 = ptrtoint i8* %78 to i64
  %80 = and i64 %79, 2233785415175766016
  %81 = icmp eq i64 %80, 504403158265495552
  br i1 %81, label %83, label %89
82:
  store i64 3589, i64* %11
  br label %56
83:
  %84 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %77)
  store i64 %84, i64* %7
  %85 = load i64, i64* %sum
  %86 = load i64, i64* %7
  %87 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %85, i64 %86)
  %88 = extractvalue {i64, i1} %87, 1
  br i1 %88, label %96, label %90
89:
  store i64 3587, i64* %11
  br label %56
90:
  %91 = extractvalue {i64, i1} %87, 0
  store i64 %91, i64* %8
  %92 = load i64, i64* %8
  store i64 %92, i64* %sum
  %93 = load i64, i64* %i
  %94 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %93, i64 1)
  %95 = extractvalue {i64, i1} %94, 1
  br i1 %95, label %100, label %97
96:
  store i64 3585, i64* %11
  br label %56
97:
  %98 = extractvalue {i64, i1} %94, 0
  store i64 %98, i64* %9
  %99 = load i64, i64* %9
  store i64 %99, i64* %i
  br label %38
100:
  store i64 3841, i64* %11
  br label %56
}
