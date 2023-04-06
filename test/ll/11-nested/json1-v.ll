@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@.str5 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"children\00\00\00\00"}, align 8
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %j = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %j.1 = alloca ptr addrspace(1)
  %j.2 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %j0 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %j0.1 = alloca ptr addrspace(1)
  %j0.2 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %j0.3 = alloca ptr addrspace(1)
  %j.3 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca i8
  %16 = load ptr, ptr @_bal_stack_guard
  %17 = icmp ult ptr %15, %16
  br i1 %17, label %110, label %18
18:
  %19 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !9
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 3
  %21 = load ptr addrspace(1), ptr addrspace(1) %20, align 8
  %22 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %23 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %22, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570947969354), ptr addrspace(1) %23
  %24 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %22, i64 0, i64 1
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570848026954), ptr addrspace(1) %24
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 1
  store i64 2, ptr addrspace(1) %25
  %26 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %27 = getelementptr i8, ptr addrspace(1) %26, i64 864691128455135236
  store ptr addrspace(1) %27, ptr %1
  %28 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 4), !dbg !10
  call void @_bal_mapping_init_member(ptr addrspace(1) %28, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570847961454), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187969552539978)), !dbg !11
  %29 = and i64 72057594037927935, 100
  %30 = or i64 2449958197289549824, %29
  %31 = getelementptr i8, ptr addrspace(1) null, i64 %30
  call void @_bal_mapping_init_member(ptr addrspace(1) %28, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431129953), ptr addrspace(1) %31), !dbg !12
  %32 = load ptr addrspace(1), ptr %1
  call void @_bal_mapping_init_member(ptr addrspace(1) %28, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str5 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %32), !dbg !13
  %33 = zext i1 1 to i64
  %34 = or i64 %33, 72057594037927936
  %35 = getelementptr i8, ptr addrspace(1) null, i64 %34
  call void @_bal_mapping_init_member(ptr addrspace(1) %28, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2694389980640469357), ptr addrspace(1) %35), !dbg !14
  store ptr addrspace(1) %28, ptr %2
  %36 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 3
  %38 = load ptr addrspace(1), ptr addrspace(1) %37, align 8
  %39 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %40 = load ptr addrspace(1), ptr %2
  %41 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %39, i64 0, i64 0
  store ptr addrspace(1) %40, ptr addrspace(1) %41
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 1
  store i64 1, ptr addrspace(1) %42
  %43 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %44 = getelementptr i8, ptr addrspace(1) %43, i64 864691128455135236
  store ptr addrspace(1) %44, ptr %3
  %45 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %45, ptr %j
  %46 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !16
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 3
  %48 = load ptr addrspace(1), ptr addrspace(1) %47, align 8
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = load ptr addrspace(1), ptr %j
  %51 = call ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1) %50), !dbg !17
  %52 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %49, i64 0, i64 0
  store ptr addrspace(1) %51, ptr addrspace(1) %52
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  store i64 1, ptr addrspace(1) %53
  %54 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %55 = getelementptr i8, ptr addrspace(1) %54, i64 864691128455135236
  store ptr addrspace(1) %55, ptr %4
  %56 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %56), !dbg !18
  store ptr addrspace(1) null, ptr %5
  %57 = load ptr addrspace(1), ptr %j
  %58 = addrspacecast ptr addrspace(1) %57 to ptr
  %59 = ptrtoint ptr %58 to i64
  %60 = and i64 %59, 2233785415175766016
  %61 = icmp eq i64 %60, 864691128455135232
  br i1 %61, label %62, label %79
62:
  %63 = load ptr addrspace(1), ptr %j
  store ptr addrspace(1) %63, ptr %j.1
  %64 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !19
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 3
  %66 = load ptr addrspace(1), ptr addrspace(1) %65, align 8
  %67 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %68 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %67, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187995255566945), ptr addrspace(1) %68
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 1
  store i64 1, ptr addrspace(1) %69
  %70 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %71 = getelementptr i8, ptr addrspace(1) %70, i64 864691128455135236
  store ptr addrspace(1) %71, ptr %6
  %72 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %72), !dbg !20
  store ptr addrspace(1) null, ptr %7
  %73 = load ptr addrspace(1), ptr %j.1
  %74 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %73, i64 72057594037927928)
  %75 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %76 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 1
  %77 = load i64, ptr addrspace(1) %76, align 8
  %78 = icmp ult i64 0, %77
  br i1 %78, label %112, label %125
79:
  %80 = load ptr addrspace(1), ptr %j
  store ptr addrspace(1) %80, ptr %j.3
  ret void
81:
  %82 = load ptr addrspace(1), ptr %j0
  store ptr addrspace(1) %82, ptr %j0.1
  %83 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !22
  %84 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 3
  %85 = load ptr addrspace(1), ptr addrspace(1) %84, align 8
  %86 = bitcast ptr addrspace(1) %85 to ptr addrspace(1)
  %87 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %86, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431849325), ptr addrspace(1) %87
  %88 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 1
  store i64 1, ptr addrspace(1) %88
  %89 = bitcast ptr addrspace(1) %83 to ptr addrspace(1)
  %90 = getelementptr i8, ptr addrspace(1) %89, i64 864691128455135236
  store ptr addrspace(1) %90, ptr %9
  %91 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %91), !dbg !23
  store ptr addrspace(1) null, ptr %10
  %92 = load ptr addrspace(1), ptr %j0.1
  %93 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %92, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431129953)), !dbg !24
  %94 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %92, ptr addrspace(1) %93), !dbg !25
  store ptr addrspace(1) %94, ptr %11
  %95 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !26
  %96 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %95, i64 0, i32 3
  %97 = load ptr addrspace(1), ptr addrspace(1) %96, align 8
  %98 = bitcast ptr addrspace(1) %97 to ptr addrspace(1)
  %99 = load ptr addrspace(1), ptr %11
  %100 = call ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1) %99), !dbg !27
  %101 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %98, i64 0, i64 0
  store ptr addrspace(1) %100, ptr addrspace(1) %101
  %102 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %95, i64 0, i32 1
  store i64 1, ptr addrspace(1) %102
  %103 = bitcast ptr addrspace(1) %95 to ptr addrspace(1)
  %104 = getelementptr i8, ptr addrspace(1) %103, i64 864691128455135236
  store ptr addrspace(1) %104, ptr %12
  %105 = load ptr addrspace(1), ptr %12
  call void @_Bb02ioprintln(ptr addrspace(1) %105), !dbg !28
  store ptr addrspace(1) null, ptr %13
  br label %106
106:
  %107 = load ptr addrspace(1), ptr %j0
  store ptr addrspace(1) %107, ptr %j0.3
  br label %79
108:
  %109 = load ptr addrspace(1), ptr %14
  call void @_bal_panic(ptr addrspace(1) %109), !dbg !29
  unreachable
110:
  %111 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %111), !dbg !8
  unreachable
112:
  %113 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 0
  %114 = load ptr, ptr addrspace(1) %113, align 8
  %115 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %114, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8
  %117 = call ptr addrspace(1) %116(ptr addrspace(1) %73, i64 0)
  %118 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %73, ptr addrspace(1) %117), !dbg !21
  store ptr addrspace(1) %118, ptr %8
  %119 = load ptr addrspace(1), ptr %8
  store ptr addrspace(1) %119, ptr %j0
  %120 = load ptr addrspace(1), ptr %j0
  %121 = addrspacecast ptr addrspace(1) %120 to ptr
  %122 = ptrtoint ptr %121 to i64
  %123 = and i64 %122, 2233785415175766016
  %124 = icmp eq i64 %123, 936748722493063168
  br i1 %124, label %81, label %106
125:
  %126 = call ptr addrspace(1) @_bal_panic_construct(i64 3077), !dbg !7
  store ptr addrspace(1) %126, ptr %14
  br label %108
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/json1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 16, scope: !5)
!9 = !DILocation(line: 7, column: 45, scope: !5)
!10 = !DILocation(line: 7, column: 8, scope: !5)
!11 = !DILocation(line: 7, column: 8, scope: !5)
!12 = !DILocation(line: 7, column: 8, scope: !5)
!13 = !DILocation(line: 7, column: 8, scope: !5)
!14 = !DILocation(line: 7, column: 8, scope: !5)
!15 = !DILocation(line: 6, column: 10, scope: !5)
!16 = !DILocation(line: 9, column: 15, scope: !5)
!17 = !DILocation(line: 9, column: 15, scope: !5)
!18 = !DILocation(line: 9, column: 4, scope: !5)
!19 = !DILocation(line: 11, column: 19, scope: !5)
!20 = !DILocation(line: 11, column: 8, scope: !5)
!21 = !DILocation(line: 12, column: 16, scope: !5)
!22 = !DILocation(line: 14, column: 23, scope: !5)
!23 = !DILocation(line: 14, column: 12, scope: !5)
!24 = !DILocation(line: 15, column: 25, scope: !5)
!25 = !DILocation(line: 15, column: 25, scope: !5)
!26 = !DILocation(line: 15, column: 23, scope: !5)
!27 = !DILocation(line: 15, column: 23, scope: !5)
!28 = !DILocation(line: 15, column: 12, scope: !5)
!29 = !DILocation(line: 18, column: 0, scope: !5)
