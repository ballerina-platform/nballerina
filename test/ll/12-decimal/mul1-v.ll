@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2452209997103235072], align 8
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 1, i64 -6771162039751540736], align 8
@.dec2 = internal unnamed_addr constant [2 x i64] [i64 0, i64 2452209997103235072], align 8
@.dec3 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2322168557862912], align 8
@.dec4 = internal unnamed_addr constant [2 x i64] [i64 0, i64 5188076401986633728], align 8
@.dec5 = internal unnamed_addr constant [2 x i64] [i64 -865536378825081601, i64 8646858456403230671], align 8
@.dec6 = internal unnamed_addr constant [2 x i64] [i64 -865536378825081601, i64 -576513580451545137], align 8
@.dec7 = internal unnamed_addr constant [2 x i64] [i64 0, i64 -3747065258716430336], align 8
@.dec8 = internal unnamed_addr constant [2 x i64] [i64 0, i64 576460752303423488], align 8
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
  %25 = alloca ptr addrspace(1)
  %26 = alloca ptr addrspace(1)
  %27 = alloca i8
  %28 = load ptr, ptr @_bal_stack_guard
  %29 = icmp ult ptr %27, %28
  br i1 %29, label %174, label %30
30:
  %31 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 3
  %33 = load ptr addrspace(1), ptr addrspace(1) %32, align 8
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %36 = getelementptr i8, ptr addrspace(1) %35, i64 288230376151711744
  %37 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 0
  store ptr addrspace(1) %36, ptr addrspace(1) %37
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 1
  store i64 1, ptr addrspace(1) %38
  %39 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %40 = getelementptr i8, ptr addrspace(1) %39, i64 864691128455135236
  store ptr addrspace(1) %40, ptr %1
  %41 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %41), !dbg !10
  store ptr addrspace(1) null, ptr %2
  %42 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 3
  %44 = load ptr addrspace(1), ptr addrspace(1) %43, align 8
  %45 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %46 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %47 = getelementptr i8, ptr addrspace(1) %46, i64 288230376151711744
  %48 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %45, i64 0, i64 0
  store ptr addrspace(1) %47, ptr addrspace(1) %48
  %49 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 1
  store i64 1, ptr addrspace(1) %49
  %50 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %51 = getelementptr i8, ptr addrspace(1) %50, i64 864691128455135236
  store ptr addrspace(1) %51, ptr %3
  %52 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %52), !dbg !12
  store ptr addrspace(1) null, ptr %4
  %53 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %54 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 3
  %55 = load ptr addrspace(1), ptr addrspace(1) %54, align 8
  %56 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %57 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %58 = getelementptr i8, ptr addrspace(1) %57, i64 288230376151711744
  %59 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %56, i64 0, i64 0
  store ptr addrspace(1) %58, ptr addrspace(1) %59
  %60 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 1
  store i64 1, ptr addrspace(1) %60
  %61 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %62 = getelementptr i8, ptr addrspace(1) %61, i64 864691128455135236
  store ptr addrspace(1) %62, ptr %5
  %63 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %63), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %64 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 3
  %66 = load ptr addrspace(1), ptr addrspace(1) %65, align 8
  %67 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %68 = addrspacecast ptr bitcast(ptr @.dec3 to ptr) to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 288230376151711744
  %70 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %67, i64 0, i64 0
  store ptr addrspace(1) %69, ptr addrspace(1) %70
  %71 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 1
  store i64 1, ptr addrspace(1) %71
  %72 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %73 = getelementptr i8, ptr addrspace(1) %72, i64 864691128455135236
  store ptr addrspace(1) %73, ptr %7
  %74 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %74), !dbg !16
  store ptr addrspace(1) null, ptr %8
  %75 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 3
  %77 = load ptr addrspace(1), ptr addrspace(1) %76, align 8
  %78 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %79 = addrspacecast ptr bitcast(ptr @.dec4 to ptr) to ptr addrspace(1)
  %80 = getelementptr i8, ptr addrspace(1) %79, i64 288230376151711744
  %81 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %78, i64 0, i64 0
  store ptr addrspace(1) %80, ptr addrspace(1) %81
  %82 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 1
  store i64 1, ptr addrspace(1) %82
  %83 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %84 = getelementptr i8, ptr addrspace(1) %83, i64 864691128455135236
  store ptr addrspace(1) %84, ptr %9
  %85 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %85), !dbg !18
  store ptr addrspace(1) null, ptr %10
  %86 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %87 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 3
  %88 = load ptr addrspace(1), ptr addrspace(1) %87, align 8
  %89 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %90 = addrspacecast ptr bitcast(ptr @.dec5 to ptr) to ptr addrspace(1)
  %91 = getelementptr i8, ptr addrspace(1) %90, i64 288230376151711744
  %92 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %89, i64 0, i64 0
  store ptr addrspace(1) %91, ptr addrspace(1) %92
  %93 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 1
  store i64 1, ptr addrspace(1) %93
  %94 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %95 = getelementptr i8, ptr addrspace(1) %94, i64 864691128455135236
  store ptr addrspace(1) %95, ptr %11
  %96 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %96), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %97 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %98 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %97, i64 0, i32 3
  %99 = load ptr addrspace(1), ptr addrspace(1) %98, align 8
  %100 = bitcast ptr addrspace(1) %99 to ptr addrspace(1)
  %101 = addrspacecast ptr bitcast(ptr @.dec6 to ptr) to ptr addrspace(1)
  %102 = getelementptr i8, ptr addrspace(1) %101, i64 288230376151711744
  %103 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %100, i64 0, i64 0
  store ptr addrspace(1) %102, ptr addrspace(1) %103
  %104 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %97, i64 0, i32 1
  store i64 1, ptr addrspace(1) %104
  %105 = bitcast ptr addrspace(1) %97 to ptr addrspace(1)
  %106 = getelementptr i8, ptr addrspace(1) %105, i64 864691128455135236
  store ptr addrspace(1) %106, ptr %13
  %107 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %107), !dbg !22
  store ptr addrspace(1) null, ptr %14
  %108 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %109 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 3
  %110 = load ptr addrspace(1), ptr addrspace(1) %109, align 8
  %111 = bitcast ptr addrspace(1) %110 to ptr addrspace(1)
  %112 = addrspacecast ptr bitcast(ptr @.dec7 to ptr) to ptr addrspace(1)
  %113 = getelementptr i8, ptr addrspace(1) %112, i64 288230376151711744
  %114 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %111, i64 0, i64 0
  store ptr addrspace(1) %113, ptr addrspace(1) %114
  %115 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 1
  store i64 1, ptr addrspace(1) %115
  %116 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %117 = getelementptr i8, ptr addrspace(1) %116, i64 864691128455135236
  store ptr addrspace(1) %117, ptr %15
  %118 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %118), !dbg !24
  store ptr addrspace(1) null, ptr %16
  %119 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %120 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %119, i64 0, i32 3
  %121 = load ptr addrspace(1), ptr addrspace(1) %120, align 8
  %122 = bitcast ptr addrspace(1) %121 to ptr addrspace(1)
  %123 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %124 = getelementptr i8, ptr addrspace(1) %123, i64 288230376151711744
  %125 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %122, i64 0, i64 0
  store ptr addrspace(1) %124, ptr addrspace(1) %125
  %126 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %119, i64 0, i32 1
  store i64 1, ptr addrspace(1) %126
  %127 = bitcast ptr addrspace(1) %119 to ptr addrspace(1)
  %128 = getelementptr i8, ptr addrspace(1) %127, i64 864691128455135236
  store ptr addrspace(1) %128, ptr %17
  %129 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %129), !dbg !26
  store ptr addrspace(1) null, ptr %18
  %130 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %131 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %130, i64 0, i32 3
  %132 = load ptr addrspace(1), ptr addrspace(1) %131, align 8
  %133 = bitcast ptr addrspace(1) %132 to ptr addrspace(1)
  %134 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %135 = getelementptr i8, ptr addrspace(1) %134, i64 288230376151711744
  %136 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %133, i64 0, i64 0
  store ptr addrspace(1) %135, ptr addrspace(1) %136
  %137 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %130, i64 0, i32 1
  store i64 1, ptr addrspace(1) %137
  %138 = bitcast ptr addrspace(1) %130 to ptr addrspace(1)
  %139 = getelementptr i8, ptr addrspace(1) %138, i64 864691128455135236
  store ptr addrspace(1) %139, ptr %19
  %140 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %140), !dbg !28
  store ptr addrspace(1) null, ptr %20
  %141 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !29
  %142 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %141, i64 0, i32 3
  %143 = load ptr addrspace(1), ptr addrspace(1) %142, align 8
  %144 = bitcast ptr addrspace(1) %143 to ptr addrspace(1)
  %145 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %146 = getelementptr i8, ptr addrspace(1) %145, i64 288230376151711744
  %147 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %144, i64 0, i64 0
  store ptr addrspace(1) %146, ptr addrspace(1) %147
  %148 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %141, i64 0, i32 1
  store i64 1, ptr addrspace(1) %148
  %149 = bitcast ptr addrspace(1) %141 to ptr addrspace(1)
  %150 = getelementptr i8, ptr addrspace(1) %149, i64 864691128455135236
  store ptr addrspace(1) %150, ptr %21
  %151 = load ptr addrspace(1), ptr %21
  call void @_Bb02ioprintln(ptr addrspace(1) %151), !dbg !30
  store ptr addrspace(1) null, ptr %22
  %152 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %153 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %152, i64 0, i32 3
  %154 = load ptr addrspace(1), ptr addrspace(1) %153, align 8
  %155 = bitcast ptr addrspace(1) %154 to ptr addrspace(1)
  %156 = addrspacecast ptr bitcast(ptr @.dec8 to ptr) to ptr addrspace(1)
  %157 = getelementptr i8, ptr addrspace(1) %156, i64 288230376151711744
  %158 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %155, i64 0, i64 0
  store ptr addrspace(1) %157, ptr addrspace(1) %158
  %159 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %152, i64 0, i32 1
  store i64 1, ptr addrspace(1) %159
  %160 = bitcast ptr addrspace(1) %152 to ptr addrspace(1)
  %161 = getelementptr i8, ptr addrspace(1) %160, i64 864691128455135236
  store ptr addrspace(1) %161, ptr %23
  %162 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %162), !dbg !32
  store ptr addrspace(1) null, ptr %24
  %163 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !33
  %164 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %163, i64 0, i32 3
  %165 = load ptr addrspace(1), ptr addrspace(1) %164, align 8
  %166 = bitcast ptr addrspace(1) %165 to ptr addrspace(1)
  %167 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %168 = getelementptr i8, ptr addrspace(1) %167, i64 288230376151711744
  %169 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %166, i64 0, i64 0
  store ptr addrspace(1) %168, ptr addrspace(1) %169
  %170 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %163, i64 0, i32 1
  store i64 1, ptr addrspace(1) %170
  %171 = bitcast ptr addrspace(1) %163 to ptr addrspace(1)
  %172 = getelementptr i8, ptr addrspace(1) %171, i64 864691128455135236
  store ptr addrspace(1) %172, ptr %25
  %173 = load ptr addrspace(1), ptr %25
  call void @_Bb02ioprintln(ptr addrspace(1) %173), !dbg !34
  store ptr addrspace(1) null, ptr %26
  ret void
174:
  %175 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %175), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/mul1-v.bal", directory:"")
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
!31 = !DILocation(line: 14, column: 15, scope: !5)
!32 = !DILocation(line: 14, column: 4, scope: !5)
!33 = !DILocation(line: 15, column: 15, scope: !5)
!34 = !DILocation(line: 15, column: 4, scope: !5)
