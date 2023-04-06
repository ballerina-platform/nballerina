@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2452209997103235072], align 8
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 0, i64 2452209997103235072], align 8
@.dec2 = internal unnamed_addr constant [2 x i64] [i64 1, i64 -6771162039751540736], align 8
@.dec3 = internal unnamed_addr constant [2 x i64] [i64 2356719431, i64 2452209997103235072], align 8
@.dec4 = internal unnamed_addr constant [2 x i64] [i64 2356719430, i64 2452209997103235072], align 8
@.dec5 = internal unnamed_addr constant [2 x i64] [i64 2356719432, i64 2452209997103235072], align 8
@.dec6 = internal unnamed_addr constant [2 x i64] [i64 2356719432, i64 -6771162039751540736], align 8
@.dec7 = internal unnamed_addr constant [2 x i64] [i64 2356719431, i64 -6771162039751540736], align 8
@.dec8 = internal unnamed_addr constant [2 x i64] [i64 2356719433, i64 -6771162039751540736], align 8
@.dec9 = internal unnamed_addr constant [2 x i64] [i64 -7742266043949656307, i64 2452209997103235072], align 8
@.dec10 = internal unnamed_addr constant [2 x i64] [i64 -7742266043949657042, i64 -6771162039751540736], align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
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
  %23 = alloca i8
  %24 = load ptr, ptr @_bal_stack_guard
  %25 = icmp ult ptr %23, %24
  br i1 %25, label %148, label %26
26:
  %27 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 3
  %29 = load ptr addrspace(1), ptr addrspace(1) %28, align 8
  %30 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %31 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %32 = getelementptr i8, ptr addrspace(1) %31, i64 288230376151711744
  %33 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %30, i64 0, i64 0
  store ptr addrspace(1) %32, ptr addrspace(1) %33
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 1
  store i64 1, ptr addrspace(1) %34
  %35 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %36 = getelementptr i8, ptr addrspace(1) %35, i64 864691128455135236
  store ptr addrspace(1) %36, ptr %1
  %37 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %37), !dbg !10
  store ptr addrspace(1) null, ptr %2
  %38 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %39 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 3
  %40 = load ptr addrspace(1), ptr addrspace(1) %39, align 8
  %41 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %42 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %43 = getelementptr i8, ptr addrspace(1) %42, i64 288230376151711744
  %44 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %41, i64 0, i64 0
  store ptr addrspace(1) %43, ptr addrspace(1) %44
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 1
  store i64 1, ptr addrspace(1) %45
  %46 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %47 = getelementptr i8, ptr addrspace(1) %46, i64 864691128455135236
  store ptr addrspace(1) %47, ptr %3
  %48 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %48), !dbg !12
  store ptr addrspace(1) null, ptr %4
  %49 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %50 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %49, i64 0, i32 3
  %51 = load ptr addrspace(1), ptr addrspace(1) %50, align 8
  %52 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %53 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %54 = getelementptr i8, ptr addrspace(1) %53, i64 288230376151711744
  %55 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %52, i64 0, i64 0
  store ptr addrspace(1) %54, ptr addrspace(1) %55
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %49, i64 0, i32 1
  store i64 1, ptr addrspace(1) %56
  %57 = bitcast ptr addrspace(1) %49 to ptr addrspace(1)
  %58 = getelementptr i8, ptr addrspace(1) %57, i64 864691128455135236
  store ptr addrspace(1) %58, ptr %5
  %59 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %59), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %60 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 3
  %62 = load ptr addrspace(1), ptr addrspace(1) %61, align 8
  %63 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %64 = addrspacecast ptr bitcast(ptr @.dec3 to ptr) to ptr addrspace(1)
  %65 = getelementptr i8, ptr addrspace(1) %64, i64 288230376151711744
  %66 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %63, i64 0, i64 0
  store ptr addrspace(1) %65, ptr addrspace(1) %66
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 1
  store i64 1, ptr addrspace(1) %67
  %68 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 864691128455135236
  store ptr addrspace(1) %69, ptr %7
  %70 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %70), !dbg !16
  store ptr addrspace(1) null, ptr %8
  %71 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %72 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %71, i64 0, i32 3
  %73 = load ptr addrspace(1), ptr addrspace(1) %72, align 8
  %74 = bitcast ptr addrspace(1) %73 to ptr addrspace(1)
  %75 = addrspacecast ptr bitcast(ptr @.dec4 to ptr) to ptr addrspace(1)
  %76 = getelementptr i8, ptr addrspace(1) %75, i64 288230376151711744
  %77 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %74, i64 0, i64 0
  store ptr addrspace(1) %76, ptr addrspace(1) %77
  %78 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %71, i64 0, i32 1
  store i64 1, ptr addrspace(1) %78
  %79 = bitcast ptr addrspace(1) %71 to ptr addrspace(1)
  %80 = getelementptr i8, ptr addrspace(1) %79, i64 864691128455135236
  store ptr addrspace(1) %80, ptr %9
  %81 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %81), !dbg !18
  store ptr addrspace(1) null, ptr %10
  %82 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %83 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %82, i64 0, i32 3
  %84 = load ptr addrspace(1), ptr addrspace(1) %83, align 8
  %85 = bitcast ptr addrspace(1) %84 to ptr addrspace(1)
  %86 = addrspacecast ptr bitcast(ptr @.dec5 to ptr) to ptr addrspace(1)
  %87 = getelementptr i8, ptr addrspace(1) %86, i64 288230376151711744
  %88 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %85, i64 0, i64 0
  store ptr addrspace(1) %87, ptr addrspace(1) %88
  %89 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %82, i64 0, i32 1
  store i64 1, ptr addrspace(1) %89
  %90 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %91 = getelementptr i8, ptr addrspace(1) %90, i64 864691128455135236
  store ptr addrspace(1) %91, ptr %11
  %92 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %92), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %93 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %94 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 3
  %95 = load ptr addrspace(1), ptr addrspace(1) %94, align 8
  %96 = bitcast ptr addrspace(1) %95 to ptr addrspace(1)
  %97 = addrspacecast ptr bitcast(ptr @.dec6 to ptr) to ptr addrspace(1)
  %98 = getelementptr i8, ptr addrspace(1) %97, i64 288230376151711744
  %99 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %96, i64 0, i64 0
  store ptr addrspace(1) %98, ptr addrspace(1) %99
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 1
  store i64 1, ptr addrspace(1) %100
  %101 = bitcast ptr addrspace(1) %93 to ptr addrspace(1)
  %102 = getelementptr i8, ptr addrspace(1) %101, i64 864691128455135236
  store ptr addrspace(1) %102, ptr %13
  %103 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %103), !dbg !22
  store ptr addrspace(1) null, ptr %14
  %104 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %105 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %104, i64 0, i32 3
  %106 = load ptr addrspace(1), ptr addrspace(1) %105, align 8
  %107 = bitcast ptr addrspace(1) %106 to ptr addrspace(1)
  %108 = addrspacecast ptr bitcast(ptr @.dec7 to ptr) to ptr addrspace(1)
  %109 = getelementptr i8, ptr addrspace(1) %108, i64 288230376151711744
  %110 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %107, i64 0, i64 0
  store ptr addrspace(1) %109, ptr addrspace(1) %110
  %111 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %104, i64 0, i32 1
  store i64 1, ptr addrspace(1) %111
  %112 = bitcast ptr addrspace(1) %104 to ptr addrspace(1)
  %113 = getelementptr i8, ptr addrspace(1) %112, i64 864691128455135236
  store ptr addrspace(1) %113, ptr %15
  %114 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %114), !dbg !24
  store ptr addrspace(1) null, ptr %16
  %115 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %116 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %115, i64 0, i32 3
  %117 = load ptr addrspace(1), ptr addrspace(1) %116, align 8
  %118 = bitcast ptr addrspace(1) %117 to ptr addrspace(1)
  %119 = addrspacecast ptr bitcast(ptr @.dec8 to ptr) to ptr addrspace(1)
  %120 = getelementptr i8, ptr addrspace(1) %119, i64 288230376151711744
  %121 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %118, i64 0, i64 0
  store ptr addrspace(1) %120, ptr addrspace(1) %121
  %122 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %115, i64 0, i32 1
  store i64 1, ptr addrspace(1) %122
  %123 = bitcast ptr addrspace(1) %115 to ptr addrspace(1)
  %124 = getelementptr i8, ptr addrspace(1) %123, i64 864691128455135236
  store ptr addrspace(1) %124, ptr %17
  %125 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %125), !dbg !26
  store ptr addrspace(1) null, ptr %18
  %126 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %127 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %126, i64 0, i32 3
  %128 = load ptr addrspace(1), ptr addrspace(1) %127, align 8
  %129 = bitcast ptr addrspace(1) %128 to ptr addrspace(1)
  %130 = addrspacecast ptr bitcast(ptr @.dec9 to ptr) to ptr addrspace(1)
  %131 = getelementptr i8, ptr addrspace(1) %130, i64 288230376151711744
  %132 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %129, i64 0, i64 0
  store ptr addrspace(1) %131, ptr addrspace(1) %132
  %133 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %126, i64 0, i32 1
  store i64 1, ptr addrspace(1) %133
  %134 = bitcast ptr addrspace(1) %126 to ptr addrspace(1)
  %135 = getelementptr i8, ptr addrspace(1) %134, i64 864691128455135236
  store ptr addrspace(1) %135, ptr %19
  %136 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %136), !dbg !28
  store ptr addrspace(1) null, ptr %20
  %137 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !29
  %138 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %137, i64 0, i32 3
  %139 = load ptr addrspace(1), ptr addrspace(1) %138, align 8
  %140 = bitcast ptr addrspace(1) %139 to ptr addrspace(1)
  %141 = addrspacecast ptr bitcast(ptr @.dec10 to ptr) to ptr addrspace(1)
  %142 = getelementptr i8, ptr addrspace(1) %141, i64 288230376151711744
  %143 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %140, i64 0, i64 0
  store ptr addrspace(1) %142, ptr addrspace(1) %143
  %144 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %137, i64 0, i32 1
  store i64 1, ptr addrspace(1) %144
  %145 = bitcast ptr addrspace(1) %137 to ptr addrspace(1)
  %146 = getelementptr i8, ptr addrspace(1) %145, i64 864691128455135236
  store ptr addrspace(1) %146, ptr %21
  %147 = load ptr addrspace(1), ptr %21
  call void @_Bb02ioprintln(ptr addrspace(1) %147), !dbg !30
  store ptr addrspace(1) null, ptr %22
  ret void
148:
  %149 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %149), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/fromint1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 15, scope: !5)
!10 = !DILocation(line: 3, column: 4, scope: !5)
!11 = !DILocation(line: 4, column: 15, scope: !5)
!12 = !DILocation(line: 4, column: 4, scope: !5)
!13 = !DILocation(line: 5, column: 15, scope: !5)
!14 = !DILocation(line: 5, column: 4, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 4, scope: !5)
!17 = !DILocation(line: 7, column: 15, scope: !5)
!18 = !DILocation(line: 7, column: 4, scope: !5)
!19 = !DILocation(line: 8, column: 15, scope: !5)
!20 = !DILocation(line: 8, column: 4, scope: !5)
!21 = !DILocation(line: 9, column: 15, scope: !5)
!22 = !DILocation(line: 9, column: 4, scope: !5)
!23 = !DILocation(line: 10, column: 15, scope: !5)
!24 = !DILocation(line: 10, column: 4, scope: !5)
!25 = !DILocation(line: 11, column: 15, scope: !5)
!26 = !DILocation(line: 11, column: 4, scope: !5)
!27 = !DILocation(line: 12, column: 15, scope: !5)
!28 = !DILocation(line: 12, column: 4, scope: !5)
!29 = !DILocation(line: 13, column: 15, scope: !5)
!30 = !DILocation(line: 13, column: 4, scope: !5)
