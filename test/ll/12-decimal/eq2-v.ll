@_bal_stack_guard = external global ptr
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2452209997103235072], align 8
@_Bi04root0 = external constant {i32}
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 1, i64 -6771162039751540736], align 8
@.dec2 = internal unnamed_addr constant [2 x i64] [i64 0, i64 2452209997103235072], align 8
@.dec3 = internal unnamed_addr constant [2 x i64] [i64 -865536378825081601, i64 8646858456403230671], align 8
@.dec4 = internal unnamed_addr constant [2 x i64] [i64 1, i64 4899846025834921984], align 8
@.dec5 = internal unnamed_addr constant [2 x i64] [i64 -865536378825081601, i64 4899863566430977999], align 8
@.dec6 = internal unnamed_addr constant [2 x i64] [i64 -865536378825081698, i64 8646788087659053007], align 8
@.dec7 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2322168557862912], align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_bal_decimal_cmp(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %d1 = alloca ptr addrspace(1)
  %d2 = alloca ptr addrspace(1)
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
  br i1 %24, label %173, label %25
25:
  %26 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %27 = getelementptr i8, ptr addrspace(1) %26, i64 288230376151711744
  store ptr addrspace(1) %27, ptr %d1
  %28 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %29 = getelementptr i8, ptr addrspace(1) %28, i64 288230376151711744
  store ptr addrspace(1) %29, ptr %d2
  %30 = load ptr addrspace(1), ptr %d1
  %31 = load ptr addrspace(1), ptr %d2
  %32 = call i64 @_bal_decimal_cmp(ptr addrspace(1) %30, ptr addrspace(1) %31), !dbg !9
  %33 = icmp eq i64 %32, 0
  store i1 %33, ptr %1
  %34 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 3
  %36 = load ptr addrspace(1), ptr addrspace(1) %35, align 8
  %37 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %38 = load i1, ptr %1
  %39 = zext i1 %38 to i64
  %40 = or i64 %39, 72057594037927936
  %41 = getelementptr i8, ptr addrspace(1) null, i64 %40
  %42 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %37, i64 0, i64 0
  store ptr addrspace(1) %41, ptr addrspace(1) %42
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 1
  store i64 1, ptr addrspace(1) %43
  %44 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %45 = getelementptr i8, ptr addrspace(1) %44, i64 864691128455135236
  store ptr addrspace(1) %45, ptr %2
  %46 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %46), !dbg !11
  store ptr addrspace(1) null, ptr %3
  %47 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %48 = getelementptr i8, ptr addrspace(1) %47, i64 288230376151711744
  store ptr addrspace(1) %48, ptr %d1
  %49 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %50 = getelementptr i8, ptr addrspace(1) %49, i64 288230376151711744
  store ptr addrspace(1) %50, ptr %d2
  %51 = load ptr addrspace(1), ptr %d1
  %52 = load ptr addrspace(1), ptr %d2
  %53 = call i64 @_bal_decimal_cmp(ptr addrspace(1) %51, ptr addrspace(1) %52), !dbg !12
  %54 = icmp ne i64 %53, 0
  store i1 %54, ptr %4
  %55 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 3
  %57 = load ptr addrspace(1), ptr addrspace(1) %56, align 8
  %58 = bitcast ptr addrspace(1) %57 to ptr addrspace(1)
  %59 = load i1, ptr %4
  %60 = zext i1 %59 to i64
  %61 = or i64 %60, 72057594037927936
  %62 = getelementptr i8, ptr addrspace(1) null, i64 %61
  %63 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %58, i64 0, i64 0
  store ptr addrspace(1) %62, ptr addrspace(1) %63
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 1
  store i64 1, ptr addrspace(1) %64
  %65 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %66 = getelementptr i8, ptr addrspace(1) %65, i64 864691128455135236
  store ptr addrspace(1) %66, ptr %5
  %67 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %67), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %68 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 288230376151711744
  store ptr addrspace(1) %69, ptr %d1
  %70 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %71 = getelementptr i8, ptr addrspace(1) %70, i64 288230376151711744
  store ptr addrspace(1) %71, ptr %d2
  %72 = load ptr addrspace(1), ptr %d1
  %73 = load ptr addrspace(1), ptr %d2
  %74 = call i64 @_bal_decimal_cmp(ptr addrspace(1) %72, ptr addrspace(1) %73), !dbg !15
  %75 = icmp eq i64 %74, 0
  store i1 %75, ptr %7
  %76 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %77 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %76, i64 0, i32 3
  %78 = load ptr addrspace(1), ptr addrspace(1) %77, align 8
  %79 = bitcast ptr addrspace(1) %78 to ptr addrspace(1)
  %80 = load i1, ptr %7
  %81 = zext i1 %80 to i64
  %82 = or i64 %81, 72057594037927936
  %83 = getelementptr i8, ptr addrspace(1) null, i64 %82
  %84 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %79, i64 0, i64 0
  store ptr addrspace(1) %83, ptr addrspace(1) %84
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %76, i64 0, i32 1
  store i64 1, ptr addrspace(1) %85
  %86 = bitcast ptr addrspace(1) %76 to ptr addrspace(1)
  %87 = getelementptr i8, ptr addrspace(1) %86, i64 864691128455135236
  store ptr addrspace(1) %87, ptr %8
  %88 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %88), !dbg !17
  store ptr addrspace(1) null, ptr %9
  %89 = addrspacecast ptr bitcast(ptr @.dec3 to ptr) to ptr addrspace(1)
  %90 = getelementptr i8, ptr addrspace(1) %89, i64 288230376151711744
  store ptr addrspace(1) %90, ptr %d1
  %91 = addrspacecast ptr bitcast(ptr @.dec4 to ptr) to ptr addrspace(1)
  %92 = getelementptr i8, ptr addrspace(1) %91, i64 288230376151711744
  store ptr addrspace(1) %92, ptr %d2
  %93 = load ptr addrspace(1), ptr %d1
  %94 = load ptr addrspace(1), ptr %d2
  %95 = call i64 @_bal_decimal_cmp(ptr addrspace(1) %93, ptr addrspace(1) %94), !dbg !18
  %96 = icmp ne i64 %95, 0
  store i1 %96, ptr %10
  %97 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %98 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %97, i64 0, i32 3
  %99 = load ptr addrspace(1), ptr addrspace(1) %98, align 8
  %100 = bitcast ptr addrspace(1) %99 to ptr addrspace(1)
  %101 = load i1, ptr %10
  %102 = zext i1 %101 to i64
  %103 = or i64 %102, 72057594037927936
  %104 = getelementptr i8, ptr addrspace(1) null, i64 %103
  %105 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %100, i64 0, i64 0
  store ptr addrspace(1) %104, ptr addrspace(1) %105
  %106 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %97, i64 0, i32 1
  store i64 1, ptr addrspace(1) %106
  %107 = bitcast ptr addrspace(1) %97 to ptr addrspace(1)
  %108 = getelementptr i8, ptr addrspace(1) %107, i64 864691128455135236
  store ptr addrspace(1) %108, ptr %11
  %109 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %109), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %110 = addrspacecast ptr bitcast(ptr @.dec5 to ptr) to ptr addrspace(1)
  %111 = getelementptr i8, ptr addrspace(1) %110, i64 288230376151711744
  store ptr addrspace(1) %111, ptr %d1
  %112 = addrspacecast ptr bitcast(ptr @.dec6 to ptr) to ptr addrspace(1)
  %113 = getelementptr i8, ptr addrspace(1) %112, i64 288230376151711744
  store ptr addrspace(1) %113, ptr %d2
  %114 = load ptr addrspace(1), ptr %d1
  %115 = load ptr addrspace(1), ptr %d2
  %116 = call i64 @_bal_decimal_cmp(ptr addrspace(1) %114, ptr addrspace(1) %115), !dbg !21
  %117 = icmp eq i64 %116, 0
  store i1 %117, ptr %13
  %118 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %119 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 3
  %120 = load ptr addrspace(1), ptr addrspace(1) %119, align 8
  %121 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %122 = load i1, ptr %13
  %123 = zext i1 %122 to i64
  %124 = or i64 %123, 72057594037927936
  %125 = getelementptr i8, ptr addrspace(1) null, i64 %124
  %126 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %121, i64 0, i64 0
  store ptr addrspace(1) %125, ptr addrspace(1) %126
  %127 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 1
  store i64 1, ptr addrspace(1) %127
  %128 = bitcast ptr addrspace(1) %118 to ptr addrspace(1)
  %129 = getelementptr i8, ptr addrspace(1) %128, i64 864691128455135236
  store ptr addrspace(1) %129, ptr %14
  %130 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %130), !dbg !23
  store ptr addrspace(1) null, ptr %15
  %131 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %132 = getelementptr i8, ptr addrspace(1) %131, i64 288230376151711744
  store ptr addrspace(1) %132, ptr %d1
  %133 = addrspacecast ptr bitcast(ptr @.dec7 to ptr) to ptr addrspace(1)
  %134 = getelementptr i8, ptr addrspace(1) %133, i64 288230376151711744
  store ptr addrspace(1) %134, ptr %d2
  %135 = load ptr addrspace(1), ptr %d1
  %136 = load ptr addrspace(1), ptr %d2
  %137 = call i64 @_bal_decimal_cmp(ptr addrspace(1) %135, ptr addrspace(1) %136), !dbg !24
  %138 = icmp eq i64 %137, 0
  store i1 %138, ptr %16
  %139 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %140 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %139, i64 0, i32 3
  %141 = load ptr addrspace(1), ptr addrspace(1) %140, align 8
  %142 = bitcast ptr addrspace(1) %141 to ptr addrspace(1)
  %143 = load i1, ptr %16
  %144 = zext i1 %143 to i64
  %145 = or i64 %144, 72057594037927936
  %146 = getelementptr i8, ptr addrspace(1) null, i64 %145
  %147 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %142, i64 0, i64 0
  store ptr addrspace(1) %146, ptr addrspace(1) %147
  %148 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %139, i64 0, i32 1
  store i64 1, ptr addrspace(1) %148
  %149 = bitcast ptr addrspace(1) %139 to ptr addrspace(1)
  %150 = getelementptr i8, ptr addrspace(1) %149, i64 864691128455135236
  store ptr addrspace(1) %150, ptr %17
  %151 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %151), !dbg !26
  store ptr addrspace(1) null, ptr %18
  %152 = addrspacecast ptr bitcast(ptr @.dec7 to ptr) to ptr addrspace(1)
  %153 = getelementptr i8, ptr addrspace(1) %152, i64 288230376151711744
  store ptr addrspace(1) %153, ptr %d1
  %154 = addrspacecast ptr bitcast(ptr @.dec7 to ptr) to ptr addrspace(1)
  %155 = getelementptr i8, ptr addrspace(1) %154, i64 288230376151711744
  store ptr addrspace(1) %155, ptr %d2
  %156 = load ptr addrspace(1), ptr %d1
  %157 = load ptr addrspace(1), ptr %d2
  %158 = call i64 @_bal_decimal_cmp(ptr addrspace(1) %156, ptr addrspace(1) %157), !dbg !27
  %159 = icmp eq i64 %158, 0
  store i1 %159, ptr %19
  %160 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %161 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %160, i64 0, i32 3
  %162 = load ptr addrspace(1), ptr addrspace(1) %161, align 8
  %163 = bitcast ptr addrspace(1) %162 to ptr addrspace(1)
  %164 = load i1, ptr %19
  %165 = zext i1 %164 to i64
  %166 = or i64 %165, 72057594037927936
  %167 = getelementptr i8, ptr addrspace(1) null, i64 %166
  %168 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %163, i64 0, i64 0
  store ptr addrspace(1) %167, ptr addrspace(1) %168
  %169 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %160, i64 0, i32 1
  store i64 1, ptr addrspace(1) %169
  %170 = bitcast ptr addrspace(1) %160 to ptr addrspace(1)
  %171 = getelementptr i8, ptr addrspace(1) %170, i64 864691128455135236
  store ptr addrspace(1) %171, ptr %20
  %172 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %172), !dbg !29
  store ptr addrspace(1) null, ptr %21
  ret void
173:
  %174 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %174), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/eq2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 18, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 8, column: 18, scope: !5)
!13 = !DILocation(line: 8, column: 15, scope: !5)
!14 = !DILocation(line: 8, column: 4, scope: !5)
!15 = !DILocation(line: 11, column: 18, scope: !5)
!16 = !DILocation(line: 11, column: 15, scope: !5)
!17 = !DILocation(line: 11, column: 4, scope: !5)
!18 = !DILocation(line: 14, column: 18, scope: !5)
!19 = !DILocation(line: 14, column: 15, scope: !5)
!20 = !DILocation(line: 14, column: 4, scope: !5)
!21 = !DILocation(line: 17, column: 18, scope: !5)
!22 = !DILocation(line: 17, column: 15, scope: !5)
!23 = !DILocation(line: 17, column: 4, scope: !5)
!24 = !DILocation(line: 20, column: 18, scope: !5)
!25 = !DILocation(line: 20, column: 15, scope: !5)
!26 = !DILocation(line: 20, column: 4, scope: !5)
!27 = !DILocation(line: 23, column: 18, scope: !5)
!28 = !DILocation(line: 23, column: 15, scope: !5)
!29 = !DILocation(line: 23, column: 4, scope: !5)
