@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_Bb0m4lang3inttoHexString(i64)
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
  %s = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i1
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
  %24 = alloca ptr addrspace(1)
  %25 = alloca i8
  %26 = load ptr, ptr @_bal_stack_guard
  %27 = icmp ult ptr %25, %26
  br i1 %27, label %123, label %28
28:
  store i64 42, ptr %i
  %29 = load i64, ptr %i
  %30 = call ptr addrspace(1) @_Bb0m4lang3inttoHexString(i64 %29), !dbg !9
  store ptr addrspace(1) %30, ptr %1
  %31 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %31, ptr %s
  %32 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 3
  %34 = load ptr addrspace(1), ptr addrspace(1) %33, align 8
  %35 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %36 = load ptr addrspace(1), ptr %s
  %37 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %35, i64 0, i64 0
  store ptr addrspace(1) %36, ptr addrspace(1) %37
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 1
  store i64 1, ptr addrspace(1) %38
  %39 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %40 = getelementptr i8, ptr addrspace(1) %39, i64 864691128455135236
  store ptr addrspace(1) %40, ptr %2
  %41 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %41), !dbg !11
  store ptr addrspace(1) null, ptr %3
  %42 = load ptr addrspace(1), ptr %s
  %43 = icmp eq ptr addrspace(1) %42, getelementptr(i8, ptr addrspace(1) null, i64 2738188573441220914)
  store i1 %43, ptr %4
  %44 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 3
  %46 = load ptr addrspace(1), ptr addrspace(1) %45, align 8
  %47 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %48 = load i1, ptr %4
  %49 = zext i1 %48 to i64
  %50 = or i64 %49, 72057594037927936
  %51 = getelementptr i8, ptr addrspace(1) null, i64 %50
  %52 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %47, i64 0, i64 0
  store ptr addrspace(1) %51, ptr addrspace(1) %52
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 1
  store i64 1, ptr addrspace(1) %53
  %54 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %55 = getelementptr i8, ptr addrspace(1) %54, i64 864691128455135236
  store ptr addrspace(1) %55, ptr %5
  %56 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %56), !dbg !13
  store ptr addrspace(1) null, ptr %6
  %57 = call ptr addrspace(1) @_Bb0m4lang3inttoHexString(i64 0), !dbg !14
  store ptr addrspace(1) %57, ptr %7
  %58 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %59 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %58, i64 0, i32 3
  %60 = load ptr addrspace(1), ptr addrspace(1) %59, align 8
  %61 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %62 = load ptr addrspace(1), ptr %7
  %63 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %61, i64 0, i64 0
  store ptr addrspace(1) %62, ptr addrspace(1) %63
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %58, i64 0, i32 1
  store i64 1, ptr addrspace(1) %64
  %65 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %66 = getelementptr i8, ptr addrspace(1) %65, i64 864691128455135236
  store ptr addrspace(1) %66, ptr %8
  %67 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %67), !dbg !16
  store ptr addrspace(1) null, ptr %9
  %68 = call ptr addrspace(1) @_Bb0m4lang3inttoHexString(i64 -1), !dbg !17
  store ptr addrspace(1) %68, ptr %10
  %69 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %70 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %69, i64 0, i32 3
  %71 = load ptr addrspace(1), ptr addrspace(1) %70, align 8
  %72 = bitcast ptr addrspace(1) %71 to ptr addrspace(1)
  %73 = load ptr addrspace(1), ptr %10
  %74 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %72, i64 0, i64 0
  store ptr addrspace(1) %73, ptr addrspace(1) %74
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %69, i64 0, i32 1
  store i64 1, ptr addrspace(1) %75
  %76 = bitcast ptr addrspace(1) %69 to ptr addrspace(1)
  %77 = getelementptr i8, ptr addrspace(1) %76, i64 864691128455135236
  store ptr addrspace(1) %77, ptr %11
  %78 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %78), !dbg !19
  store ptr addrspace(1) null, ptr %12
  %79 = call ptr addrspace(1) @_Bb0m4lang3inttoHexString(i64 255), !dbg !20
  store ptr addrspace(1) %79, ptr %13
  %80 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 3
  %82 = load ptr addrspace(1), ptr addrspace(1) %81, align 8
  %83 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %84 = load ptr addrspace(1), ptr %13
  %85 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %83, i64 0, i64 0
  store ptr addrspace(1) %84, ptr addrspace(1) %85
  %86 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 1
  store i64 1, ptr addrspace(1) %86
  %87 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %88 = getelementptr i8, ptr addrspace(1) %87, i64 864691128455135236
  store ptr addrspace(1) %88, ptr %14
  %89 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %89), !dbg !22
  store ptr addrspace(1) null, ptr %15
  %90 = call ptr addrspace(1) @_Bb0m4lang3inttoHexString(i64 -170), !dbg !23
  store ptr addrspace(1) %90, ptr %16
  %91 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %92 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %91, i64 0, i32 3
  %93 = load ptr addrspace(1), ptr addrspace(1) %92, align 8
  %94 = bitcast ptr addrspace(1) %93 to ptr addrspace(1)
  %95 = load ptr addrspace(1), ptr %16
  %96 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %94, i64 0, i64 0
  store ptr addrspace(1) %95, ptr addrspace(1) %96
  %97 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %91, i64 0, i32 1
  store i64 1, ptr addrspace(1) %97
  %98 = bitcast ptr addrspace(1) %91 to ptr addrspace(1)
  %99 = getelementptr i8, ptr addrspace(1) %98, i64 864691128455135236
  store ptr addrspace(1) %99, ptr %17
  %100 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %100), !dbg !25
  store ptr addrspace(1) null, ptr %18
  %101 = call ptr addrspace(1) @_Bb0m4lang3inttoHexString(i64 9223372036854775807), !dbg !26
  store ptr addrspace(1) %101, ptr %19
  %102 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %103 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %102, i64 0, i32 3
  %104 = load ptr addrspace(1), ptr addrspace(1) %103, align 8
  %105 = bitcast ptr addrspace(1) %104 to ptr addrspace(1)
  %106 = load ptr addrspace(1), ptr %19
  %107 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %105, i64 0, i64 0
  store ptr addrspace(1) %106, ptr addrspace(1) %107
  %108 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %102, i64 0, i32 1
  store i64 1, ptr addrspace(1) %108
  %109 = bitcast ptr addrspace(1) %102 to ptr addrspace(1)
  %110 = getelementptr i8, ptr addrspace(1) %109, i64 864691128455135236
  store ptr addrspace(1) %110, ptr %20
  %111 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %111), !dbg !28
  store ptr addrspace(1) null, ptr %21
  %112 = call ptr addrspace(1) @_Bb0m4lang3inttoHexString(i64 -9223372036854775808), !dbg !29
  store ptr addrspace(1) %112, ptr %22
  %113 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !30
  %114 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %113, i64 0, i32 3
  %115 = load ptr addrspace(1), ptr addrspace(1) %114, align 8
  %116 = bitcast ptr addrspace(1) %115 to ptr addrspace(1)
  %117 = load ptr addrspace(1), ptr %22
  %118 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %116, i64 0, i64 0
  store ptr addrspace(1) %117, ptr addrspace(1) %118
  %119 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %113, i64 0, i32 1
  store i64 1, ptr addrspace(1) %119
  %120 = bitcast ptr addrspace(1) %113 to ptr addrspace(1)
  %121 = getelementptr i8, ptr addrspace(1) %120, i64 864691128455135236
  store ptr addrspace(1) %121, ptr %23
  %122 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %122), !dbg !31
  store ptr addrspace(1) null, ptr %24
  ret void
123:
  %124 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %124), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-int/tohex2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 17, scope: !5)
!10 = !DILocation(line: 7, column: 15, scope: !5)
!11 = !DILocation(line: 7, column: 4, scope: !5)
!12 = !DILocation(line: 8, column: 15, scope: !5)
!13 = !DILocation(line: 8, column: 4, scope: !5)
!14 = !DILocation(line: 10, column: 17, scope: !5)
!15 = !DILocation(line: 10, column: 15, scope: !5)
!16 = !DILocation(line: 10, column: 4, scope: !5)
!17 = !DILocation(line: 11, column: 20, scope: !5)
!18 = !DILocation(line: 11, column: 15, scope: !5)
!19 = !DILocation(line: 11, column: 4, scope: !5)
!20 = !DILocation(line: 13, column: 20, scope: !5)
!21 = !DILocation(line: 13, column: 15, scope: !5)
!22 = !DILocation(line: 13, column: 4, scope: !5)
!23 = !DILocation(line: 14, column: 23, scope: !5)
!24 = !DILocation(line: 14, column: 15, scope: !5)
!25 = !DILocation(line: 14, column: 4, scope: !5)
!26 = !DILocation(line: 16, column: 35, scope: !5)
!27 = !DILocation(line: 16, column: 15, scope: !5)
!28 = !DILocation(line: 16, column: 4, scope: !5)
!29 = !DILocation(line: 17, column: 42, scope: !5)
!30 = !DILocation(line: 17, column: 15, scope: !5)
!31 = !DILocation(line: 17, column: 4, scope: !5)
