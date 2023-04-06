@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare zeroext i1 @_bal_eq(ptr addrspace(1), ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %yin = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %yang = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %father = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %son = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %sprit = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i1
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i1
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i8
  %17 = load ptr, ptr @_bal_stack_guard
  %18 = icmp ult ptr %16, %17
  br i1 %18, label %40, label %19
19:
  %20 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %21 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %22 = getelementptr i8, ptr addrspace(1) %21, i64 864691128455135236
  store ptr addrspace(1) %22, ptr %1
  %23 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %23, ptr %yin
  %24 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !10
  %25 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %26 = getelementptr i8, ptr addrspace(1) %25, i64 864691128455135236
  store ptr addrspace(1) %26, ptr %2
  %27 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %27, ptr %yang
  %28 = load ptr addrspace(1), ptr %yin
  %29 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %28, i64 72057594037927928), !dbg !11
  %30 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %31 = load ptr addrspace(1), ptr %yang
  %32 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 0
  %33 = load ptr, ptr addrspace(1) %32, align 8
  %34 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %33, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8
  %36 = call i64 %35(ptr addrspace(1) %28, i64 0, ptr addrspace(1) %31)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %53
38:
  %39 = load ptr addrspace(1), ptr %15
  call void @_bal_panic(ptr addrspace(1) %39), !dbg !28
  unreachable
40:
  %41 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %41), !dbg !8
  unreachable
42:
  %43 = load ptr addrspace(1), ptr %yang
  %44 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %43, i64 72057594037927928), !dbg !12
  %45 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %46 = load ptr addrspace(1), ptr %yin
  %47 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 0
  %48 = load ptr, ptr addrspace(1) %47, align 8
  %49 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %48, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8
  %51 = call i64 %50(ptr addrspace(1) %43, i64 0, ptr addrspace(1) %46)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %56, label %95
53:
  %54 = or i64 %36, 2048
  %55 = call ptr addrspace(1) @_bal_panic_construct(i64 %54), !dbg !7
  store ptr addrspace(1) %55, ptr %15
  br label %38
56:
  %57 = load ptr addrspace(1), ptr %yin
  %58 = load ptr addrspace(1), ptr %yang
  %59 = call i1 @_bal_eq(ptr addrspace(1) %57, ptr addrspace(1) %58), !dbg !13
  store i1 %59, ptr %3
  %60 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !14
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 3
  %62 = load ptr addrspace(1), ptr addrspace(1) %61, align 8
  %63 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %64 = load i1, ptr %3
  %65 = zext i1 %64 to i64
  %66 = or i64 %65, 72057594037927936
  %67 = getelementptr i8, ptr addrspace(1) null, i64 %66
  %68 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %63, i64 0, i64 0
  store ptr addrspace(1) %67, ptr addrspace(1) %68
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 1
  store i64 1, ptr addrspace(1) %69
  %70 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %71 = getelementptr i8, ptr addrspace(1) %70, i64 864691128455135236
  store ptr addrspace(1) %71, ptr %4
  %72 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %72), !dbg !15
  store ptr addrspace(1) null, ptr %5
  %73 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !16
  %74 = bitcast ptr addrspace(1) %73 to ptr addrspace(1)
  %75 = getelementptr i8, ptr addrspace(1) %74, i64 864691128455135236
  store ptr addrspace(1) %75, ptr %6
  %76 = load ptr addrspace(1), ptr %6
  store ptr addrspace(1) %76, ptr %father
  %77 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !17
  %78 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %79 = getelementptr i8, ptr addrspace(1) %78, i64 864691128455135236
  store ptr addrspace(1) %79, ptr %7
  %80 = load ptr addrspace(1), ptr %7
  store ptr addrspace(1) %80, ptr %son
  %81 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !18
  %82 = bitcast ptr addrspace(1) %81 to ptr addrspace(1)
  %83 = getelementptr i8, ptr addrspace(1) %82, i64 864691128455135236
  store ptr addrspace(1) %83, ptr %8
  %84 = load ptr addrspace(1), ptr %8
  store ptr addrspace(1) %84, ptr %sprit
  %85 = load ptr addrspace(1), ptr %father
  %86 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %85, i64 72057594037927928), !dbg !19
  %87 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %88 = load ptr addrspace(1), ptr %son
  %89 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 0
  %90 = load ptr, ptr addrspace(1) %89, align 8
  %91 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %90, i64 0, i32 4
  %92 = load ptr, ptr %91, align 8
  %93 = call i64 %92(ptr addrspace(1) %85, i64 0, ptr addrspace(1) %88)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %98, label %109
95:
  %96 = or i64 %51, 2304
  %97 = call ptr addrspace(1) @_bal_panic_construct(i64 %96), !dbg !7
  store ptr addrspace(1) %97, ptr %15
  br label %38
98:
  %99 = load ptr addrspace(1), ptr %son
  %100 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %99, i64 72057594037927928), !dbg !20
  %101 = bitcast ptr addrspace(1) %100 to ptr addrspace(1)
  %102 = load ptr addrspace(1), ptr %sprit
  %103 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %101, i64 0, i32 0
  %104 = load ptr, ptr addrspace(1) %103, align 8
  %105 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %104, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8
  %107 = call i64 %106(ptr addrspace(1) %99, i64 0, ptr addrspace(1) %102)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %112, label %123
109:
  %110 = or i64 %93, 3840
  %111 = call ptr addrspace(1) @_bal_panic_construct(i64 %110), !dbg !7
  store ptr addrspace(1) %111, ptr %15
  br label %38
112:
  %113 = load ptr addrspace(1), ptr %sprit
  %114 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %113, i64 72057594037927928), !dbg !21
  %115 = bitcast ptr addrspace(1) %114 to ptr addrspace(1)
  %116 = load ptr addrspace(1), ptr %father
  %117 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %115, i64 0, i32 0
  %118 = load ptr, ptr addrspace(1) %117, align 8
  %119 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %118, i64 0, i32 4
  %120 = load ptr, ptr %119, align 8
  %121 = call i64 %120(ptr addrspace(1) %113, i64 0, ptr addrspace(1) %116)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %126, label %159
123:
  %124 = or i64 %107, 4096
  %125 = call ptr addrspace(1) @_bal_panic_construct(i64 %124), !dbg !7
  store ptr addrspace(1) %125, ptr %15
  br label %38
126:
  %127 = load ptr addrspace(1), ptr %father
  %128 = load ptr addrspace(1), ptr %son
  %129 = call i1 @_bal_eq(ptr addrspace(1) %127, ptr addrspace(1) %128), !dbg !22
  store i1 %129, ptr %9
  %130 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !23
  %131 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %130, i64 0, i32 3
  %132 = load ptr addrspace(1), ptr addrspace(1) %131, align 8
  %133 = bitcast ptr addrspace(1) %132 to ptr addrspace(1)
  %134 = load i1, ptr %9
  %135 = zext i1 %134 to i64
  %136 = or i64 %135, 72057594037927936
  %137 = getelementptr i8, ptr addrspace(1) null, i64 %136
  %138 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %133, i64 0, i64 0
  store ptr addrspace(1) %137, ptr addrspace(1) %138
  %139 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %130, i64 0, i32 1
  store i64 1, ptr addrspace(1) %139
  %140 = bitcast ptr addrspace(1) %130 to ptr addrspace(1)
  %141 = getelementptr i8, ptr addrspace(1) %140, i64 864691128455135236
  store ptr addrspace(1) %141, ptr %10
  %142 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %142), !dbg !24
  store ptr addrspace(1) null, ptr %11
  %143 = load ptr addrspace(1), ptr %father
  %144 = load ptr addrspace(1), ptr %yin
  %145 = call i1 @_bal_eq(ptr addrspace(1) %143, ptr addrspace(1) %144), !dbg !25
  store i1 %145, ptr %12
  %146 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !26
  %147 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %146, i64 0, i32 3
  %148 = load ptr addrspace(1), ptr addrspace(1) %147, align 8
  %149 = bitcast ptr addrspace(1) %148 to ptr addrspace(1)
  %150 = load i1, ptr %12
  %151 = zext i1 %150 to i64
  %152 = or i64 %151, 72057594037927936
  %153 = getelementptr i8, ptr addrspace(1) null, i64 %152
  %154 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %149, i64 0, i64 0
  store ptr addrspace(1) %153, ptr addrspace(1) %154
  %155 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %146, i64 0, i32 1
  store i64 1, ptr addrspace(1) %155
  %156 = bitcast ptr addrspace(1) %146 to ptr addrspace(1)
  %157 = getelementptr i8, ptr addrspace(1) %156, i64 864691128455135236
  store ptr addrspace(1) %157, ptr %13
  %158 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %158), !dbg !27
  store ptr addrspace(1) null, ptr %14
  ret void
159:
  %160 = or i64 %121, 4352
  %161 = call ptr addrspace(1) @_bal_panic_construct(i64 %160), !dbg !7
  store ptr addrspace(1) %161, ptr %15
  br label %38
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/eqcycle2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 15, scope: !5)
!10 = !DILocation(line: 7, column: 16, scope: !5)
!11 = !DILocation(line: 8, column: 7, scope: !5)
!12 = !DILocation(line: 9, column: 8, scope: !5)
!13 = !DILocation(line: 10, column: 19, scope: !5)
!14 = !DILocation(line: 10, column: 15, scope: !5)
!15 = !DILocation(line: 10, column: 4, scope: !5)
!16 = !DILocation(line: 12, column: 18, scope: !5)
!17 = !DILocation(line: 13, column: 15, scope: !5)
!18 = !DILocation(line: 14, column: 17, scope: !5)
!19 = !DILocation(line: 15, column: 10, scope: !5)
!20 = !DILocation(line: 16, column: 7, scope: !5)
!21 = !DILocation(line: 17, column: 9, scope: !5)
!22 = !DILocation(line: 18, column: 22, scope: !5)
!23 = !DILocation(line: 18, column: 15, scope: !5)
!24 = !DILocation(line: 18, column: 4, scope: !5)
!25 = !DILocation(line: 20, column: 22, scope: !5)
!26 = !DILocation(line: 20, column: 15, scope: !5)
!27 = !DILocation(line: 20, column: 4, scope: !5)
!28 = !DILocation(line: 21, column: 0, scope: !5)
