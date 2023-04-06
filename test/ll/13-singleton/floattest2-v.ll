@_bal_stack_guard = external global ptr
@_Bt04root0 = external constant {i32, i32, [0 x ptr]}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i1 @_bal_type_contains_float(ptr, double) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca double
  %1 = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i1
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i1
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i1
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i1
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i1
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i1
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca i8
  %23 = load ptr, ptr @_bal_stack_guard
  %24 = icmp ult ptr %22, %23
  br i1 %24, label %131, label %25
25:
  store double 1.0, ptr %x
  %26 = load double, ptr %x
  %27 = call i1 @_bal_type_contains_float(ptr @_Bt04root0, double %26), !dbg !9
  store i1 %27, ptr %1
  %28 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %29 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 3
  %30 = load ptr addrspace(1), ptr addrspace(1) %29, align 8
  %31 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %32 = load i1, ptr %1
  %33 = zext i1 %32 to i64
  %34 = or i64 %33, 72057594037927936
  %35 = getelementptr i8, ptr addrspace(1) null, i64 %34
  %36 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %31, i64 0, i64 0
  store ptr addrspace(1) %35, ptr addrspace(1) %36
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 1
  store i64 1, ptr addrspace(1) %37
  %38 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %39 = getelementptr i8, ptr addrspace(1) %38, i64 864691128455135236
  store ptr addrspace(1) %39, ptr %2
  %40 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %40), !dbg !11
  store ptr addrspace(1) null, ptr %3
  store double 0x7FF0000000000000, ptr %x
  %41 = load double, ptr %x
  %42 = call i1 @_bal_type_contains_float(ptr @_Bt04root0, double %41), !dbg !12
  store i1 %42, ptr %4
  %43 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !13
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 3
  %45 = load ptr addrspace(1), ptr addrspace(1) %44, align 8
  %46 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %47 = load i1, ptr %4
  %48 = zext i1 %47 to i64
  %49 = or i64 %48, 72057594037927936
  %50 = getelementptr i8, ptr addrspace(1) null, i64 %49
  %51 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %46, i64 0, i64 0
  store ptr addrspace(1) %50, ptr addrspace(1) %51
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 1
  store i64 1, ptr addrspace(1) %52
  %53 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %54 = getelementptr i8, ptr addrspace(1) %53, i64 864691128455135236
  store ptr addrspace(1) %54, ptr %5
  %55 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %55), !dbg !14
  store ptr addrspace(1) null, ptr %6
  store double 0xFFF0000000000000, ptr %x
  %56 = load double, ptr %x
  %57 = call i1 @_bal_type_contains_float(ptr @_Bt04root0, double %56), !dbg !15
  store i1 %57, ptr %7
  %58 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %59 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %58, i64 0, i32 3
  %60 = load ptr addrspace(1), ptr addrspace(1) %59, align 8
  %61 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %62 = load i1, ptr %7
  %63 = zext i1 %62 to i64
  %64 = or i64 %63, 72057594037927936
  %65 = getelementptr i8, ptr addrspace(1) null, i64 %64
  %66 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %61, i64 0, i64 0
  store ptr addrspace(1) %65, ptr addrspace(1) %66
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %58, i64 0, i32 1
  store i64 1, ptr addrspace(1) %67
  %68 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 864691128455135236
  store ptr addrspace(1) %69, ptr %8
  %70 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %70), !dbg !17
  store ptr addrspace(1) null, ptr %9
  store double 0x7FF8000000000000, ptr %x
  %71 = load double, ptr %x
  %72 = call i1 @_bal_type_contains_float(ptr @_Bt04root0, double %71), !dbg !18
  store i1 %72, ptr %10
  %73 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !19
  %74 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 3
  %75 = load ptr addrspace(1), ptr addrspace(1) %74, align 8
  %76 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %77 = load i1, ptr %10
  %78 = zext i1 %77 to i64
  %79 = or i64 %78, 72057594037927936
  %80 = getelementptr i8, ptr addrspace(1) null, i64 %79
  %81 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %76, i64 0, i64 0
  store ptr addrspace(1) %80, ptr addrspace(1) %81
  %82 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 1
  store i64 1, ptr addrspace(1) %82
  %83 = bitcast ptr addrspace(1) %73 to ptr addrspace(1)
  %84 = getelementptr i8, ptr addrspace(1) %83, i64 864691128455135236
  store ptr addrspace(1) %84, ptr %11
  %85 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %85), !dbg !20
  store ptr addrspace(1) null, ptr %12
  store double 0.0, ptr %x
  %86 = load double, ptr %x
  %87 = call i1 @_bal_type_contains_float(ptr @_Bt04root0, double %86), !dbg !21
  store i1 %87, ptr %13
  %88 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %89 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %88, i64 0, i32 3
  %90 = load ptr addrspace(1), ptr addrspace(1) %89, align 8
  %91 = bitcast ptr addrspace(1) %90 to ptr addrspace(1)
  %92 = load i1, ptr %13
  %93 = zext i1 %92 to i64
  %94 = or i64 %93, 72057594037927936
  %95 = getelementptr i8, ptr addrspace(1) null, i64 %94
  %96 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %91, i64 0, i64 0
  store ptr addrspace(1) %95, ptr addrspace(1) %96
  %97 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %88, i64 0, i32 1
  store i64 1, ptr addrspace(1) %97
  %98 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %99 = getelementptr i8, ptr addrspace(1) %98, i64 864691128455135236
  store ptr addrspace(1) %99, ptr %14
  %100 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %100), !dbg !23
  store ptr addrspace(1) null, ptr %15
  store double -0.0, ptr %x
  %101 = load double, ptr %x
  %102 = call i1 @_bal_type_contains_float(ptr @_Bt04root0, double %101), !dbg !24
  store i1 %102, ptr %16
  %103 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !25
  %104 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %103, i64 0, i32 3
  %105 = load ptr addrspace(1), ptr addrspace(1) %104, align 8
  %106 = bitcast ptr addrspace(1) %105 to ptr addrspace(1)
  %107 = load i1, ptr %16
  %108 = zext i1 %107 to i64
  %109 = or i64 %108, 72057594037927936
  %110 = getelementptr i8, ptr addrspace(1) null, i64 %109
  %111 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %106, i64 0, i64 0
  store ptr addrspace(1) %110, ptr addrspace(1) %111
  %112 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %103, i64 0, i32 1
  store i64 1, ptr addrspace(1) %112
  %113 = bitcast ptr addrspace(1) %103 to ptr addrspace(1)
  %114 = getelementptr i8, ptr addrspace(1) %113, i64 864691128455135236
  store ptr addrspace(1) %114, ptr %17
  %115 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %115), !dbg !26
  store ptr addrspace(1) null, ptr %18
  store double -1.0, ptr %x
  %116 = load double, ptr %x
  %117 = call i1 @_bal_type_contains_float(ptr @_Bt04root0, double %116), !dbg !27
  store i1 %117, ptr %19
  %118 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !28
  %119 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 3
  %120 = load ptr addrspace(1), ptr addrspace(1) %119, align 8
  %121 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %122 = load i1, ptr %19
  %123 = zext i1 %122 to i64
  %124 = or i64 %123, 72057594037927936
  %125 = getelementptr i8, ptr addrspace(1) null, i64 %124
  %126 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %121, i64 0, i64 0
  store ptr addrspace(1) %125, ptr addrspace(1) %126
  %127 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 1
  store i64 1, ptr addrspace(1) %127
  %128 = bitcast ptr addrspace(1) %118 to ptr addrspace(1)
  %129 = getelementptr i8, ptr addrspace(1) %128, i64 864691128455135236
  store ptr addrspace(1) %129, ptr %20
  %130 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %130), !dbg !29
  store ptr addrspace(1) null, ptr %21
  ret void
131:
  %132 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %132), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-singleton/floattest2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 16, scope: !5)
!9 = !DILocation(line: 10, column: 17, scope: !5)
!10 = !DILocation(line: 10, column: 15, scope: !5)
!11 = !DILocation(line: 10, column: 4, scope: !5)
!12 = !DILocation(line: 12, column: 17, scope: !5)
!13 = !DILocation(line: 12, column: 15, scope: !5)
!14 = !DILocation(line: 12, column: 4, scope: !5)
!15 = !DILocation(line: 14, column: 17, scope: !5)
!16 = !DILocation(line: 14, column: 15, scope: !5)
!17 = !DILocation(line: 14, column: 4, scope: !5)
!18 = !DILocation(line: 16, column: 17, scope: !5)
!19 = !DILocation(line: 16, column: 15, scope: !5)
!20 = !DILocation(line: 16, column: 4, scope: !5)
!21 = !DILocation(line: 18, column: 17, scope: !5)
!22 = !DILocation(line: 18, column: 15, scope: !5)
!23 = !DILocation(line: 18, column: 4, scope: !5)
!24 = !DILocation(line: 20, column: 17, scope: !5)
!25 = !DILocation(line: 20, column: 15, scope: !5)
!26 = !DILocation(line: 20, column: 4, scope: !5)
!27 = !DILocation(line: 22, column: 17, scope: !5)
!28 = !DILocation(line: 22, column: 15, scope: !5)
!29 = !DILocation(line: 22, column: 4, scope: !5)
