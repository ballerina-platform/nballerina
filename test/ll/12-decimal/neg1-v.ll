@_bal_stack_guard = external global ptr
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 0, i64 2452209997103235072], align 8
@_Bi04root0 = external constant {i32}
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2452209997103235072], align 8
@.dec2 = internal unnamed_addr constant [2 x i64] [i64 1, i64 -6771162039751540736], align 8
@.dec3 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2322168557862912], align 8
@.dec4 = internal unnamed_addr constant [2 x i64] [i64 -865536378825081602, i64 8646858456403230671], align 8
@.dec5 = internal unnamed_addr constant [2 x i64] [i64 33, i64 -6771232408495718400], align 8
@.dec6 = internal unnamed_addr constant [2 x i64] [i64 33, i64 -6771091671007363072], align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_decimal_neg(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %d = alloca ptr addrspace(1)
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
  %20 = alloca i8
  %21 = load ptr, ptr @_bal_stack_guard
  %22 = icmp ult ptr %20, %21
  br i1 %22, label %116, label %23
23:
  %24 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %25 = getelementptr i8, ptr addrspace(1) %24, i64 288230376151711744
  store ptr addrspace(1) %25, ptr %d
  %26 = load ptr addrspace(1), ptr %d
  %27 = call ptr addrspace(1) @_bal_decimal_neg(ptr addrspace(1) %26), !dbg !9
  store ptr addrspace(1) %27, ptr %1
  %28 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %29 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 3
  %30 = load ptr addrspace(1), ptr addrspace(1) %29, align 8
  %31 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %32 = load ptr addrspace(1), ptr %1
  %33 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %31, i64 0, i64 0
  store ptr addrspace(1) %32, ptr addrspace(1) %33
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 1
  store i64 1, ptr addrspace(1) %34
  %35 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %36 = getelementptr i8, ptr addrspace(1) %35, i64 864691128455135236
  store ptr addrspace(1) %36, ptr %2
  %37 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %37), !dbg !11
  store ptr addrspace(1) null, ptr %3
  %38 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %39 = getelementptr i8, ptr addrspace(1) %38, i64 288230376151711744
  store ptr addrspace(1) %39, ptr %d
  %40 = load ptr addrspace(1), ptr %d
  %41 = call ptr addrspace(1) @_bal_decimal_neg(ptr addrspace(1) %40), !dbg !12
  store ptr addrspace(1) %41, ptr %4
  %42 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 3
  %44 = load ptr addrspace(1), ptr addrspace(1) %43, align 8
  %45 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %46 = load ptr addrspace(1), ptr %4
  %47 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %45, i64 0, i64 0
  store ptr addrspace(1) %46, ptr addrspace(1) %47
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 1
  store i64 1, ptr addrspace(1) %48
  %49 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %50 = getelementptr i8, ptr addrspace(1) %49, i64 864691128455135236
  store ptr addrspace(1) %50, ptr %5
  %51 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %51), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %52 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %53 = getelementptr i8, ptr addrspace(1) %52, i64 288230376151711744
  store ptr addrspace(1) %53, ptr %d
  %54 = load ptr addrspace(1), ptr %d
  %55 = call ptr addrspace(1) @_bal_decimal_neg(ptr addrspace(1) %54), !dbg !15
  store ptr addrspace(1) %55, ptr %7
  %56 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 3
  %58 = load ptr addrspace(1), ptr addrspace(1) %57, align 8
  %59 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %60 = load ptr addrspace(1), ptr %7
  %61 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %59, i64 0, i64 0
  store ptr addrspace(1) %60, ptr addrspace(1) %61
  %62 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 1
  store i64 1, ptr addrspace(1) %62
  %63 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %64 = getelementptr i8, ptr addrspace(1) %63, i64 864691128455135236
  store ptr addrspace(1) %64, ptr %8
  %65 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %65), !dbg !17
  store ptr addrspace(1) null, ptr %9
  %66 = addrspacecast ptr bitcast(ptr @.dec3 to ptr) to ptr addrspace(1)
  %67 = getelementptr i8, ptr addrspace(1) %66, i64 288230376151711744
  store ptr addrspace(1) %67, ptr %d
  %68 = load ptr addrspace(1), ptr %d
  %69 = call ptr addrspace(1) @_bal_decimal_neg(ptr addrspace(1) %68), !dbg !18
  store ptr addrspace(1) %69, ptr %10
  %70 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %71 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %70, i64 0, i32 3
  %72 = load ptr addrspace(1), ptr addrspace(1) %71, align 8
  %73 = bitcast ptr addrspace(1) %72 to ptr addrspace(1)
  %74 = load ptr addrspace(1), ptr %10
  %75 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %73, i64 0, i64 0
  store ptr addrspace(1) %74, ptr addrspace(1) %75
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %70, i64 0, i32 1
  store i64 1, ptr addrspace(1) %76
  %77 = bitcast ptr addrspace(1) %70 to ptr addrspace(1)
  %78 = getelementptr i8, ptr addrspace(1) %77, i64 864691128455135236
  store ptr addrspace(1) %78, ptr %11
  %79 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %79), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %80 = addrspacecast ptr bitcast(ptr @.dec4 to ptr) to ptr addrspace(1)
  %81 = getelementptr i8, ptr addrspace(1) %80, i64 288230376151711744
  store ptr addrspace(1) %81, ptr %d
  %82 = load ptr addrspace(1), ptr %d
  %83 = call ptr addrspace(1) @_bal_decimal_neg(ptr addrspace(1) %82), !dbg !21
  store ptr addrspace(1) %83, ptr %13
  %84 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 3
  %86 = load ptr addrspace(1), ptr addrspace(1) %85, align 8
  %87 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %88 = load ptr addrspace(1), ptr %13
  %89 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %87, i64 0, i64 0
  store ptr addrspace(1) %88, ptr addrspace(1) %89
  %90 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 1
  store i64 1, ptr addrspace(1) %90
  %91 = bitcast ptr addrspace(1) %84 to ptr addrspace(1)
  %92 = getelementptr i8, ptr addrspace(1) %91, i64 864691128455135236
  store ptr addrspace(1) %92, ptr %14
  %93 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %93), !dbg !23
  store ptr addrspace(1) null, ptr %15
  %94 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %95 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %94, i64 0, i32 3
  %96 = load ptr addrspace(1), ptr addrspace(1) %95, align 8
  %97 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %98 = addrspacecast ptr bitcast(ptr @.dec5 to ptr) to ptr addrspace(1)
  %99 = getelementptr i8, ptr addrspace(1) %98, i64 288230376151711744
  %100 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %97, i64 0, i64 0
  store ptr addrspace(1) %99, ptr addrspace(1) %100
  %101 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %94, i64 0, i32 1
  store i64 1, ptr addrspace(1) %101
  %102 = bitcast ptr addrspace(1) %94 to ptr addrspace(1)
  %103 = getelementptr i8, ptr addrspace(1) %102, i64 864691128455135236
  store ptr addrspace(1) %103, ptr %16
  %104 = load ptr addrspace(1), ptr %16
  call void @_Bb02ioprintln(ptr addrspace(1) %104), !dbg !25
  store ptr addrspace(1) null, ptr %17
  %105 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !26
  %106 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %105, i64 0, i32 3
  %107 = load ptr addrspace(1), ptr addrspace(1) %106, align 8
  %108 = bitcast ptr addrspace(1) %107 to ptr addrspace(1)
  %109 = addrspacecast ptr bitcast(ptr @.dec6 to ptr) to ptr addrspace(1)
  %110 = getelementptr i8, ptr addrspace(1) %109, i64 288230376151711744
  %111 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %108, i64 0, i64 0
  store ptr addrspace(1) %110, ptr addrspace(1) %111
  %112 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %105, i64 0, i32 1
  store i64 1, ptr addrspace(1) %112
  %113 = bitcast ptr addrspace(1) %105 to ptr addrspace(1)
  %114 = getelementptr i8, ptr addrspace(1) %113, i64 864691128455135236
  store ptr addrspace(1) %114, ptr %18
  %115 = load ptr addrspace(1), ptr %18
  call void @_Bb02ioprintln(ptr addrspace(1) %115), !dbg !27
  store ptr addrspace(1) null, ptr %19
  ret void
116:
  %117 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %117), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/neg1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 9, column: 16, scope: !5)
!9 = !DILocation(line: 11, column: 15, scope: !5)
!10 = !DILocation(line: 11, column: 15, scope: !5)
!11 = !DILocation(line: 11, column: 4, scope: !5)
!12 = !DILocation(line: 14, column: 15, scope: !5)
!13 = !DILocation(line: 14, column: 15, scope: !5)
!14 = !DILocation(line: 14, column: 4, scope: !5)
!15 = !DILocation(line: 17, column: 15, scope: !5)
!16 = !DILocation(line: 17, column: 15, scope: !5)
!17 = !DILocation(line: 17, column: 4, scope: !5)
!18 = !DILocation(line: 20, column: 15, scope: !5)
!19 = !DILocation(line: 20, column: 15, scope: !5)
!20 = !DILocation(line: 20, column: 4, scope: !5)
!21 = !DILocation(line: 23, column: 15, scope: !5)
!22 = !DILocation(line: 23, column: 15, scope: !5)
!23 = !DILocation(line: 23, column: 4, scope: !5)
!24 = !DILocation(line: 25, column: 15, scope: !5)
!25 = !DILocation(line: 25, column: 4, scope: !5)
!26 = !DILocation(line: 26, column: 15, scope: !5)
!27 = !DILocation(line: 26, column: 4, scope: !5)
