@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare zeroext i1 @_bal_float_eq(double, double) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca i8
  %25 = load ptr, ptr @_bal_stack_guard
  %26 = icmp ult ptr %24, %25
  br i1 %26, label %127, label %27
27:
  %28 = call ptr addrspace(1) @_B_eq(double 0x7FF8000000000000, double 0x7FF8000000000000), !dbg !11
  store ptr addrspace(1) %28, ptr %1
  %29 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 3
  %31 = load ptr addrspace(1), ptr addrspace(1) %30, align 8
  %32 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %33 = load ptr addrspace(1), ptr %1
  %34 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %32, i64 0, i64 0
  store ptr addrspace(1) %33, ptr addrspace(1) %34
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 1
  store i64 1, ptr addrspace(1) %35
  %36 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %37 = getelementptr i8, ptr addrspace(1) %36, i64 864691128455135236
  store ptr addrspace(1) %37, ptr %2
  %38 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %38), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %39 = call ptr addrspace(1) @_B_eq(double 0x7FF0000000000000, double 0xFFF0000000000000), !dbg !14
  store ptr addrspace(1) %39, ptr %4
  %40 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 3
  %42 = load ptr addrspace(1), ptr addrspace(1) %41, align 8
  %43 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %44 = load ptr addrspace(1), ptr %4
  %45 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %43, i64 0, i64 0
  store ptr addrspace(1) %44, ptr addrspace(1) %45
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 1
  store i64 1, ptr addrspace(1) %46
  %47 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %48 = getelementptr i8, ptr addrspace(1) %47, i64 864691128455135236
  store ptr addrspace(1) %48, ptr %5
  %49 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %49), !dbg !16
  store ptr addrspace(1) null, ptr %6
  %50 = call ptr addrspace(1) @_B_eq(double -0.0, double 0.0), !dbg !17
  store ptr addrspace(1) %50, ptr %7
  %51 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 3
  %53 = load ptr addrspace(1), ptr addrspace(1) %52, align 8
  %54 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %55 = load ptr addrspace(1), ptr %7
  %56 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %54, i64 0, i64 0
  store ptr addrspace(1) %55, ptr addrspace(1) %56
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  store i64 1, ptr addrspace(1) %57
  %58 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %59 = getelementptr i8, ptr addrspace(1) %58, i64 864691128455135236
  store ptr addrspace(1) %59, ptr %8
  %60 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %60), !dbg !19
  store ptr addrspace(1) null, ptr %9
  %61 = call ptr addrspace(1) @_B_eq(double 0x7FF8000000000000, double 0x7FF0000000000000), !dbg !20
  store ptr addrspace(1) %61, ptr %10
  %62 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 3
  %64 = load ptr addrspace(1), ptr addrspace(1) %63, align 8
  %65 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %66 = load ptr addrspace(1), ptr %10
  %67 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %65, i64 0, i64 0
  store ptr addrspace(1) %66, ptr addrspace(1) %67
  %68 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 1
  store i64 1, ptr addrspace(1) %68
  %69 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %70 = getelementptr i8, ptr addrspace(1) %69, i64 864691128455135236
  store ptr addrspace(1) %70, ptr %11
  %71 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %71), !dbg !22
  store ptr addrspace(1) null, ptr %12
  %72 = call ptr addrspace(1) @_B_eq(double 0x7FF8000000000000, double 0xFFF0000000000000), !dbg !23
  store ptr addrspace(1) %72, ptr %13
  %73 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %74 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 3
  %75 = load ptr addrspace(1), ptr addrspace(1) %74, align 8
  %76 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %77 = load ptr addrspace(1), ptr %13
  %78 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %76, i64 0, i64 0
  store ptr addrspace(1) %77, ptr addrspace(1) %78
  %79 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 1
  store i64 1, ptr addrspace(1) %79
  %80 = bitcast ptr addrspace(1) %73 to ptr addrspace(1)
  %81 = getelementptr i8, ptr addrspace(1) %80, i64 864691128455135236
  store ptr addrspace(1) %81, ptr %14
  %82 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %82), !dbg !25
  store ptr addrspace(1) null, ptr %15
  %83 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !26
  %84 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 3
  %85 = load ptr addrspace(1), ptr addrspace(1) %84, align 8
  %86 = bitcast ptr addrspace(1) %85 to ptr addrspace(1)
  %87 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.0), !dbg !27
  %88 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %86, i64 0, i64 0
  store ptr addrspace(1) %87, ptr addrspace(1) %88
  %89 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 1
  store i64 1, ptr addrspace(1) %89
  %90 = bitcast ptr addrspace(1) %83 to ptr addrspace(1)
  %91 = getelementptr i8, ptr addrspace(1) %90, i64 864691128455135236
  store ptr addrspace(1) %91, ptr %16
  %92 = load ptr addrspace(1), ptr %16
  call void @_Bb02ioprintln(ptr addrspace(1) %92), !dbg !28
  store ptr addrspace(1) null, ptr %17
  %93 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !29
  %94 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 3
  %95 = load ptr addrspace(1), ptr addrspace(1) %94, align 8
  %96 = bitcast ptr addrspace(1) %95 to ptr addrspace(1)
  %97 = zext i1 1 to i64
  %98 = or i64 %97, 72057594037927936
  %99 = getelementptr i8, ptr addrspace(1) null, i64 %98
  %100 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %96, i64 0, i64 0
  store ptr addrspace(1) %99, ptr addrspace(1) %100
  %101 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 1
  store i64 1, ptr addrspace(1) %101
  %102 = bitcast ptr addrspace(1) %93 to ptr addrspace(1)
  %103 = getelementptr i8, ptr addrspace(1) %102, i64 864691128455135236
  store ptr addrspace(1) %103, ptr %18
  %104 = load ptr addrspace(1), ptr %18
  call void @_Bb02ioprintln(ptr addrspace(1) %104), !dbg !30
  store ptr addrspace(1) null, ptr %19
  %105 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %106 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %105, i64 0, i32 3
  %107 = load ptr addrspace(1), ptr addrspace(1) %106, align 8
  %108 = bitcast ptr addrspace(1) %107 to ptr addrspace(1)
  %109 = zext i1 0 to i64
  %110 = or i64 %109, 72057594037927936
  %111 = getelementptr i8, ptr addrspace(1) null, i64 %110
  %112 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %108, i64 0, i64 0
  store ptr addrspace(1) %111, ptr addrspace(1) %112
  %113 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %105, i64 0, i32 1
  store i64 1, ptr addrspace(1) %113
  %114 = bitcast ptr addrspace(1) %105 to ptr addrspace(1)
  %115 = getelementptr i8, ptr addrspace(1) %114, i64 864691128455135236
  store ptr addrspace(1) %115, ptr %20
  %116 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %116), !dbg !32
  store ptr addrspace(1) null, ptr %21
  %117 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !33
  %118 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %117, i64 0, i32 3
  %119 = load ptr addrspace(1), ptr addrspace(1) %118, align 8
  %120 = bitcast ptr addrspace(1) %119 to ptr addrspace(1)
  %121 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.0), !dbg !34
  %122 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %120, i64 0, i64 0
  store ptr addrspace(1) %121, ptr addrspace(1) %122
  %123 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %117, i64 0, i32 1
  store i64 1, ptr addrspace(1) %123
  %124 = bitcast ptr addrspace(1) %117 to ptr addrspace(1)
  %125 = getelementptr i8, ptr addrspace(1) %124, i64 864691128455135236
  store ptr addrspace(1) %125, ptr %22
  %126 = load ptr addrspace(1), ptr %22
  call void @_Bb02ioprintln(ptr addrspace(1) %126), !dbg !35
  store ptr addrspace(1) null, ptr %23
  ret void
127:
  %128 = call ptr addrspace(1) @_bal_panic_construct(i64 3844), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %128), !dbg !10
  unreachable
}
define internal ptr addrspace(1) @_B_eq(double %0, double %1) !dbg !7 {
  %f1 = alloca double
  %f2 = alloca double
  %eq = alloca i1
  %3 = alloca i1
  %neEq = alloca i1
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %29, label %9
9:
  store double %0, ptr %f1
  store double %1, ptr %f2
  %10 = load double, ptr %f1
  %11 = load double, ptr %f2
  %12 = call i1 @_bal_float_eq(double %10, double %11), !dbg !38
  store i1 %12, ptr %3
  %13 = load i1, ptr %3
  store i1 %13, ptr %eq
  %14 = load double, ptr %f1
  %15 = load double, ptr %f2
  %16 = call i1 @_bal_float_eq(double %14, double %15), !dbg !39
  %17 = xor i1 %16, 1
  store i1 %17, ptr %4
  %18 = load i1, ptr %4
  store i1 %18, ptr %neEq
  %19 = load i1, ptr %eq
  %20 = load i1, ptr %neEq
  %21 = icmp eq i1 %19, %20
  store i1 %21, ptr %5
  %22 = load i1, ptr %5
  br i1 %22, label %23, label %24
23:
  ret ptr addrspace(1) null
24:
  %25 = load i1, ptr %eq
  %26 = zext i1 %25 to i64
  %27 = or i64 %26, 72057594037927936
  %28 = getelementptr i8, ptr addrspace(1) null, i64 %27
  ret ptr addrspace(1) %28
29:
  %30 = call ptr addrspace(1) @_bal_panic_construct(i64 6916), !dbg !36
  call void @_bal_panic(ptr addrspace(1) %30), !dbg !37
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/const3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"eq", linkageName:"_B_eq", scope: !1, file: !1, line: 27, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 15, column: 16, scope: !5)
!11 = !DILocation(line: 16, column: 15, scope: !5)
!12 = !DILocation(line: 16, column: 15, scope: !5)
!13 = !DILocation(line: 16, column: 4, scope: !5)
!14 = !DILocation(line: 17, column: 15, scope: !5)
!15 = !DILocation(line: 17, column: 15, scope: !5)
!16 = !DILocation(line: 17, column: 4, scope: !5)
!17 = !DILocation(line: 18, column: 15, scope: !5)
!18 = !DILocation(line: 18, column: 15, scope: !5)
!19 = !DILocation(line: 18, column: 4, scope: !5)
!20 = !DILocation(line: 19, column: 15, scope: !5)
!21 = !DILocation(line: 19, column: 15, scope: !5)
!22 = !DILocation(line: 19, column: 4, scope: !5)
!23 = !DILocation(line: 20, column: 15, scope: !5)
!24 = !DILocation(line: 20, column: 15, scope: !5)
!25 = !DILocation(line: 20, column: 4, scope: !5)
!26 = !DILocation(line: 21, column: 15, scope: !5)
!27 = !DILocation(line: 21, column: 15, scope: !5)
!28 = !DILocation(line: 21, column: 4, scope: !5)
!29 = !DILocation(line: 22, column: 15, scope: !5)
!30 = !DILocation(line: 22, column: 4, scope: !5)
!31 = !DILocation(line: 23, column: 15, scope: !5)
!32 = !DILocation(line: 23, column: 4, scope: !5)
!33 = !DILocation(line: 24, column: 15, scope: !5)
!34 = !DILocation(line: 24, column: 15, scope: !5)
!35 = !DILocation(line: 24, column: 4, scope: !5)
!36 = !DILocation(line: 0, column: 0, scope: !7)
!37 = !DILocation(line: 27, column: 9, scope: !7)
!38 = !DILocation(line: 28, column: 20, scope: !7)
!39 = !DILocation(line: 29, column: 22, scope: !7)
