@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2460865352637087744], align 8
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2443554641569382400], align 8
@.dec2 = internal unnamed_addr constant [2 x i64] [i64 18, i64 2452984053289189376], align 8
@.dec3 = internal unnamed_addr constant [2 x i64] [i64 2, i64 2452984053289189376], align 8
@.dec4 = internal unnamed_addr constant [2 x i64] [i64 2, i64 2452139628359057408], align 8
@.dec5 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2452209997103235072], align 8
@.dec6 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2322168557862912], align 8
@.dec7 = internal unnamed_addr constant [2 x i64] [i64 1, i64 -9221049868296912896], align 8
@.dec8 = internal unnamed_addr constant [2 x i64] [i64 -865536378825081601, i64 8646858456403230671], align 8
@.dec9 = internal unnamed_addr constant [2 x i64] [i64 -865536378825081601, i64 -576513580451545137], align 8
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
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca i8
  %26 = load ptr, ptr @_bal_stack_guard
  %27 = icmp ult ptr %25, %26
  br i1 %27, label %161, label %28
28:
  %29 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 3
  %31 = load ptr addrspace(1), ptr addrspace(1) %30, align 8
  %32 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %33 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %34 = getelementptr i8, ptr addrspace(1) %33, i64 288230376151711744
  %35 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %32, i64 0, i64 0
  store ptr addrspace(1) %34, ptr addrspace(1) %35
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 1
  store i64 1, ptr addrspace(1) %36
  %37 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %38 = getelementptr i8, ptr addrspace(1) %37, i64 864691128455135236
  store ptr addrspace(1) %38, ptr %1
  %39 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %39), !dbg !10
  store ptr addrspace(1) null, ptr %2
  %40 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 3
  %42 = load ptr addrspace(1), ptr addrspace(1) %41, align 8
  %43 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %44 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %45 = getelementptr i8, ptr addrspace(1) %44, i64 288230376151711744
  %46 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %43, i64 0, i64 0
  store ptr addrspace(1) %45, ptr addrspace(1) %46
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 1
  store i64 1, ptr addrspace(1) %47
  %48 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %49 = getelementptr i8, ptr addrspace(1) %48, i64 864691128455135236
  store ptr addrspace(1) %49, ptr %3
  %50 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %50), !dbg !12
  store ptr addrspace(1) null, ptr %4
  %51 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 3
  %53 = load ptr addrspace(1), ptr addrspace(1) %52, align 8
  %54 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %55 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %56 = getelementptr i8, ptr addrspace(1) %55, i64 288230376151711744
  %57 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %54, i64 0, i64 0
  store ptr addrspace(1) %56, ptr addrspace(1) %57
  %58 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  store i64 1, ptr addrspace(1) %58
  %59 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %60 = getelementptr i8, ptr addrspace(1) %59, i64 864691128455135236
  store ptr addrspace(1) %60, ptr %5
  %61 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %61), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %62 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 3
  %64 = load ptr addrspace(1), ptr addrspace(1) %63, align 8
  %65 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %66 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %67 = getelementptr i8, ptr addrspace(1) %66, i64 288230376151711744
  %68 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %65, i64 0, i64 0
  store ptr addrspace(1) %67, ptr addrspace(1) %68
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 1
  store i64 1, ptr addrspace(1) %69
  %70 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %71 = getelementptr i8, ptr addrspace(1) %70, i64 864691128455135236
  store ptr addrspace(1) %71, ptr %7
  %72 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %72), !dbg !16
  store ptr addrspace(1) null, ptr %8
  %73 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %74 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 3
  %75 = load ptr addrspace(1), ptr addrspace(1) %74, align 8
  %76 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %77 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %78 = getelementptr i8, ptr addrspace(1) %77, i64 288230376151711744
  %79 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %76, i64 0, i64 0
  store ptr addrspace(1) %78, ptr addrspace(1) %79
  %80 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 1
  store i64 1, ptr addrspace(1) %80
  %81 = bitcast ptr addrspace(1) %73 to ptr addrspace(1)
  %82 = getelementptr i8, ptr addrspace(1) %81, i64 864691128455135236
  store ptr addrspace(1) %82, ptr %9
  %83 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %83), !dbg !18
  store ptr addrspace(1) null, ptr %10
  %84 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 3
  %86 = load ptr addrspace(1), ptr addrspace(1) %85, align 8
  %87 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %88 = addrspacecast ptr bitcast(ptr @.dec3 to ptr) to ptr addrspace(1)
  %89 = getelementptr i8, ptr addrspace(1) %88, i64 288230376151711744
  %90 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %87, i64 0, i64 0
  store ptr addrspace(1) %89, ptr addrspace(1) %90
  %91 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 1
  store i64 1, ptr addrspace(1) %91
  %92 = bitcast ptr addrspace(1) %84 to ptr addrspace(1)
  %93 = getelementptr i8, ptr addrspace(1) %92, i64 864691128455135236
  store ptr addrspace(1) %93, ptr %11
  %94 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %94), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %95 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %96 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %95, i64 0, i32 3
  %97 = load ptr addrspace(1), ptr addrspace(1) %96, align 8
  %98 = bitcast ptr addrspace(1) %97 to ptr addrspace(1)
  %99 = addrspacecast ptr bitcast(ptr @.dec4 to ptr) to ptr addrspace(1)
  %100 = getelementptr i8, ptr addrspace(1) %99, i64 288230376151711744
  %101 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %98, i64 0, i64 0
  store ptr addrspace(1) %100, ptr addrspace(1) %101
  %102 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %95, i64 0, i32 1
  store i64 1, ptr addrspace(1) %102
  %103 = bitcast ptr addrspace(1) %95 to ptr addrspace(1)
  %104 = getelementptr i8, ptr addrspace(1) %103, i64 864691128455135236
  store ptr addrspace(1) %104, ptr %13
  %105 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %105), !dbg !22
  store ptr addrspace(1) null, ptr %14
  %106 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %107 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %106, i64 0, i32 3
  %108 = load ptr addrspace(1), ptr addrspace(1) %107, align 8
  %109 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %110 = addrspacecast ptr bitcast(ptr @.dec5 to ptr) to ptr addrspace(1)
  %111 = getelementptr i8, ptr addrspace(1) %110, i64 288230376151711744
  %112 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %109, i64 0, i64 0
  store ptr addrspace(1) %111, ptr addrspace(1) %112
  %113 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %106, i64 0, i32 1
  store i64 1, ptr addrspace(1) %113
  %114 = bitcast ptr addrspace(1) %106 to ptr addrspace(1)
  %115 = getelementptr i8, ptr addrspace(1) %114, i64 864691128455135236
  store ptr addrspace(1) %115, ptr %15
  %116 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %116), !dbg !24
  store ptr addrspace(1) null, ptr %16
  %117 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %118 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %117, i64 0, i32 3
  %119 = load ptr addrspace(1), ptr addrspace(1) %118, align 8
  %120 = bitcast ptr addrspace(1) %119 to ptr addrspace(1)
  %121 = addrspacecast ptr bitcast(ptr @.dec6 to ptr) to ptr addrspace(1)
  %122 = getelementptr i8, ptr addrspace(1) %121, i64 288230376151711744
  %123 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %120, i64 0, i64 0
  store ptr addrspace(1) %122, ptr addrspace(1) %123
  %124 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %117, i64 0, i32 1
  store i64 1, ptr addrspace(1) %124
  %125 = bitcast ptr addrspace(1) %117 to ptr addrspace(1)
  %126 = getelementptr i8, ptr addrspace(1) %125, i64 864691128455135236
  store ptr addrspace(1) %126, ptr %17
  %127 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %127), !dbg !26
  store ptr addrspace(1) null, ptr %18
  %128 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %129 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %128, i64 0, i32 3
  %130 = load ptr addrspace(1), ptr addrspace(1) %129, align 8
  %131 = bitcast ptr addrspace(1) %130 to ptr addrspace(1)
  %132 = addrspacecast ptr bitcast(ptr @.dec7 to ptr) to ptr addrspace(1)
  %133 = getelementptr i8, ptr addrspace(1) %132, i64 288230376151711744
  %134 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %131, i64 0, i64 0
  store ptr addrspace(1) %133, ptr addrspace(1) %134
  %135 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %128, i64 0, i32 1
  store i64 1, ptr addrspace(1) %135
  %136 = bitcast ptr addrspace(1) %128 to ptr addrspace(1)
  %137 = getelementptr i8, ptr addrspace(1) %136, i64 864691128455135236
  store ptr addrspace(1) %137, ptr %19
  %138 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %138), !dbg !28
  store ptr addrspace(1) null, ptr %20
  %139 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !29
  %140 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %139, i64 0, i32 3
  %141 = load ptr addrspace(1), ptr addrspace(1) %140, align 8
  %142 = bitcast ptr addrspace(1) %141 to ptr addrspace(1)
  %143 = addrspacecast ptr bitcast(ptr @.dec8 to ptr) to ptr addrspace(1)
  %144 = getelementptr i8, ptr addrspace(1) %143, i64 288230376151711744
  %145 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %142, i64 0, i64 0
  store ptr addrspace(1) %144, ptr addrspace(1) %145
  %146 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %139, i64 0, i32 1
  store i64 1, ptr addrspace(1) %146
  %147 = bitcast ptr addrspace(1) %139 to ptr addrspace(1)
  %148 = getelementptr i8, ptr addrspace(1) %147, i64 864691128455135236
  store ptr addrspace(1) %148, ptr %21
  %149 = load ptr addrspace(1), ptr %21
  call void @_Bb02ioprintln(ptr addrspace(1) %149), !dbg !30
  store ptr addrspace(1) null, ptr %22
  %150 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %151 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %150, i64 0, i32 3
  %152 = load ptr addrspace(1), ptr addrspace(1) %151, align 8
  %153 = bitcast ptr addrspace(1) %152 to ptr addrspace(1)
  %154 = addrspacecast ptr bitcast(ptr @.dec9 to ptr) to ptr addrspace(1)
  %155 = getelementptr i8, ptr addrspace(1) %154, i64 288230376151711744
  %156 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %153, i64 0, i64 0
  store ptr addrspace(1) %155, ptr addrspace(1) %156
  %157 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %150, i64 0, i32 1
  store i64 1, ptr addrspace(1) %157
  %158 = bitcast ptr addrspace(1) %150 to ptr addrspace(1)
  %159 = getelementptr i8, ptr addrspace(1) %158, i64 864691128455135236
  store ptr addrspace(1) %159, ptr %23
  %160 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %160), !dbg !32
  store ptr addrspace(1) null, ptr %24
  ret void
161:
  %162 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %162), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/const1-v.bal", directory:"")
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
!25 = !DILocation(line: 12, column: 15, scope: !5)
!26 = !DILocation(line: 12, column: 4, scope: !5)
!27 = !DILocation(line: 13, column: 15, scope: !5)
!28 = !DILocation(line: 13, column: 4, scope: !5)
!29 = !DILocation(line: 14, column: 15, scope: !5)
!30 = !DILocation(line: 14, column: 4, scope: !5)
!31 = !DILocation(line: 15, column: 15, scope: !5)
!32 = !DILocation(line: 15, column: 4, scope: !5)
