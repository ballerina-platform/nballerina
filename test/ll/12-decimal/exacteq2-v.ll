@_bal_stack_guard = external global ptr
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 0, i64 2452209997103235072], align 8
@_Bi04root0 = external constant {i32}
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 -865536378825081601, i64 -576513580451545137], align 8
@.dec2 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2451787784638169088], align 8
@.dec3 = internal unnamed_addr constant [2 x i64] [i64 16, i64 2452139628359057408], align 8
@.dec4 = internal unnamed_addr constant [2 x i64] [i64 128, i64 2452069259614879744], align 8
@.dec5 = internal unnamed_addr constant [2 x i64] [i64 128, i64 2451647047149813760], align 8
@.dec6 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2392537302040576], align 8
@.dec7 = internal unnamed_addr constant [2 x i64] [i64 16, i64 2322168557862912], align 8
@.dec8 = internal unnamed_addr constant [2 x i64] [i64 128, i64 2452421103335768064], align 8
@.dec9 = internal unnamed_addr constant [2 x i64] [i64 16, i64 2452491472079945728], align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare zeroext i1 @_bal_decimal_exact_eq(ptr addrspace(1), ptr addrspace(1)) readonly
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
  br i1 %24, label %167, label %25
25:
  %26 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %27 = getelementptr i8, ptr addrspace(1) %26, i64 288230376151711744
  store ptr addrspace(1) %27, ptr %d1
  %28 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %29 = getelementptr i8, ptr addrspace(1) %28, i64 288230376151711744
  store ptr addrspace(1) %29, ptr %d2
  %30 = load ptr addrspace(1), ptr %d1
  %31 = load ptr addrspace(1), ptr %d2
  %32 = call i1 @_bal_decimal_exact_eq(ptr addrspace(1) %30, ptr addrspace(1) %31), !dbg !9
  store i1 %32, ptr %1
  %33 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 3
  %35 = load ptr addrspace(1), ptr addrspace(1) %34, align 8
  %36 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %37 = load i1, ptr %1
  %38 = zext i1 %37 to i64
  %39 = or i64 %38, 72057594037927936
  %40 = getelementptr i8, ptr addrspace(1) null, i64 %39
  %41 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %36, i64 0, i64 0
  store ptr addrspace(1) %40, ptr addrspace(1) %41
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 1
  store i64 1, ptr addrspace(1) %42
  %43 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %44 = getelementptr i8, ptr addrspace(1) %43, i64 864691128455135236
  store ptr addrspace(1) %44, ptr %2
  %45 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %45), !dbg !11
  store ptr addrspace(1) null, ptr %3
  %46 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %47 = getelementptr i8, ptr addrspace(1) %46, i64 288230376151711744
  store ptr addrspace(1) %47, ptr %d1
  %48 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %49 = getelementptr i8, ptr addrspace(1) %48, i64 288230376151711744
  store ptr addrspace(1) %49, ptr %d2
  %50 = load ptr addrspace(1), ptr %d1
  %51 = load ptr addrspace(1), ptr %d2
  %52 = call i1 @_bal_decimal_exact_eq(ptr addrspace(1) %50, ptr addrspace(1) %51), !dbg !12
  store i1 %52, ptr %4
  %53 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %54 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 3
  %55 = load ptr addrspace(1), ptr addrspace(1) %54, align 8
  %56 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %57 = load i1, ptr %4
  %58 = zext i1 %57 to i64
  %59 = or i64 %58, 72057594037927936
  %60 = getelementptr i8, ptr addrspace(1) null, i64 %59
  %61 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %56, i64 0, i64 0
  store ptr addrspace(1) %60, ptr addrspace(1) %61
  %62 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 1
  store i64 1, ptr addrspace(1) %62
  %63 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %64 = getelementptr i8, ptr addrspace(1) %63, i64 864691128455135236
  store ptr addrspace(1) %64, ptr %5
  %65 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %65), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %66 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %67 = getelementptr i8, ptr addrspace(1) %66, i64 288230376151711744
  store ptr addrspace(1) %67, ptr %d1
  %68 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 288230376151711744
  store ptr addrspace(1) %69, ptr %d2
  %70 = load ptr addrspace(1), ptr %d1
  %71 = load ptr addrspace(1), ptr %d2
  %72 = call i1 @_bal_decimal_exact_eq(ptr addrspace(1) %70, ptr addrspace(1) %71), !dbg !15
  store i1 %72, ptr %7
  %73 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %74 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 3
  %75 = load ptr addrspace(1), ptr addrspace(1) %74, align 8
  %76 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %77 = load i1, ptr %7
  %78 = zext i1 %77 to i64
  %79 = or i64 %78, 72057594037927936
  %80 = getelementptr i8, ptr addrspace(1) null, i64 %79
  %81 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %76, i64 0, i64 0
  store ptr addrspace(1) %80, ptr addrspace(1) %81
  %82 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 1
  store i64 1, ptr addrspace(1) %82
  %83 = bitcast ptr addrspace(1) %73 to ptr addrspace(1)
  %84 = getelementptr i8, ptr addrspace(1) %83, i64 864691128455135236
  store ptr addrspace(1) %84, ptr %8
  %85 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %85), !dbg !17
  store ptr addrspace(1) null, ptr %9
  %86 = addrspacecast ptr bitcast(ptr @.dec3 to ptr) to ptr addrspace(1)
  %87 = getelementptr i8, ptr addrspace(1) %86, i64 288230376151711744
  store ptr addrspace(1) %87, ptr %d1
  %88 = addrspacecast ptr bitcast(ptr @.dec4 to ptr) to ptr addrspace(1)
  %89 = getelementptr i8, ptr addrspace(1) %88, i64 288230376151711744
  store ptr addrspace(1) %89, ptr %d2
  %90 = load ptr addrspace(1), ptr %d1
  %91 = load ptr addrspace(1), ptr %d2
  %92 = call i1 @_bal_decimal_exact_eq(ptr addrspace(1) %90, ptr addrspace(1) %91), !dbg !18
  store i1 %92, ptr %10
  %93 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %94 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 3
  %95 = load ptr addrspace(1), ptr addrspace(1) %94, align 8
  %96 = bitcast ptr addrspace(1) %95 to ptr addrspace(1)
  %97 = load i1, ptr %10
  %98 = zext i1 %97 to i64
  %99 = or i64 %98, 72057594037927936
  %100 = getelementptr i8, ptr addrspace(1) null, i64 %99
  %101 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %96, i64 0, i64 0
  store ptr addrspace(1) %100, ptr addrspace(1) %101
  %102 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 1
  store i64 1, ptr addrspace(1) %102
  %103 = bitcast ptr addrspace(1) %93 to ptr addrspace(1)
  %104 = getelementptr i8, ptr addrspace(1) %103, i64 864691128455135236
  store ptr addrspace(1) %104, ptr %11
  %105 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %105), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %106 = addrspacecast ptr bitcast(ptr @.dec5 to ptr) to ptr addrspace(1)
  %107 = getelementptr i8, ptr addrspace(1) %106, i64 288230376151711744
  store ptr addrspace(1) %107, ptr %d1
  %108 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %109 = getelementptr i8, ptr addrspace(1) %108, i64 288230376151711744
  store ptr addrspace(1) %109, ptr %d2
  %110 = load ptr addrspace(1), ptr %d1
  %111 = load ptr addrspace(1), ptr %d2
  %112 = call i1 @_bal_decimal_exact_eq(ptr addrspace(1) %110, ptr addrspace(1) %111), !dbg !21
  store i1 %112, ptr %13
  %113 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %114 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %113, i64 0, i32 3
  %115 = load ptr addrspace(1), ptr addrspace(1) %114, align 8
  %116 = bitcast ptr addrspace(1) %115 to ptr addrspace(1)
  %117 = load i1, ptr %13
  %118 = zext i1 %117 to i64
  %119 = or i64 %118, 72057594037927936
  %120 = getelementptr i8, ptr addrspace(1) null, i64 %119
  %121 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %116, i64 0, i64 0
  store ptr addrspace(1) %120, ptr addrspace(1) %121
  %122 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %113, i64 0, i32 1
  store i64 1, ptr addrspace(1) %122
  %123 = bitcast ptr addrspace(1) %113 to ptr addrspace(1)
  %124 = getelementptr i8, ptr addrspace(1) %123, i64 864691128455135236
  store ptr addrspace(1) %124, ptr %14
  %125 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %125), !dbg !23
  store ptr addrspace(1) null, ptr %15
  %126 = addrspacecast ptr bitcast(ptr @.dec6 to ptr) to ptr addrspace(1)
  %127 = getelementptr i8, ptr addrspace(1) %126, i64 288230376151711744
  store ptr addrspace(1) %127, ptr %d1
  %128 = addrspacecast ptr bitcast(ptr @.dec7 to ptr) to ptr addrspace(1)
  %129 = getelementptr i8, ptr addrspace(1) %128, i64 288230376151711744
  store ptr addrspace(1) %129, ptr %d2
  %130 = load ptr addrspace(1), ptr %d1
  %131 = load ptr addrspace(1), ptr %d2
  %132 = call i1 @_bal_decimal_exact_eq(ptr addrspace(1) %130, ptr addrspace(1) %131), !dbg !24
  store i1 %132, ptr %16
  %133 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %134 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %133, i64 0, i32 3
  %135 = load ptr addrspace(1), ptr addrspace(1) %134, align 8
  %136 = bitcast ptr addrspace(1) %135 to ptr addrspace(1)
  %137 = load i1, ptr %16
  %138 = zext i1 %137 to i64
  %139 = or i64 %138, 72057594037927936
  %140 = getelementptr i8, ptr addrspace(1) null, i64 %139
  %141 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %136, i64 0, i64 0
  store ptr addrspace(1) %140, ptr addrspace(1) %141
  %142 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %133, i64 0, i32 1
  store i64 1, ptr addrspace(1) %142
  %143 = bitcast ptr addrspace(1) %133 to ptr addrspace(1)
  %144 = getelementptr i8, ptr addrspace(1) %143, i64 864691128455135236
  store ptr addrspace(1) %144, ptr %17
  %145 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %145), !dbg !26
  store ptr addrspace(1) null, ptr %18
  %146 = addrspacecast ptr bitcast(ptr @.dec8 to ptr) to ptr addrspace(1)
  %147 = getelementptr i8, ptr addrspace(1) %146, i64 288230376151711744
  store ptr addrspace(1) %147, ptr %d1
  %148 = addrspacecast ptr bitcast(ptr @.dec9 to ptr) to ptr addrspace(1)
  %149 = getelementptr i8, ptr addrspace(1) %148, i64 288230376151711744
  store ptr addrspace(1) %149, ptr %d2
  %150 = load ptr addrspace(1), ptr %d1
  %151 = load ptr addrspace(1), ptr %d2
  %152 = call i1 @_bal_decimal_exact_eq(ptr addrspace(1) %150, ptr addrspace(1) %151), !dbg !27
  %153 = xor i1 %152, 1
  store i1 %153, ptr %19
  %154 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %155 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %154, i64 0, i32 3
  %156 = load ptr addrspace(1), ptr addrspace(1) %155, align 8
  %157 = bitcast ptr addrspace(1) %156 to ptr addrspace(1)
  %158 = load i1, ptr %19
  %159 = zext i1 %158 to i64
  %160 = or i64 %159, 72057594037927936
  %161 = getelementptr i8, ptr addrspace(1) null, i64 %160
  %162 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %157, i64 0, i64 0
  store ptr addrspace(1) %161, ptr addrspace(1) %162
  %163 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %154, i64 0, i32 1
  store i64 1, ptr addrspace(1) %163
  %164 = bitcast ptr addrspace(1) %154 to ptr addrspace(1)
  %165 = getelementptr i8, ptr addrspace(1) %164, i64 864691128455135236
  store ptr addrspace(1) %165, ptr %20
  %166 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %166), !dbg !29
  store ptr addrspace(1) null, ptr %21
  ret void
167:
  %168 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %168), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/exacteq2-v.bal", directory:"")
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
