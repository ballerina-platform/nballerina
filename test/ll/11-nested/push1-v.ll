@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}*, i64)
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bb0m4lang5arraypush(i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)*, i8 addrspace(1)*) readnone
declare i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)*, i64) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare i64 @_bal_mapping_indexed_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare zeroext i1 @_bal_float_eq(double, double) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %v = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %i.1 = alloca i64
  %5 = alloca i1
  %c = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca double
  %8 = alloca double
  %9 = alloca double
  %10 = alloca double
  %11 = alloca double
  %12 = alloca double
  %total1 = alloca double
  %total2 = alloca double
  %i.2 = alloca i64
  %13 = alloca i1
  %c.1 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca double
  %16 = alloca double
  %17 = alloca double
  %18 = alloca double
  %19 = alloca double
  %20 = alloca double
  %21 = alloca double
  %22 = alloca i1
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i8
  %26 = load i8*, i8** @_bal_stack_guard
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %88, label %28
28:
  %29 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 0)
  %30 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %29 to i8 addrspace(1)*
  %31 = getelementptr i8, i8 addrspace(1)* %30, i64 1297036692682702852
  store i8 addrspace(1)* %31, i8 addrspace(1)** %1
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %32, i8 addrspace(1)** %v
  store i64 0, i64* %i
  br label %33
33:
  %34 = load i64, i64* %i
  %35 = icmp slt i64 %34, 10
  store i1 %35, i1* %2
  %36 = load i1, i1* %2
  br i1 %36, label %38, label %37
37:
  store i64 0, i64* %i.1
  br label %47
38:
  %39 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root1, i64 2)
  %40 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.0)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %39, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %40)
  %41 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.0)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %39, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %41)
  store i8 addrspace(1)* %39, i8 addrspace(1)** %3
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !8
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !8
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %42, i8 addrspace(1)* %43), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !8
  br label %44
44:
  %45 = load i64, i64* %i
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %i
  br label %33
47:
  %48 = load i64, i64* %i.1
  %49 = icmp slt i64 %48, 10
  store i1 %49, i1* %5
  %50 = load i1, i1* %5
  br i1 %50, label %52, label %51
51:
  store double 0.0, double* %total1
  store double 0.0, double* %total2
  store i64 0, i64* %i.2
  br label %63
52:
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %54 = load i64, i64* %i.1
  %55 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %53, i64 72057594037927928)
  %56 = bitcast i8 addrspace(1)* %55 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %57 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %56, i64 0, i32 1
  %58 = load i64, i64 addrspace(1)* %57, align 8
  %59 = icmp ult i64 %54, %58
  br i1 %59, label %90, label %111
60:
  %61 = load i64, i64* %i.1
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %i.1
  br label %47
63:
  %64 = load i64, i64* %i.2
  %65 = icmp slt i64 %64, 10
  store i1 %65, i1* %13
  %66 = load i1, i1* %13
  br i1 %66, label %75, label %67
67:
  %68 = load double, double* %total1
  %69 = load double, double* %total2
  %70 = call i1 @_bal_float_eq(double %68, double %69)
  store i1 %70, i1* %22
  %71 = load i1, i1* %22, !dbg !9
  %72 = zext i1 %71 to i64, !dbg !9
  %73 = or i64 %72, 72057594037927936, !dbg !9
  %74 = getelementptr i8, i8 addrspace(1)* null, i64 %73, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %74), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !9
  ret void
75:
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %77 = load i64, i64* %i.2
  %78 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %76, i64 72057594037927928)
  %79 = bitcast i8 addrspace(1)* %78 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)*
  %80 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %79, i64 0, i32 1
  %81 = load i64, i64 addrspace(1)* %80, align 8
  %82 = icmp ult i64 %77, %81
  br i1 %82, label %134, label %163
83:
  %84 = load i64, i64* %i.2
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %i.2
  br label %63
86:
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %24
  call void @_bal_panic(i8 addrspace(1)* %87)
  unreachable
88:
  %89 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %89)
  unreachable
90:
  %91 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %56, i64 0, i32 0
  %92 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %91, align 8
  %93 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %92, i64 0, i32 1
  %94 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %93, align 8
  %95 = call i8 addrspace(1)* %94(i8 addrspace(1)* %53, i64 %54)
  %96 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %53, i8 addrspace(1)* %95)
  store i8 addrspace(1)* %96, i8 addrspace(1)** %6
  %97 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %97, i8 addrspace(1)** %c
  %98 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %99 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %98, i64 0)
  %100 = call double @_bal_tagged_to_float(i8 addrspace(1)* %99)
  store double %100, double* %7
  %101 = load i64, i64* %i.1
  %102 = sitofp i64 %101 to double
  store double %102, double* %8
  %103 = load double, double* %7
  %104 = load double, double* %8
  %105 = fmul double %103, %104
  store double %105, double* %9
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %107 = load double, double* %9
  %108 = call i8 addrspace(1)* @_bal_float_to_tagged(double %107)
  %109 = call i64 @_bal_mapping_indexed_set(i8 addrspace(1)* %106, i64 0, i8 addrspace(1)* %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %113, label %127
111:
  %112 = call i8 addrspace(1)* @_bal_panic_construct(i64 3845), !dbg !7
  store i8 addrspace(1)* %112, i8 addrspace(1)** %24
  br label %86
113:
  %114 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %115 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %114, i64 1)
  %116 = call double @_bal_tagged_to_float(i8 addrspace(1)* %115)
  store double %116, double* %10
  %117 = load i64, i64* %i.1
  %118 = sitofp i64 %117 to double
  store double %118, double* %11
  %119 = load double, double* %10
  %120 = load double, double* %11
  %121 = fmul double %119, %120
  store double %121, double* %12
  %122 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %123 = load double, double* %12
  %124 = call i8 addrspace(1)* @_bal_float_to_tagged(double %123)
  %125 = call i64 @_bal_mapping_indexed_set(i8 addrspace(1)* %122, i64 1, i8 addrspace(1)* %124)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %130, label %131
127:
  %128 = or i64 %109, 4096
  %129 = call i8 addrspace(1)* @_bal_panic_construct(i64 %128), !dbg !7
  store i8 addrspace(1)* %129, i8 addrspace(1)** %24
  br label %86
130:
  br label %60
131:
  %132 = or i64 %125, 4352
  %133 = call i8 addrspace(1)* @_bal_panic_construct(i64 %132), !dbg !7
  store i8 addrspace(1)* %133, i8 addrspace(1)** %24
  br label %86
134:
  %135 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %79, i64 0, i32 0
  %136 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* addrspace(1)* %135, align 8
  %137 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}* %136, i64 0, i32 1
  %138 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %137, align 8
  %139 = call i8 addrspace(1)* %138(i8 addrspace(1)* %76, i64 %77)
  %140 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %76, i8 addrspace(1)* %139)
  store i8 addrspace(1)* %140, i8 addrspace(1)** %14
  %141 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  store i8 addrspace(1)* %141, i8 addrspace(1)** %c.1
  %142 = load i8 addrspace(1)*, i8 addrspace(1)** %c.1
  %143 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %142, i64 0)
  %144 = call double @_bal_tagged_to_float(i8 addrspace(1)* %143)
  store double %144, double* %15
  %145 = load i8 addrspace(1)*, i8 addrspace(1)** %c.1
  %146 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %145, i64 1)
  %147 = call double @_bal_tagged_to_float(i8 addrspace(1)* %146)
  store double %147, double* %16
  %148 = load double, double* %15
  %149 = load double, double* %16
  %150 = fadd double %148, %149
  store double %150, double* %17
  %151 = load double, double* %total1
  %152 = load double, double* %17
  %153 = fadd double %151, %152
  store double %153, double* %18
  %154 = load double, double* %18
  store double %154, double* %total1
  %155 = load i64, i64* %i.2
  %156 = sitofp i64 %155 to double
  store double %156, double* %19
  %157 = load double, double* %19
  %158 = fmul double 3.0, %157
  store double %158, double* %20
  %159 = load double, double* %total2
  %160 = load double, double* %20
  %161 = fadd double %159, %160
  store double %161, double* %21
  %162 = load double, double* %21
  store double %162, double* %total2
  br label %83
163:
  %164 = call i8 addrspace(1)* @_bal_panic_construct(i64 5637), !dbg !7
  store i8 addrspace(1)* %164, i8 addrspace(1)** %24
  br label %86
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/push1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 12, column: 10, scope: !5)
!9 = !DILocation(line: 26, column: 4, scope: !5)
