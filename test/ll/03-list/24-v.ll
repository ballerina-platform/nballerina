@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}*, i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)*) readnone
declare i64 @_Bb0m4lang5arraylength(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)*, i8 addrspace(1)*) readnone
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare {i64, i1} @_bal_float_to_int(double) nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %v = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
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
  br i1 %15, label %69, label %16
16:
  %17 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 0)
  %18 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %17 to i8 addrspace(1)*
  %19 = getelementptr i8, i8 addrspace(1)* %18, i64 1297036692682702852
  store i8 addrspace(1)* %19, i8 addrspace(1)** %1
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %20, i8 addrspace(1)** %v
  store i64 0, i64* %i
  br label %21
21:
  %22 = load i64, i64* %i
  %23 = icmp slt i64 %22, 1000000
  store i1 %23, i1* %2
  %24 = load i1, i1* %2
  br i1 %24, label %25, label %37
25:
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %27 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %26, i64 72057594037927928)
  %28 = bitcast i8 addrspace(1)* %27 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %29 = load i64, i64* %i
  %30 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %28, i64 0, i32 0
  %31 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %30, align 8
  %32 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %31, i64 0, i32 2
  %33 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %32, align 8
  %34 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %35 = call i64 %33(i8 addrspace(1)* %26, i64 %29, i8 addrspace(1)* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %71, label %75
37:
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %39 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %38, i64 72057594037927928)
  %40 = bitcast i8 addrspace(1)* %39 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %41 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %40, i64 0, i32 0
  %42 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %41, align 8
  %43 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %42, i64 0, i32 2
  %44 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %43, align 8
  %45 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1001)
  %46 = call i64 %44(i8 addrspace(1)* %38, i64 123000, i8 addrspace(1)* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %83, label %84
48:
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !8
  %50 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %49), !dbg !8
  %51 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %50), !dbg !8
  store i64 %51, i64* %5, !dbg !8
  %52 = load i64, i64* %i
  %53 = load i64, i64* %5
  %54 = icmp slt i64 %52, %53
  store i1 %54, i1* %4
  %55 = load i1, i1* %4
  br i1 %55, label %56, label %64
56:
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %58 = load i64, i64* %i
  %59 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %57, i64 72057594037927928)
  %60 = bitcast i8 addrspace(1)* %59 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %61 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %60, i64 0, i32 1
  %62 = load i64, i64 addrspace(1)* %61, align 8
  %63 = icmp ult i64 %58, %62
  br i1 %63, label %87, label %99
64:
  %65 = load i64, i64* %sum, !dbg !9
  %66 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %65), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %66), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !9
  ret void
67:
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  call void @_bal_panic(i8 addrspace(1)* %68)
  unreachable
69:
  %70 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %70)
  unreachable
71:
  %72 = load i64, i64* %i
  %73 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %72, i64 1)
  %74 = extractvalue {i64, i1} %73, 1
  br i1 %74, label %81, label %78
75:
  %76 = or i64 %35, 2048
  %77 = call i8 addrspace(1)* @_bal_panic_construct(i64 %76), !dbg !7
  store i8 addrspace(1)* %77, i8 addrspace(1)** %12
  br label %67
78:
  %79 = extractvalue {i64, i1} %73, 0
  store i64 %79, i64* %3
  %80 = load i64, i64* %3
  store i64 %80, i64* %i
  br label %21
81:
  %82 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !7
  store i8 addrspace(1)* %82, i8 addrspace(1)** %12
  br label %67
83:
  store i64 0, i64* %i
  store i64 0, i64* %sum
  br label %48
84:
  %85 = or i64 %46, 2816
  %86 = call i8 addrspace(1)* @_bal_panic_construct(i64 %85), !dbg !7
  store i8 addrspace(1)* %86, i8 addrspace(1)** %12
  br label %67
87:
  %88 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %60, i64 0, i32 0
  %89 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %88, align 8
  %90 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %89, i64 0, i32 1
  %91 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %90, align 8
  %92 = call i8 addrspace(1)* %91(i8 addrspace(1)* %57, i64 %58)
  %93 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %57, i8 addrspace(1)* %92)
  store i8 addrspace(1)* %93, i8 addrspace(1)** %6
  %94 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %95 = addrspacecast i8 addrspace(1)* %94 to i8*
  %96 = ptrtoint i8* %95 to i64
  %97 = and i64 %96, 2233785415175766016
  %98 = icmp eq i64 %97, 576460752303423488
  br i1 %98, label %107, label %111
99:
  %100 = call i8 addrspace(1)* @_bal_panic_construct(i64 3845), !dbg !7
  store i8 addrspace(1)* %100, i8 addrspace(1)** %12
  br label %67
101:
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %103 = addrspacecast i8 addrspace(1)* %102 to i8*
  %104 = ptrtoint i8* %103 to i64
  %105 = and i64 %104, 2233785415175766016
  %106 = icmp eq i64 %105, 504403158265495552
  br i1 %106, label %117, label %123
107:
  %108 = call double @_bal_tagged_to_float(i8 addrspace(1)* %94)
  %109 = call {i64, i1} @_bal_float_to_int(double %108)
  %110 = extractvalue {i64, i1} %109, 1
  br i1 %110, label %115, label %112
111:
  store i8 addrspace(1)* %94, i8 addrspace(1)** %7
  br label %101
112:
  %113 = extractvalue {i64, i1} %109, 0
  %114 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %113)
  store i8 addrspace(1)* %114, i8 addrspace(1)** %7
  br label %101
115:
  %116 = call i8 addrspace(1)* @_bal_panic_construct(i64 3843), !dbg !7
  store i8 addrspace(1)* %116, i8 addrspace(1)** %12
  br label %67
117:
  %118 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %102)
  store i64 %118, i64* %8
  %119 = load i64, i64* %sum
  %120 = load i64, i64* %8
  %121 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %119, i64 %120)
  %122 = extractvalue {i64, i1} %121, 1
  br i1 %122, label %131, label %125
123:
  %124 = call i8 addrspace(1)* @_bal_panic_construct(i64 3843), !dbg !7
  store i8 addrspace(1)* %124, i8 addrspace(1)** %12
  br label %67
125:
  %126 = extractvalue {i64, i1} %121, 0
  store i64 %126, i64* %9
  %127 = load i64, i64* %9
  store i64 %127, i64* %sum
  %128 = load i64, i64* %i
  %129 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %128, i64 1)
  %130 = extractvalue {i64, i1} %129, 1
  br i1 %130, label %136, label %133
131:
  %132 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841), !dbg !7
  store i8 addrspace(1)* %132, i8 addrspace(1)** %12
  br label %67
133:
  %134 = extractvalue {i64, i1} %129, 0
  store i64 %134, i64* %10
  %135 = load i64, i64* %10
  store i64 %135, i64* %i
  br label %48
136:
  %137 = call i8 addrspace(1)* @_bal_panic_construct(i64 4097), !dbg !7
  store i8 addrspace(1)* %137, i8 addrspace(1)** %12
  br label %67
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/24-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 14, column: 16, scope: !5)
!9 = !DILocation(line: 18, column: 4, scope: !5)
