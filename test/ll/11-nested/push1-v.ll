@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare zeroext i1 @_bal_float_eq(double, double) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare i64 @_bal_mapping_indexed_set(ptr addrspace(1), i64, ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare void @_Bb0m4lang5arraypush(ptr addrspace(1), ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i64
  %i.1 = alloca i64
  %6 = alloca i1
  %c = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca double
  %9 = alloca double
  %10 = alloca double
  %11 = alloca double
  %12 = alloca double
  %13 = alloca double
  %14 = alloca i64
  %total1 = alloca double
  %total2 = alloca double
  %i.2 = alloca i64
  %15 = alloca i1
  %c.1 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca double
  %18 = alloca double
  %19 = alloca double
  %20 = alloca double
  %21 = alloca double
  %22 = alloca double
  %23 = alloca double
  %24 = alloca i64
  %25 = alloca i1
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca ptr addrspace(1)
  %29 = alloca i8
  %30 = load ptr, ptr @_bal_stack_guard
  %31 = icmp ult ptr %29, %30
  br i1 %31, label %104, label %32
32:
  %33 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 864691128455135236
  store ptr addrspace(1) %35, ptr %1
  %36 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %36, ptr %v
  store i64 0, ptr %i
  br label %37
37:
  %38 = load i64, ptr %i
  %39 = icmp slt i64 %38, 10
  store i1 %39, ptr %2
  %40 = load i1, ptr %2
  br i1 %40, label %42, label %41
41:
  store i64 0, ptr %i.1
  br label %52
42:
  %43 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root2, i64 2), !dbg !28
  %44 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.0), !dbg !29
  call void @_bal_mapping_init_member(ptr addrspace(1) %43, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %44), !dbg !30
  %45 = call ptr addrspace(1) @_bal_float_to_tagged(double 2.0), !dbg !31
  call void @_bal_mapping_init_member(ptr addrspace(1) %43, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %45), !dbg !32
  store ptr addrspace(1) %43, ptr %3
  %46 = load ptr addrspace(1), ptr %v
  %47 = load ptr addrspace(1), ptr %3
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %46, ptr addrspace(1) %47), !dbg !33
  store ptr addrspace(1) null, ptr %4
  br label %48
48:
  %49 = load i64, ptr %i
  %50 = add nsw i64 %49, 1
  store i64 %50, ptr %5
  %51 = load i64, ptr %5
  store i64 %51, ptr %i
  br label %37
52:
  %53 = load i64, ptr %i.1
  %54 = icmp slt i64 %53, 10
  store i1 %54, ptr %6
  %55 = load i1, ptr %6
  br i1 %55, label %57, label %56
56:
  store double 0.0, ptr %total1
  store double 0.0, ptr %total2
  store i64 0, ptr %i.2
  br label %69
57:
  %58 = load ptr addrspace(1), ptr %v
  %59 = load i64, ptr %i.1
  %60 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %58, i64 72057594037927928)
  %61 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %62 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 1
  %63 = load i64, ptr addrspace(1) %62, align 8
  %64 = icmp ult i64 %59, %63
  br i1 %64, label %137, label %158
65:
  %66 = load i64, ptr %i.1
  %67 = add nsw i64 %66, 1
  store i64 %67, ptr %14
  %68 = load i64, ptr %14
  store i64 %68, ptr %i.1
  br label %52
69:
  %70 = load i64, ptr %i.2
  %71 = icmp slt i64 %70, 10
  store i1 %71, ptr %15
  %72 = load i1, ptr %15
  br i1 %72, label %90, label %73
73:
  %74 = load double, ptr %total1
  %75 = load double, ptr %total2
  %76 = call i1 @_bal_float_eq(double %74, double %75), !dbg !10
  store i1 %76, ptr %25
  %77 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !11
  %78 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %77, i64 0, i32 3
  %79 = load ptr addrspace(1), ptr addrspace(1) %78, align 8
  %80 = bitcast ptr addrspace(1) %79 to ptr addrspace(1)
  %81 = load i1, ptr %25
  %82 = zext i1 %81 to i64
  %83 = or i64 %82, 72057594037927936
  %84 = getelementptr i8, ptr addrspace(1) null, i64 %83
  %85 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %80, i64 0, i64 0
  store ptr addrspace(1) %84, ptr addrspace(1) %85
  %86 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %77, i64 0, i32 1
  store i64 1, ptr addrspace(1) %86
  %87 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %88 = getelementptr i8, ptr addrspace(1) %87, i64 864691128455135236
  store ptr addrspace(1) %88, ptr %26
  %89 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %89), !dbg !12
  store ptr addrspace(1) null, ptr %27
  ret void
90:
  %91 = load ptr addrspace(1), ptr %v
  %92 = load i64, ptr %i.2
  %93 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %91, i64 72057594037927928)
  %94 = bitcast ptr addrspace(1) %93 to ptr addrspace(1)
  %95 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %94, i64 0, i32 1
  %96 = load i64, ptr addrspace(1) %95, align 8
  %97 = icmp ult i64 %92, %96
  br i1 %97, label %106, label %135
98:
  %99 = load i64, ptr %i.2
  %100 = add nsw i64 %99, 1
  store i64 %100, ptr %24
  %101 = load i64, ptr %24
  store i64 %101, ptr %i.2
  br label %69
102:
  %103 = load ptr addrspace(1), ptr %28
  call void @_bal_panic(ptr addrspace(1) %103), !dbg !27
  unreachable
104:
  %105 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %105), !dbg !8
  unreachable
106:
  %107 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %94, i64 0, i32 0
  %108 = load ptr, ptr addrspace(1) %107, align 8
  %109 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %108, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8
  %111 = call ptr addrspace(1) %110(ptr addrspace(1) %91, i64 %92)
  %112 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %91, ptr addrspace(1) %111), !dbg !13
  store ptr addrspace(1) %112, ptr %16
  %113 = load ptr addrspace(1), ptr %16
  store ptr addrspace(1) %113, ptr %c.1
  %114 = load ptr addrspace(1), ptr %c.1
  %115 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %114, i64 0), !dbg !14
  %116 = call double @_bal_tagged_to_float(ptr addrspace(1) %115), !dbg !15
  store double %116, ptr %17
  %117 = load ptr addrspace(1), ptr %c.1
  %118 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %117, i64 1), !dbg !16
  %119 = call double @_bal_tagged_to_float(ptr addrspace(1) %118), !dbg !17
  store double %119, ptr %18
  %120 = load double, ptr %17
  %121 = load double, ptr %18
  %122 = fadd double %120, %121
  store double %122, ptr %19
  %123 = load double, ptr %total1
  %124 = load double, ptr %19
  %125 = fadd double %123, %124
  store double %125, ptr %20
  %126 = load double, ptr %20
  store double %126, ptr %total1
  %127 = load i64, ptr %i.2
  %128 = sitofp i64 %127 to double
  store double %128, ptr %21
  %129 = load double, ptr %21
  %130 = fmul double 3.0, %129
  store double %130, ptr %22
  %131 = load double, ptr %total2
  %132 = load double, ptr %22
  %133 = fadd double %131, %132
  store double %133, ptr %23
  %134 = load double, ptr %23
  store double %134, ptr %total2
  br label %98
135:
  %136 = call ptr addrspace(1) @_bal_panic_construct(i64 5637), !dbg !7
  store ptr addrspace(1) %136, ptr %28
  br label %102
137:
  %138 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 0
  %139 = load ptr, ptr addrspace(1) %138, align 8
  %140 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %139, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8
  %142 = call ptr addrspace(1) %141(ptr addrspace(1) %58, i64 %59)
  %143 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %58, ptr addrspace(1) %142), !dbg !18
  store ptr addrspace(1) %143, ptr %7
  %144 = load ptr addrspace(1), ptr %7
  store ptr addrspace(1) %144, ptr %c
  %145 = load ptr addrspace(1), ptr %c
  %146 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %145, i64 0), !dbg !19
  %147 = call double @_bal_tagged_to_float(ptr addrspace(1) %146), !dbg !20
  store double %147, ptr %8
  %148 = load i64, ptr %i.1
  %149 = sitofp i64 %148 to double
  store double %149, ptr %9
  %150 = load double, ptr %8
  %151 = load double, ptr %9
  %152 = fmul double %150, %151
  store double %152, ptr %10
  %153 = load ptr addrspace(1), ptr %c
  %154 = load double, ptr %10
  %155 = call ptr addrspace(1) @_bal_float_to_tagged(double %154), !dbg !21
  %156 = call i64 @_bal_mapping_indexed_set(ptr addrspace(1) %153, i64 0, ptr addrspace(1) %155), !dbg !22
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %160, label %174
158:
  %159 = call ptr addrspace(1) @_bal_panic_construct(i64 3845), !dbg !7
  store ptr addrspace(1) %159, ptr %28
  br label %102
160:
  %161 = load ptr addrspace(1), ptr %c
  %162 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %161, i64 1), !dbg !23
  %163 = call double @_bal_tagged_to_float(ptr addrspace(1) %162), !dbg !24
  store double %163, ptr %11
  %164 = load i64, ptr %i.1
  %165 = sitofp i64 %164 to double
  store double %165, ptr %12
  %166 = load double, ptr %11
  %167 = load double, ptr %12
  %168 = fmul double %166, %167
  store double %168, ptr %13
  %169 = load ptr addrspace(1), ptr %c
  %170 = load double, ptr %13
  %171 = call ptr addrspace(1) @_bal_float_to_tagged(double %170), !dbg !25
  %172 = call i64 @_bal_mapping_indexed_set(ptr addrspace(1) %169, i64 1, ptr addrspace(1) %171), !dbg !26
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %177, label %178
174:
  %175 = or i64 %156, 4096
  %176 = call ptr addrspace(1) @_bal_panic_construct(i64 %175), !dbg !7
  store ptr addrspace(1) %176, ptr %28
  br label %102
177:
  br label %65
178:
  %179 = or i64 %172, 4352
  %180 = call ptr addrspace(1) @_bal_panic_construct(i64 %179), !dbg !7
  store ptr addrspace(1) %180, ptr %28
  br label %102
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
!8 = !DILocation(line: 9, column: 16, scope: !5)
!9 = !DILocation(line: 10, column: 12, scope: !5)
!10 = !DILocation(line: 26, column: 22, scope: !5)
!11 = !DILocation(line: 26, column: 15, scope: !5)
!12 = !DILocation(line: 26, column: 4, scope: !5)
!13 = !DILocation(line: 22, column: 15, scope: !5)
!14 = !DILocation(line: 23, column: 19, scope: !5)
!15 = !DILocation(line: 23, column: 19, scope: !5)
!16 = !DILocation(line: 23, column: 25, scope: !5)
!17 = !DILocation(line: 23, column: 25, scope: !5)
!18 = !DILocation(line: 15, column: 15, scope: !5)
!19 = !DILocation(line: 16, column: 12, scope: !5)
!20 = !DILocation(line: 16, column: 12, scope: !5)
!21 = !DILocation(line: 16, column: 9, scope: !5)
!22 = !DILocation(line: 16, column: 9, scope: !5)
!23 = !DILocation(line: 17, column: 12, scope: !5)
!24 = !DILocation(line: 17, column: 12, scope: !5)
!25 = !DILocation(line: 17, column: 9, scope: !5)
!26 = !DILocation(line: 17, column: 9, scope: !5)
!27 = !DILocation(line: 27, column: 0, scope: !5)
!28 = !DILocation(line: 12, column: 15, scope: !5)
!29 = !DILocation(line: 12, column: 15, scope: !5)
!30 = !DILocation(line: 12, column: 15, scope: !5)
!31 = !DILocation(line: 12, column: 15, scope: !5)
!32 = !DILocation(line: 12, column: 15, scope: !5)
!33 = !DILocation(line: 12, column: 10, scope: !5)
