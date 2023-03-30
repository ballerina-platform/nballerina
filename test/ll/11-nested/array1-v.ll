@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i64 @_Bb0m4lang5arraylength(ptr addrspace(1))
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
define void @_B04rootmain() !dbg !5 {
  %vv = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %total = alloca double
  %6 = alloca i64
  %i = alloca i64
  %7 = alloca i1
  %v = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i64
  %j = alloca i64
  %10 = alloca i1
  %11 = alloca double
  %12 = alloca double
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca i8
  %19 = load ptr, ptr @_bal_stack_guard
  %20 = icmp ult ptr %18, %19
  br i1 %20, label %121, label %21
21:
  %22 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !9
  %23 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %22, i64 0, i32 3
  %24 = load ptr addrspace(1), ptr addrspace(1) %23, align 8
  %25 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %26 = getelementptr inbounds [0 x double], ptr addrspace(1) %25, i64 0, i64 0
  store double 1.0, ptr addrspace(1) %26
  %27 = getelementptr inbounds [0 x double], ptr addrspace(1) %25, i64 0, i64 1
  store double 2.0, ptr addrspace(1) %27
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %22, i64 0, i32 1
  store i64 2, ptr addrspace(1) %28
  %29 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %30 = getelementptr i8, ptr addrspace(1) %29, i64 864691128455135236
  store ptr addrspace(1) %30, ptr %1
  %31 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 4), !dbg !10
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 3
  %33 = load ptr addrspace(1), ptr addrspace(1) %32, align 8
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = getelementptr inbounds [0 x double], ptr addrspace(1) %34, i64 0, i64 0
  store double 3.0, ptr addrspace(1) %35
  %36 = getelementptr inbounds [0 x double], ptr addrspace(1) %34, i64 0, i64 1
  store double 4.0, ptr addrspace(1) %36
  %37 = getelementptr inbounds [0 x double], ptr addrspace(1) %34, i64 0, i64 2
  store double 5.0, ptr addrspace(1) %37
  %38 = getelementptr inbounds [0 x double], ptr addrspace(1) %34, i64 0, i64 3
  store double 0.0, ptr addrspace(1) %38
  %39 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 1
  store i64 4, ptr addrspace(1) %39
  %40 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %41 = getelementptr i8, ptr addrspace(1) %40, i64 864691128455135236
  store ptr addrspace(1) %41, ptr %2
  %42 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 3
  %44 = load ptr addrspace(1), ptr addrspace(1) %43, align 8
  %45 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %46 = getelementptr inbounds [0 x double], ptr addrspace(1) %45, i64 0, i64 0
  store double 0.5, ptr addrspace(1) %46
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 1
  store i64 1, ptr addrspace(1) %47
  %48 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %49 = getelementptr i8, ptr addrspace(1) %48, i64 864691128455135236
  store ptr addrspace(1) %49, ptr %3
  %50 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !12
  %51 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %52 = getelementptr i8, ptr addrspace(1) %51, i64 864691128455135236
  store ptr addrspace(1) %52, ptr %4
  %53 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 4), !dbg !13
  %54 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 3
  %55 = load ptr addrspace(1), ptr addrspace(1) %54, align 8
  %56 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %57 = load ptr addrspace(1), ptr %1
  %58 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %56, i64 0, i64 0
  store ptr addrspace(1) %57, ptr addrspace(1) %58
  %59 = load ptr addrspace(1), ptr %2
  %60 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %56, i64 0, i64 1
  store ptr addrspace(1) %59, ptr addrspace(1) %60
  %61 = load ptr addrspace(1), ptr %3
  %62 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %56, i64 0, i64 2
  store ptr addrspace(1) %61, ptr addrspace(1) %62
  %63 = load ptr addrspace(1), ptr %4
  %64 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %56, i64 0, i64 3
  store ptr addrspace(1) %63, ptr addrspace(1) %64
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 1
  store i64 4, ptr addrspace(1) %65
  %66 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %67 = getelementptr i8, ptr addrspace(1) %66, i64 864691128455135236
  store ptr addrspace(1) %67, ptr %5
  %68 = load ptr addrspace(1), ptr %5
  store ptr addrspace(1) %68, ptr %vv
  store double 0.0, ptr %total
  %69 = load ptr addrspace(1), ptr %vv
  %70 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %69), !dbg !14
  %71 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %70), !dbg !15
  store i64 %71, ptr %6
  store i64 0, ptr %i
  br label %72
72:
  %73 = load i64, ptr %i
  %74 = load i64, ptr %6
  %75 = icmp slt i64 %73, %74
  store i1 %75, ptr %7
  %76 = load i1, ptr %7
  br i1 %76, label %89, label %77
77:
  %78 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !16
  %79 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %78, i64 0, i32 3
  %80 = load ptr addrspace(1), ptr addrspace(1) %79, align 8
  %81 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %82 = load double, ptr %total
  %83 = call ptr addrspace(1) @_bal_float_to_tagged(double %82), !dbg !17
  %84 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %81, i64 0, i64 0
  store ptr addrspace(1) %83, ptr addrspace(1) %84
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %78, i64 0, i32 1
  store i64 1, ptr addrspace(1) %85
  %86 = bitcast ptr addrspace(1) %78 to ptr addrspace(1)
  %87 = getelementptr i8, ptr addrspace(1) %86, i64 864691128455135236
  store ptr addrspace(1) %87, ptr %15
  %88 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %88), !dbg !18
  store ptr addrspace(1) null, ptr %16
  ret void
89:
  %90 = load ptr addrspace(1), ptr %vv
  %91 = load i64, ptr %i
  %92 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %90, i64 72057594037927928)
  %93 = bitcast ptr addrspace(1) %92 to ptr addrspace(1)
  %94 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 1
  %95 = load i64, ptr addrspace(1) %94, align 8
  %96 = icmp ult i64 %91, %95
  br i1 %96, label %123, label %134
97:
  %98 = load i64, ptr %j
  %99 = load i64, ptr %9
  %100 = icmp slt i64 %98, %99
  store i1 %100, ptr %10
  %101 = load i1, ptr %10
  br i1 %101, label %103, label %102
102:
  br label %115
103:
  %104 = load ptr addrspace(1), ptr %v
  %105 = load i64, ptr %j
  %106 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %104, i64 72057594037927928)
  %107 = bitcast ptr addrspace(1) %106 to ptr addrspace(1)
  %108 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %107, i64 0, i32 1
  %109 = load i64, ptr addrspace(1) %108, align 8
  %110 = icmp ult i64 %105, %109
  br i1 %110, label %136, label %139
111:
  %112 = load i64, ptr %j
  %113 = add nsw i64 %112, 1
  store i64 %113, ptr %13
  %114 = load i64, ptr %13
  store i64 %114, ptr %j
  br label %97
115:
  %116 = load i64, ptr %i
  %117 = add nsw i64 %116, 1
  store i64 %117, ptr %14
  %118 = load i64, ptr %14
  store i64 %118, ptr %i
  br label %72
119:
  %120 = load ptr addrspace(1), ptr %17
  call void @_bal_panic(ptr addrspace(1) %120), !dbg !22
  unreachable
121:
  %122 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %122), !dbg !8
  unreachable
123:
  %124 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 0
  %125 = load ptr, ptr addrspace(1) %124, align 8
  %126 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %125, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8
  %128 = call ptr addrspace(1) %127(ptr addrspace(1) %90, i64 %91)
  %129 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %90, ptr addrspace(1) %128), !dbg !19
  store ptr addrspace(1) %129, ptr %8
  %130 = load ptr addrspace(1), ptr %8
  store ptr addrspace(1) %130, ptr %v
  %131 = load ptr addrspace(1), ptr %v
  %132 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %131), !dbg !20
  %133 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %132), !dbg !21
  store i64 %133, ptr %9
  store i64 0, ptr %j
  br label %97
134:
  %135 = call ptr addrspace(1) @_bal_panic_construct(i64 3077), !dbg !7
  store ptr addrspace(1) %135, ptr %17
  br label %119
136:
  %137 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %104, i64 4)
  %138 = icmp ne ptr addrspace(1) %137, null
  br i1 %138, label %141, label %147
139:
  %140 = call ptr addrspace(1) @_bal_panic_construct(i64 3589), !dbg !7
  store ptr addrspace(1) %140, ptr %17
  br label %119
141:
  %142 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %107, i64 0, i32 3
  %143 = load ptr addrspace(1), ptr addrspace(1) %142, align 8
  %144 = bitcast ptr addrspace(1) %143 to ptr addrspace(1)
  %145 = getelementptr inbounds [0 x double], ptr addrspace(1) %144, i64 0, i64 %105
  %146 = load double, ptr addrspace(1) %145, align 8
  store double %146, ptr %11
  br label %153
147:
  %148 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %107, i64 0, i32 0
  %149 = load ptr, ptr addrspace(1) %148, align 8
  %150 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %149, i64 0, i32 9
  %151 = load ptr, ptr %150, align 8
  %152 = call double %151(ptr addrspace(1) %104, i64 %105)
  store double %152, ptr %11
  br label %153
153:
  %154 = load double, ptr %total
  %155 = load double, ptr %11
  %156 = fadd double %154, %155
  store double %156, ptr %12
  %157 = load double, ptr %12
  store double %157, ptr %total
  br label %111
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/array1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 8, scope: !5)
!10 = !DILocation(line: 6, column: 8, scope: !5)
!11 = !DILocation(line: 7, column: 8, scope: !5)
!12 = !DILocation(line: 8, column: 8, scope: !5)
!13 = !DILocation(line: 4, column: 19, scope: !5)
!14 = !DILocation(line: 11, column: 30, scope: !5)
!15 = !DILocation(line: 11, column: 30, scope: !5)
!16 = !DILocation(line: 17, column: 15, scope: !5)
!17 = !DILocation(line: 17, column: 15, scope: !5)
!18 = !DILocation(line: 17, column: 4, scope: !5)
!19 = !DILocation(line: 12, column: 22, scope: !5)
!20 = !DILocation(line: 13, column: 33, scope: !5)
!21 = !DILocation(line: 13, column: 33, scope: !5)
!22 = !DILocation(line: 18, column: 0, scope: !5)
