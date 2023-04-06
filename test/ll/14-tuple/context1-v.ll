@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 3, i64 2452209997103235072], align 8
@_Bi04root1 = external constant {i32}
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 5, i64 2452139628359057408], align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {ptr addrspace(1), i64} @_bal_decimal_add(ptr addrspace(1), ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %nums = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %n = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %f = alloca double
  %9 = alloca double
  %10 = alloca double
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %d = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca i8
  %19 = load ptr, ptr @_bal_stack_guard
  %20 = icmp ult ptr %18, %19
  br i1 %20, label %55, label %21
21:
  %22 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 5), !dbg !9
  %23 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %22, i64 0, i32 3
  %24 = load ptr addrspace(1), ptr addrspace(1) %23, align 8
  %25 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %26 = and i64 72057594037927935, 1
  %27 = or i64 2449958197289549824, %26
  %28 = getelementptr i8, ptr addrspace(1) null, i64 %27
  %29 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %25, i64 0, i64 0
  store ptr addrspace(1) %28, ptr addrspace(1) %29
  %30 = call ptr addrspace(1) @_bal_float_to_tagged(double 2.0), !dbg !10
  %31 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %25, i64 0, i64 1
  store ptr addrspace(1) %30, ptr addrspace(1) %31
  %32 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %33 = getelementptr i8, ptr addrspace(1) %32, i64 288230376151711744
  %34 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %25, i64 0, i64 2
  store ptr addrspace(1) %33, ptr addrspace(1) %34
  %35 = and i64 72057594037927935, 4
  %36 = or i64 2449958197289549824, %35
  %37 = getelementptr i8, ptr addrspace(1) null, i64 %36
  %38 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %25, i64 0, i64 3
  store ptr addrspace(1) %37, ptr addrspace(1) %38
  %39 = and i64 72057594037927935, 5
  %40 = or i64 2449958197289549824, %39
  %41 = getelementptr i8, ptr addrspace(1) null, i64 %40
  %42 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %25, i64 0, i64 4
  store ptr addrspace(1) %41, ptr addrspace(1) %42
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %22, i64 0, i32 1
  store i64 5, ptr addrspace(1) %43
  %44 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %45 = getelementptr i8, ptr addrspace(1) %44, i64 864691128455135236
  store ptr addrspace(1) %45, ptr %1
  %46 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %46, ptr %nums
  %47 = load ptr addrspace(1), ptr %nums
  %48 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %47, i64 72057594037927928)
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %49, i64 0, i32 1
  %51 = load i64, ptr addrspace(1) %50, align 8
  %52 = icmp ult i64 0, %51
  br i1 %52, label %57, label %69
53:
  %54 = load ptr addrspace(1), ptr %17
  call void @_bal_panic(ptr addrspace(1) %54), !dbg !20
  unreachable
55:
  %56 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %56), !dbg !8
  unreachable
57:
  %58 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %49, i64 0, i32 0
  %59 = load ptr, ptr addrspace(1) %58, align 8
  %60 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %59, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8
  %62 = call i64 %61(ptr addrspace(1) %47, i64 0)
  store i64 %62, ptr %2
  %63 = load ptr addrspace(1), ptr %nums
  %64 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %63, i64 72057594037927928)
  %65 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %66 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 1
  %67 = load i64, ptr addrspace(1) %66, align 8
  %68 = icmp ult i64 3, %67
  br i1 %68, label %71, label %81
69:
  %70 = call ptr addrspace(1) @_bal_panic_construct(i64 1797), !dbg !7
  store ptr addrspace(1) %70, ptr %17
  br label %53
71:
  %72 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 0
  %73 = load ptr, ptr addrspace(1) %72, align 8
  %74 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %73, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8
  %76 = call i64 %75(ptr addrspace(1) %63, i64 3)
  store i64 %76, ptr %3
  %77 = load i64, ptr %2
  %78 = load i64, ptr %3
  %79 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %77, i64 %78)
  %80 = extractvalue {i64, i1} %79, 1
  br i1 %80, label %91, label %83
81:
  %82 = call ptr addrspace(1) @_bal_panic_construct(i64 1797), !dbg !7
  store ptr addrspace(1) %82, ptr %17
  br label %53
83:
  %84 = extractvalue {i64, i1} %79, 0
  store i64 %84, ptr %4
  %85 = load ptr addrspace(1), ptr %nums
  %86 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %85, i64 72057594037927928)
  %87 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %88 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 1
  %89 = load i64, ptr addrspace(1) %88, align 8
  %90 = icmp ult i64 4, %89
  br i1 %90, label %93, label %103
91:
  %92 = call ptr addrspace(1) @_bal_panic_construct(i64 1793), !dbg !7
  store ptr addrspace(1) %92, ptr %17
  br label %53
93:
  %94 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 0
  %95 = load ptr, ptr addrspace(1) %94, align 8
  %96 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %95, i64 0, i32 6
  %97 = load ptr, ptr %96, align 8
  %98 = call i64 %97(ptr addrspace(1) %85, i64 4)
  store i64 %98, ptr %5
  %99 = load i64, ptr %4
  %100 = load i64, ptr %5
  %101 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %99, i64 %100)
  %102 = extractvalue {i64, i1} %101, 1
  br i1 %102, label %125, label %105
103:
  %104 = call ptr addrspace(1) @_bal_panic_construct(i64 1797), !dbg !7
  store ptr addrspace(1) %104, ptr %17
  br label %53
105:
  %106 = extractvalue {i64, i1} %101, 0
  store i64 %106, ptr %6
  %107 = load i64, ptr %6
  store i64 %107, ptr %n
  %108 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !11
  %109 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 3
  %110 = load ptr addrspace(1), ptr addrspace(1) %109, align 8
  %111 = bitcast ptr addrspace(1) %110 to ptr addrspace(1)
  %112 = load i64, ptr %n
  %113 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %112), !dbg !12
  %114 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %111, i64 0, i64 0
  store ptr addrspace(1) %113, ptr addrspace(1) %114
  %115 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 1
  store i64 1, ptr addrspace(1) %115
  %116 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %117 = getelementptr i8, ptr addrspace(1) %116, i64 864691128455135236
  store ptr addrspace(1) %117, ptr %7
  %118 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %118), !dbg !13
  store ptr addrspace(1) null, ptr %8
  %119 = load ptr addrspace(1), ptr %nums
  %120 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %119, i64 72057594037927928)
  %121 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %122 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %121, i64 0, i32 1
  %123 = load i64, ptr addrspace(1) %122, align 8
  %124 = icmp ult i64 1, %123
  br i1 %124, label %127, label %153
125:
  %126 = call ptr addrspace(1) @_bal_panic_construct(i64 1793), !dbg !7
  store ptr addrspace(1) %126, ptr %17
  br label %53
127:
  %128 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %121, i64 0, i32 0
  %129 = load ptr, ptr addrspace(1) %128, align 8
  %130 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %129, i64 0, i32 9
  %131 = load ptr, ptr %130, align 8
  %132 = call double %131(ptr addrspace(1) %119, i64 1)
  store double %132, ptr %9
  %133 = load double, ptr %9
  %134 = fadd double %133, 0.5
  store double %134, ptr %10
  %135 = load double, ptr %10
  store double %135, ptr %f
  %136 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !14
  %137 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %136, i64 0, i32 3
  %138 = load ptr addrspace(1), ptr addrspace(1) %137, align 8
  %139 = bitcast ptr addrspace(1) %138 to ptr addrspace(1)
  %140 = load double, ptr %f
  %141 = call ptr addrspace(1) @_bal_float_to_tagged(double %140), !dbg !15
  %142 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %139, i64 0, i64 0
  store ptr addrspace(1) %141, ptr addrspace(1) %142
  %143 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %136, i64 0, i32 1
  store i64 1, ptr addrspace(1) %143
  %144 = bitcast ptr addrspace(1) %136 to ptr addrspace(1)
  %145 = getelementptr i8, ptr addrspace(1) %144, i64 864691128455135236
  store ptr addrspace(1) %145, ptr %11
  %146 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %146), !dbg !16
  store ptr addrspace(1) null, ptr %12
  %147 = load ptr addrspace(1), ptr %nums
  %148 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %147, i64 72057594037927928)
  %149 = bitcast ptr addrspace(1) %148 to ptr addrspace(1)
  %150 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %149, i64 0, i32 1
  %151 = load i64, ptr addrspace(1) %150, align 8
  %152 = icmp ult i64 2, %151
  br i1 %152, label %155, label %167
153:
  %154 = call ptr addrspace(1) @_bal_panic_construct(i64 2309), !dbg !7
  store ptr addrspace(1) %154, ptr %17
  br label %53
155:
  %156 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %149, i64 0, i32 0
  %157 = load ptr, ptr addrspace(1) %156, align 8
  %158 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %157, i64 0, i32 3
  %159 = load ptr, ptr %158, align 8
  %160 = call ptr addrspace(1) %159(ptr addrspace(1) %147, i64 2)
  store ptr addrspace(1) %160, ptr %13
  %161 = load ptr addrspace(1), ptr %13
  %162 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %163 = getelementptr i8, ptr addrspace(1) %162, i64 288230376151711744
  %164 = call {ptr addrspace(1), i64} @_bal_decimal_add(ptr addrspace(1) %161, ptr addrspace(1) %163), !dbg !17
  %165 = extractvalue {ptr addrspace(1), i64} %164, 1
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %182, label %169
167:
  %168 = call ptr addrspace(1) @_bal_panic_construct(i64 2821), !dbg !7
  store ptr addrspace(1) %168, ptr %17
  br label %53
169:
  %170 = extractvalue {ptr addrspace(1), i64} %164, 0
  store ptr addrspace(1) %170, ptr %14
  %171 = load ptr addrspace(1), ptr %14
  store ptr addrspace(1) %171, ptr %d
  %172 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %173 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %172, i64 0, i32 3
  %174 = load ptr addrspace(1), ptr addrspace(1) %173, align 8
  %175 = bitcast ptr addrspace(1) %174 to ptr addrspace(1)
  %176 = load ptr addrspace(1), ptr %d
  %177 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %175, i64 0, i64 0
  store ptr addrspace(1) %176, ptr addrspace(1) %177
  %178 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %172, i64 0, i32 1
  store i64 1, ptr addrspace(1) %178
  %179 = bitcast ptr addrspace(1) %172 to ptr addrspace(1)
  %180 = getelementptr i8, ptr addrspace(1) %179, i64 864691128455135236
  store ptr addrspace(1) %180, ptr %15
  %181 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %181), !dbg !19
  store ptr addrspace(1) null, ptr %16
  ret void
182:
  %183 = or i64 %165, 2816
  %184 = call ptr addrspace(1) @_bal_panic_construct(i64 %183), !dbg !7
  store ptr addrspace(1) %184, ptr %17
  br label %53
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-tuple/context1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 19, scope: !5)
!10 = !DILocation(line: 6, column: 19, scope: !5)
!11 = !DILocation(line: 8, column: 15, scope: !5)
!12 = !DILocation(line: 8, column: 15, scope: !5)
!13 = !DILocation(line: 8, column: 4, scope: !5)
!14 = !DILocation(line: 10, column: 15, scope: !5)
!15 = !DILocation(line: 10, column: 15, scope: !5)
!16 = !DILocation(line: 10, column: 4, scope: !5)
!17 = !DILocation(line: 11, column: 24, scope: !5)
!18 = !DILocation(line: 12, column: 15, scope: !5)
!19 = !DILocation(line: 12, column: 4, scope: !5)
!20 = !DILocation(line: 13, column: 0, scope: !5)
