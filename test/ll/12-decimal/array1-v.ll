@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 2, i64 2452209997103235072], align 8
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 35, i64 2452139628359057408], align 8
@.dec2 = internal unnamed_addr constant [2 x i64] [i64 35, i64 2454532165661097984], align 8
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@.dec3 = internal unnamed_addr constant [2 x i64] [i64 18, i64 2452139628359057408], align 8
@.dec4 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2452209997103235072], align 8
@.dec5 = internal unnamed_addr constant [2 x i64] [i64 3, i64 2452209997103235072], align 8
@.dec6 = internal unnamed_addr constant [2 x i64] [i64 49, i64 2452139628359057408], align 8
@.dec7 = internal unnamed_addr constant [2 x i64] [i64 563, i64 2454461796916920320], align 8
@_Bi04root3 = external constant {i32}
@.dec8 = internal unnamed_addr constant [2 x i64] [i64 17, i64 2452984053289189376], align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare void @_Bb0m4lang5arraypush(ptr addrspace(1), ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %arr1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %arr2 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i1
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %arr3 = alloca ptr addrspace(1)
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
  br i1 %22, label %71, label %23
23:
  %24 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !9
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 3
  %26 = load ptr addrspace(1), ptr addrspace(1) %25, align 8
  %27 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %28 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %29 = getelementptr i8, ptr addrspace(1) %28, i64 288230376151711744
  %30 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %27, i64 0, i64 0
  store ptr addrspace(1) %29, ptr addrspace(1) %30
  %31 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %32 = getelementptr i8, ptr addrspace(1) %31, i64 288230376151711744
  %33 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %27, i64 0, i64 1
  store ptr addrspace(1) %32, ptr addrspace(1) %33
  %34 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 288230376151711744
  %36 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %27, i64 0, i64 2
  store ptr addrspace(1) %35, ptr addrspace(1) %36
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 1
  store i64 3, ptr addrspace(1) %37
  %38 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %39 = getelementptr i8, ptr addrspace(1) %38, i64 864691128455135236
  store ptr addrspace(1) %39, ptr %1
  %40 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %40, ptr %arr1
  %41 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 3
  %43 = load ptr addrspace(1), ptr addrspace(1) %42, align 8
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = load ptr addrspace(1), ptr %arr1
  %46 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %45), !dbg !11
  %47 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %44, i64 0, i64 0
  store ptr addrspace(1) %46, ptr addrspace(1) %47
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 1
  store i64 1, ptr addrspace(1) %48
  %49 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %50 = getelementptr i8, ptr addrspace(1) %49, i64 864691128455135236
  store ptr addrspace(1) %50, ptr %2
  %51 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %51), !dbg !12
  store ptr addrspace(1) null, ptr %3
  %52 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !13
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 3
  %54 = load ptr addrspace(1), ptr addrspace(1) %53, align 8
  %55 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %56 = addrspacecast ptr bitcast(ptr @.dec3 to ptr) to ptr addrspace(1)
  %57 = getelementptr i8, ptr addrspace(1) %56, i64 288230376151711744
  %58 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %55, i64 0, i64 0
  store ptr addrspace(1) %57, ptr addrspace(1) %58
  %59 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 1
  store i64 1, ptr addrspace(1) %59
  %60 = bitcast ptr addrspace(1) %52 to ptr addrspace(1)
  %61 = getelementptr i8, ptr addrspace(1) %60, i64 864691128455135236
  store ptr addrspace(1) %61, ptr %4
  %62 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %62, ptr %arr2
  %63 = load ptr addrspace(1), ptr %arr2
  %64 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %63, i64 72057594037927928)
  %65 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %66 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 1
  %67 = load i64, ptr addrspace(1) %66, align 8
  %68 = icmp ult i64 0, %67
  br i1 %68, label %73, label %164
69:
  %70 = load ptr addrspace(1), ptr %19
  call void @_bal_panic(ptr addrspace(1) %70), !dbg !28
  unreachable
71:
  %72 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %72), !dbg !8
  unreachable
73:
  %74 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 0
  %75 = load ptr, ptr addrspace(1) %74, align 8
  %76 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %75, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8
  %78 = call ptr addrspace(1) %77(ptr addrspace(1) %63, i64 0)
  store ptr addrspace(1) %78, ptr %5
  %79 = load ptr addrspace(1), ptr %5
  %80 = addrspacecast ptr addrspace(1) %79 to ptr
  %81 = ptrtoint ptr %80 to i64
  %82 = and i64 %81, 2233785415175766016
  %83 = icmp eq i64 %82, 288230376151711744
  store i1 %83, ptr %6
  %84 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !14
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 3
  %86 = load ptr addrspace(1), ptr addrspace(1) %85, align 8
  %87 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %88 = load i1, ptr %6
  %89 = zext i1 %88 to i64
  %90 = or i64 %89, 72057594037927936
  %91 = getelementptr i8, ptr addrspace(1) null, i64 %90
  %92 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %87, i64 0, i64 0
  store ptr addrspace(1) %91, ptr addrspace(1) %92
  %93 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 1
  store i64 1, ptr addrspace(1) %93
  %94 = bitcast ptr addrspace(1) %84 to ptr addrspace(1)
  %95 = getelementptr i8, ptr addrspace(1) %94, i64 864691128455135236
  store ptr addrspace(1) %95, ptr %7
  %96 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %96), !dbg !15
  store ptr addrspace(1) null, ptr %8
  %97 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !16
  %98 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %97, i64 0, i32 3
  %99 = load ptr addrspace(1), ptr addrspace(1) %98, align 8
  %100 = bitcast ptr addrspace(1) %99 to ptr addrspace(1)
  %101 = addrspacecast ptr bitcast(ptr @.dec4 to ptr) to ptr addrspace(1)
  %102 = getelementptr i8, ptr addrspace(1) %101, i64 288230376151711744
  %103 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %100, i64 0, i64 0
  store ptr addrspace(1) %102, ptr addrspace(1) %103
  %104 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %105 = getelementptr i8, ptr addrspace(1) %104, i64 288230376151711744
  %106 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %100, i64 0, i64 1
  store ptr addrspace(1) %105, ptr addrspace(1) %106
  %107 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %97, i64 0, i32 1
  store i64 2, ptr addrspace(1) %107
  %108 = bitcast ptr addrspace(1) %97 to ptr addrspace(1)
  %109 = getelementptr i8, ptr addrspace(1) %108, i64 864691128455135236
  store ptr addrspace(1) %109, ptr %9
  %110 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !17
  %111 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %110, i64 0, i32 3
  %112 = load ptr addrspace(1), ptr addrspace(1) %111, align 8
  %113 = bitcast ptr addrspace(1) %112 to ptr addrspace(1)
  %114 = addrspacecast ptr bitcast(ptr @.dec5 to ptr) to ptr addrspace(1)
  %115 = getelementptr i8, ptr addrspace(1) %114, i64 288230376151711744
  %116 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %113, i64 0, i64 0
  store ptr addrspace(1) %115, ptr addrspace(1) %116
  %117 = addrspacecast ptr bitcast(ptr @.dec6 to ptr) to ptr addrspace(1)
  %118 = getelementptr i8, ptr addrspace(1) %117, i64 288230376151711744
  %119 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %113, i64 0, i64 1
  store ptr addrspace(1) %118, ptr addrspace(1) %119
  %120 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %110, i64 0, i32 1
  store i64 2, ptr addrspace(1) %120
  %121 = bitcast ptr addrspace(1) %110 to ptr addrspace(1)
  %122 = getelementptr i8, ptr addrspace(1) %121, i64 864691128455135236
  store ptr addrspace(1) %122, ptr %10
  %123 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %124 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %123, i64 0, i32 3
  %125 = load ptr addrspace(1), ptr addrspace(1) %124, align 8
  %126 = bitcast ptr addrspace(1) %125 to ptr addrspace(1)
  %127 = addrspacecast ptr bitcast(ptr @.dec7 to ptr) to ptr addrspace(1)
  %128 = getelementptr i8, ptr addrspace(1) %127, i64 288230376151711744
  %129 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %126, i64 0, i64 0
  store ptr addrspace(1) %128, ptr addrspace(1) %129
  %130 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %123, i64 0, i32 1
  store i64 1, ptr addrspace(1) %130
  %131 = bitcast ptr addrspace(1) %123 to ptr addrspace(1)
  %132 = getelementptr i8, ptr addrspace(1) %131, i64 864691128455135236
  store ptr addrspace(1) %132, ptr %11
  %133 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 3), !dbg !19
  %134 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %133, i64 0, i32 3
  %135 = load ptr addrspace(1), ptr addrspace(1) %134, align 8
  %136 = bitcast ptr addrspace(1) %135 to ptr addrspace(1)
  %137 = load ptr addrspace(1), ptr %9
  %138 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %136, i64 0, i64 0
  store ptr addrspace(1) %137, ptr addrspace(1) %138
  %139 = load ptr addrspace(1), ptr %10
  %140 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %136, i64 0, i64 1
  store ptr addrspace(1) %139, ptr addrspace(1) %140
  %141 = load ptr addrspace(1), ptr %11
  %142 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %136, i64 0, i64 2
  store ptr addrspace(1) %141, ptr addrspace(1) %142
  %143 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %133, i64 0, i32 1
  store i64 3, ptr addrspace(1) %143
  %144 = bitcast ptr addrspace(1) %133 to ptr addrspace(1)
  %145 = getelementptr i8, ptr addrspace(1) %144, i64 864691128455135236
  store ptr addrspace(1) %145, ptr %12
  %146 = load ptr addrspace(1), ptr %12
  store ptr addrspace(1) %146, ptr %arr3
  %147 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !20
  %148 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %147, i64 0, i32 3
  %149 = load ptr addrspace(1), ptr addrspace(1) %148, align 8
  %150 = bitcast ptr addrspace(1) %149 to ptr addrspace(1)
  %151 = load ptr addrspace(1), ptr %arr3
  %152 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %151), !dbg !21
  %153 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %150, i64 0, i64 0
  store ptr addrspace(1) %152, ptr addrspace(1) %153
  %154 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %147, i64 0, i32 1
  store i64 1, ptr addrspace(1) %154
  %155 = bitcast ptr addrspace(1) %147 to ptr addrspace(1)
  %156 = getelementptr i8, ptr addrspace(1) %155, i64 864691128455135236
  store ptr addrspace(1) %156, ptr %13
  %157 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %157), !dbg !22
  store ptr addrspace(1) null, ptr %14
  %158 = load ptr addrspace(1), ptr %arr3
  %159 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %158, i64 72057594037927928)
  %160 = bitcast ptr addrspace(1) %159 to ptr addrspace(1)
  %161 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %160, i64 0, i32 1
  %162 = load i64, ptr addrspace(1) %161, align 8
  %163 = icmp ult i64 0, %162
  br i1 %163, label %166, label %187
164:
  %165 = call ptr addrspace(1) @_bal_panic_construct(i64 1797), !dbg !7
  store ptr addrspace(1) %165, ptr %19
  br label %69
166:
  %167 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %160, i64 0, i32 0
  %168 = load ptr, ptr addrspace(1) %167, align 8
  %169 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %168, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8
  %171 = call ptr addrspace(1) %170(ptr addrspace(1) %158, i64 0)
  %172 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %158, ptr addrspace(1) %171), !dbg !23
  store ptr addrspace(1) %172, ptr %15
  %173 = load ptr addrspace(1), ptr %15
  %174 = addrspacecast ptr bitcast(ptr @.dec8 to ptr) to ptr addrspace(1)
  %175 = getelementptr i8, ptr addrspace(1) %174, i64 288230376151711744
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %173, ptr addrspace(1) %175), !dbg !24
  store ptr addrspace(1) null, ptr %16
  %176 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !25
  %177 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %176, i64 0, i32 3
  %178 = load ptr addrspace(1), ptr addrspace(1) %177, align 8
  %179 = bitcast ptr addrspace(1) %178 to ptr addrspace(1)
  %180 = load ptr addrspace(1), ptr %arr3
  %181 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %180), !dbg !26
  %182 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %179, i64 0, i64 0
  store ptr addrspace(1) %181, ptr addrspace(1) %182
  %183 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %176, i64 0, i32 1
  store i64 1, ptr addrspace(1) %183
  %184 = bitcast ptr addrspace(1) %176 to ptr addrspace(1)
  %185 = getelementptr i8, ptr addrspace(1) %184, i64 864691128455135236
  store ptr addrspace(1) %185, ptr %17
  %186 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %186), !dbg !27
  store ptr addrspace(1) null, ptr %18
  ret void
187:
  %188 = call ptr addrspace(1) @_bal_panic_construct(i64 3077), !dbg !7
  store ptr addrspace(1) %188, ptr %19
  br label %69
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/array1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 21, scope: !5)
!10 = !DILocation(line: 4, column: 15, scope: !5)
!11 = !DILocation(line: 4, column: 15, scope: !5)
!12 = !DILocation(line: 4, column: 4, scope: !5)
!13 = !DILocation(line: 6, column: 27, scope: !5)
!14 = !DILocation(line: 7, column: 15, scope: !5)
!15 = !DILocation(line: 7, column: 4, scope: !5)
!16 = !DILocation(line: 9, column: 24, scope: !5)
!17 = !DILocation(line: 9, column: 32, scope: !5)
!18 = !DILocation(line: 9, column: 44, scope: !5)
!19 = !DILocation(line: 9, column: 23, scope: !5)
!20 = !DILocation(line: 10, column: 15, scope: !5)
!21 = !DILocation(line: 10, column: 15, scope: !5)
!22 = !DILocation(line: 10, column: 4, scope: !5)
!23 = !DILocation(line: 12, column: 8, scope: !5)
!24 = !DILocation(line: 12, column: 12, scope: !5)
!25 = !DILocation(line: 13, column: 15, scope: !5)
!26 = !DILocation(line: 13, column: 15, scope: !5)
!27 = !DILocation(line: 13, column: 4, scope: !5)
!28 = !DILocation(line: 14, column: 0, scope: !5)
