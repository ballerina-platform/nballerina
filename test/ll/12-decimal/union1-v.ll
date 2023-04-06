@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 18, i64 2452139628359057408], align 8
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 162, i64 2452069259614879744], align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_float_to_tagged(double)
define void @_B04rootmain() !dbg !5 {
  %d1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i1
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %d3 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i1
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i1
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i8
  %20 = load ptr, ptr @_bal_stack_guard
  %21 = icmp ult ptr %19, %20
  br i1 %21, label %133, label %22
22:
  %23 = and i64 72057594037927935, 1
  %24 = or i64 2449958197289549824, %23
  %25 = getelementptr i8, ptr addrspace(1) null, i64 %24
  store ptr addrspace(1) %25, ptr %d1
  %26 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 3
  %28 = load ptr addrspace(1), ptr addrspace(1) %27, align 8
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = load ptr addrspace(1), ptr %d1
  %31 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %29, i64 0, i64 0
  store ptr addrspace(1) %30, ptr addrspace(1) %31
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  store i64 1, ptr addrspace(1) %32
  %33 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %34 = getelementptr i8, ptr addrspace(1) %33, i64 864691128455135236
  store ptr addrspace(1) %34, ptr %1
  %35 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %35), !dbg !10
  store ptr addrspace(1) null, ptr %2
  %36 = load ptr addrspace(1), ptr %d1
  %37 = addrspacecast ptr addrspace(1) %36 to ptr
  %38 = ptrtoint ptr %37 to i64
  %39 = and i64 %38, 2233785415175766016
  %40 = icmp eq i64 %39, 144115188075855872
  store i1 %40, ptr %3
  %41 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 3
  %43 = load ptr addrspace(1), ptr addrspace(1) %42, align 8
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = load i1, ptr %3
  %46 = zext i1 %45 to i64
  %47 = or i64 %46, 72057594037927936
  %48 = getelementptr i8, ptr addrspace(1) null, i64 %47
  %49 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %44, i64 0, i64 0
  store ptr addrspace(1) %48, ptr addrspace(1) %49
  %50 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 1
  store i64 1, ptr addrspace(1) %50
  %51 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %52 = getelementptr i8, ptr addrspace(1) %51, i64 864691128455135236
  store ptr addrspace(1) %52, ptr %4
  %53 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %53), !dbg !12
  store ptr addrspace(1) null, ptr %5
  %54 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %55 = getelementptr i8, ptr addrspace(1) %54, i64 288230376151711744
  store ptr addrspace(1) %55, ptr %d1
  %56 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 3
  %58 = load ptr addrspace(1), ptr addrspace(1) %57, align 8
  %59 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %60 = load ptr addrspace(1), ptr %d1
  %61 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %59, i64 0, i64 0
  store ptr addrspace(1) %60, ptr addrspace(1) %61
  %62 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 1
  store i64 1, ptr addrspace(1) %62
  %63 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %64 = getelementptr i8, ptr addrspace(1) %63, i64 864691128455135236
  store ptr addrspace(1) %64, ptr %6
  %65 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %65), !dbg !14
  store ptr addrspace(1) null, ptr %7
  %66 = load ptr addrspace(1), ptr %d1
  %67 = addrspacecast ptr addrspace(1) %66 to ptr
  %68 = ptrtoint ptr %67 to i64
  %69 = and i64 %68, 2233785415175766016
  %70 = icmp eq i64 %69, 288230376151711744
  store i1 %70, ptr %8
  %71 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %72 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %71, i64 0, i32 3
  %73 = load ptr addrspace(1), ptr addrspace(1) %72, align 8
  %74 = bitcast ptr addrspace(1) %73 to ptr addrspace(1)
  %75 = load i1, ptr %8
  %76 = zext i1 %75 to i64
  %77 = or i64 %76, 72057594037927936
  %78 = getelementptr i8, ptr addrspace(1) null, i64 %77
  %79 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %74, i64 0, i64 0
  store ptr addrspace(1) %78, ptr addrspace(1) %79
  %80 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %71, i64 0, i32 1
  store i64 1, ptr addrspace(1) %80
  %81 = bitcast ptr addrspace(1) %71 to ptr addrspace(1)
  %82 = getelementptr i8, ptr addrspace(1) %81, i64 864691128455135236
  store ptr addrspace(1) %82, ptr %9
  %83 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %83), !dbg !16
  store ptr addrspace(1) null, ptr %10
  %84 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %85 = getelementptr i8, ptr addrspace(1) %84, i64 288230376151711744
  store ptr addrspace(1) %85, ptr %d3
  %86 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %87 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 3
  %88 = load ptr addrspace(1), ptr addrspace(1) %87, align 8
  %89 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %90 = load ptr addrspace(1), ptr %d3
  %91 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %89, i64 0, i64 0
  store ptr addrspace(1) %90, ptr addrspace(1) %91
  %92 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 1
  store i64 1, ptr addrspace(1) %92
  %93 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %94 = getelementptr i8, ptr addrspace(1) %93, i64 864691128455135236
  store ptr addrspace(1) %94, ptr %11
  %95 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %95), !dbg !18
  store ptr addrspace(1) null, ptr %12
  %96 = load ptr addrspace(1), ptr %d3
  %97 = addrspacecast ptr addrspace(1) %96 to ptr
  %98 = ptrtoint ptr %97 to i64
  %99 = and i64 %98, 2233785415175766016
  %100 = icmp eq i64 %99, 288230376151711744
  store i1 %100, ptr %13
  %101 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %102 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %101, i64 0, i32 3
  %103 = load ptr addrspace(1), ptr addrspace(1) %102, align 8
  %104 = bitcast ptr addrspace(1) %103 to ptr addrspace(1)
  %105 = load i1, ptr %13
  %106 = zext i1 %105 to i64
  %107 = or i64 %106, 72057594037927936
  %108 = getelementptr i8, ptr addrspace(1) null, i64 %107
  %109 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %104, i64 0, i64 0
  store ptr addrspace(1) %108, ptr addrspace(1) %109
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %101, i64 0, i32 1
  store i64 1, ptr addrspace(1) %110
  %111 = bitcast ptr addrspace(1) %101 to ptr addrspace(1)
  %112 = getelementptr i8, ptr addrspace(1) %111, i64 864691128455135236
  store ptr addrspace(1) %112, ptr %14
  %113 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %113), !dbg !20
  store ptr addrspace(1) null, ptr %15
  %114 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.2), !dbg !21
  store ptr addrspace(1) %114, ptr %d3
  %115 = load ptr addrspace(1), ptr %d3
  %116 = addrspacecast ptr addrspace(1) %115 to ptr
  %117 = ptrtoint ptr %116 to i64
  %118 = and i64 %117, 2233785415175766016
  %119 = icmp eq i64 %118, 216172782113783808
  store i1 %119, ptr %16
  %120 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %121 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %120, i64 0, i32 3
  %122 = load ptr addrspace(1), ptr addrspace(1) %121, align 8
  %123 = bitcast ptr addrspace(1) %122 to ptr addrspace(1)
  %124 = load i1, ptr %16
  %125 = zext i1 %124 to i64
  %126 = or i64 %125, 72057594037927936
  %127 = getelementptr i8, ptr addrspace(1) null, i64 %126
  %128 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %123, i64 0, i64 0
  store ptr addrspace(1) %127, ptr addrspace(1) %128
  %129 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %120, i64 0, i32 1
  store i64 1, ptr addrspace(1) %129
  %130 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %131 = getelementptr i8, ptr addrspace(1) %130, i64 864691128455135236
  store ptr addrspace(1) %131, ptr %17
  %132 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %132), !dbg !23
  store ptr addrspace(1) null, ptr %18
  ret void
133:
  %134 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %134), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/union1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 15, scope: !5)
!10 = !DILocation(line: 4, column: 4, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 4, scope: !5)
!13 = !DILocation(line: 8, column: 15, scope: !5)
!14 = !DILocation(line: 8, column: 4, scope: !5)
!15 = !DILocation(line: 9, column: 15, scope: !5)
!16 = !DILocation(line: 9, column: 4, scope: !5)
!17 = !DILocation(line: 12, column: 15, scope: !5)
!18 = !DILocation(line: 12, column: 4, scope: !5)
!19 = !DILocation(line: 13, column: 15, scope: !5)
!20 = !DILocation(line: 13, column: 4, scope: !5)
!21 = !DILocation(line: 15, column: 7, scope: !5)
!22 = !DILocation(line: 16, column: 15, scope: !5)
!23 = !DILocation(line: 16, column: 4, scope: !5)
