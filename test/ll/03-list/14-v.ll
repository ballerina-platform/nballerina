@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
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
  %13 = alloca i8
  %14 = load ptr, ptr @_bal_stack_guard
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %40, label %16
16:
  %17 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !9
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 3
  %19 = load ptr addrspace(1), ptr addrspace(1) %18, align 8
  %20 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %21 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 0
  store ptr addrspace(1) null, ptr addrspace(1) %21
  %22 = call ptr addrspace(1) @_bal_int_to_tagged(i64 1234567890123456789), !dbg !10
  %23 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 1
  store ptr addrspace(1) %22, ptr addrspace(1) %23
  %24 = zext i1 1 to i64
  %25 = or i64 %24, 72057594037927936
  %26 = getelementptr i8, ptr addrspace(1) null, i64 %25
  %27 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 2
  store ptr addrspace(1) %26, ptr addrspace(1) %27
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 1
  store i64 3, ptr addrspace(1) %28
  %29 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %30 = getelementptr i8, ptr addrspace(1) %29, i64 864691128455135236
  store ptr addrspace(1) %30, ptr %1
  %31 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %31, ptr %v
  %32 = load ptr addrspace(1), ptr %v
  %33 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %32, i64 72057594037927928)
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 1
  %36 = load i64, ptr addrspace(1) %35, align 8
  %37 = icmp ult i64 2, %36
  br i1 %37, label %42, label %65
38:
  %39 = load ptr addrspace(1), ptr %12
  call void @_bal_panic(ptr addrspace(1) %39), !dbg !21
  unreachable
40:
  %41 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %41), !dbg !8
  unreachable
42:
  %43 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 0
  %44 = load ptr, ptr addrspace(1) %43, align 8
  %45 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %44, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8
  %47 = call ptr addrspace(1) %46(ptr addrspace(1) %32, i64 2)
  %48 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %32, ptr addrspace(1) %47), !dbg !11
  store ptr addrspace(1) %48, ptr %2
  %49 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !12
  %50 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %49, i64 0, i32 3
  %51 = load ptr addrspace(1), ptr addrspace(1) %50, align 8
  %52 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %53 = load ptr addrspace(1), ptr %2
  %54 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %52, i64 0, i64 0
  store ptr addrspace(1) %53, ptr addrspace(1) %54
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %49, i64 0, i32 1
  store i64 1, ptr addrspace(1) %55
  %56 = bitcast ptr addrspace(1) %49 to ptr addrspace(1)
  %57 = getelementptr i8, ptr addrspace(1) %56, i64 864691128455135236
  store ptr addrspace(1) %57, ptr %3
  %58 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %58), !dbg !13
  store ptr addrspace(1) null, ptr %4
  %59 = load ptr addrspace(1), ptr %v
  %60 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %59, i64 72057594037927928)
  %61 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %62 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 1
  %63 = load i64, ptr addrspace(1) %62, align 8
  %64 = icmp ult i64 1, %63
  br i1 %64, label %67, label %90
65:
  %66 = call ptr addrspace(1) @_bal_panic_construct(i64 1285), !dbg !7
  store ptr addrspace(1) %66, ptr %12
  br label %38
67:
  %68 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 0
  %69 = load ptr, ptr addrspace(1) %68, align 8
  %70 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %69, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8
  %72 = call ptr addrspace(1) %71(ptr addrspace(1) %59, i64 1)
  %73 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %59, ptr addrspace(1) %72), !dbg !14
  store ptr addrspace(1) %73, ptr %5
  %74 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 3
  %76 = load ptr addrspace(1), ptr addrspace(1) %75, align 8
  %77 = bitcast ptr addrspace(1) %76 to ptr addrspace(1)
  %78 = load ptr addrspace(1), ptr %5
  %79 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %77, i64 0, i64 0
  store ptr addrspace(1) %78, ptr addrspace(1) %79
  %80 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 1
  store i64 1, ptr addrspace(1) %80
  %81 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %82 = getelementptr i8, ptr addrspace(1) %81, i64 864691128455135236
  store ptr addrspace(1) %82, ptr %6
  %83 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %83), !dbg !16
  store ptr addrspace(1) null, ptr %7
  %84 = load ptr addrspace(1), ptr %v
  %85 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %84, i64 72057594037927928)
  %86 = bitcast ptr addrspace(1) %85 to ptr addrspace(1)
  %87 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 1
  %88 = load i64, ptr addrspace(1) %87, align 8
  %89 = icmp ult i64 0, %88
  br i1 %89, label %92, label %118
90:
  %91 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %91, ptr %12
  br label %38
92:
  %93 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 0
  %94 = load ptr, ptr addrspace(1) %93, align 8
  %95 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %94, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8
  %97 = call ptr addrspace(1) %96(ptr addrspace(1) %84, i64 0)
  %98 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %84, ptr addrspace(1) %97), !dbg !17
  store ptr addrspace(1) %98, ptr %8
  %99 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 3
  %101 = load ptr addrspace(1), ptr addrspace(1) %100, align 8
  %102 = bitcast ptr addrspace(1) %101 to ptr addrspace(1)
  %103 = load ptr addrspace(1), ptr %8
  %104 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %102, i64 0, i64 0
  store ptr addrspace(1) %103, ptr addrspace(1) %104
  %105 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 1
  store i64 1, ptr addrspace(1) %105
  %106 = bitcast ptr addrspace(1) %99 to ptr addrspace(1)
  %107 = getelementptr i8, ptr addrspace(1) %106, i64 864691128455135236
  store ptr addrspace(1) %107, ptr %9
  %108 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !19
  %109 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 3
  %110 = load ptr addrspace(1), ptr addrspace(1) %109, align 8
  %111 = bitcast ptr addrspace(1) %110 to ptr addrspace(1)
  %112 = load ptr addrspace(1), ptr %9
  %113 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %111, i64 0, i64 0
  store ptr addrspace(1) %112, ptr addrspace(1) %113
  %114 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 1
  store i64 1, ptr addrspace(1) %114
  %115 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %116 = getelementptr i8, ptr addrspace(1) %115, i64 864691128455135236
  store ptr addrspace(1) %116, ptr %10
  %117 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %117), !dbg !20
  store ptr addrspace(1) null, ptr %11
  ret void
118:
  %119 = call ptr addrspace(1) @_bal_panic_construct(i64 1797), !dbg !7
  store ptr addrspace(1) %119, ptr %12
  br label %38
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/14-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 14, scope: !5)
!10 = !DILocation(line: 4, column: 14, scope: !5)
!11 = !DILocation(line: 5, column: 16, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 6, column: 16, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 4, scope: !5)
!17 = !DILocation(line: 7, column: 17, scope: !5)
!18 = !DILocation(line: 7, column: 15, scope: !5)
!19 = !DILocation(line: 7, column: 15, scope: !5)
!20 = !DILocation(line: 7, column: 4, scope: !5)
!21 = !DILocation(line: 8, column: 0, scope: !5)
