@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %is3 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %tb2 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %43, label %11
11:
  %12 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !9
  %13 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 3
  %14 = load ptr addrspace(1), ptr addrspace(1) %13, align 8
  %15 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %16 = and i64 72057594037927935, 1
  %17 = or i64 2449958197289549824, %16
  %18 = getelementptr i8, ptr addrspace(1) null, i64 %17
  %19 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %15, i64 0, i64 0
  store ptr addrspace(1) %18, ptr addrspace(1) %19
  %20 = and i64 72057594037927935, 2
  %21 = or i64 2449958197289549824, %20
  %22 = getelementptr i8, ptr addrspace(1) null, i64 %21
  %23 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %15, i64 0, i64 1
  store ptr addrspace(1) %22, ptr addrspace(1) %23
  %24 = and i64 72057594037927935, 3
  %25 = or i64 2449958197289549824, %24
  %26 = getelementptr i8, ptr addrspace(1) null, i64 %25
  %27 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %15, i64 0, i64 2
  store ptr addrspace(1) %26, ptr addrspace(1) %27
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 1
  store i64 3, ptr addrspace(1) %28
  %29 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %30 = getelementptr i8, ptr addrspace(1) %29, i64 864691128455135236
  store ptr addrspace(1) %30, ptr %1
  %31 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %31, ptr %is3
  %32 = load ptr addrspace(1), ptr %is3
  %33 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %32, i64 72057594037927928), !dbg !10
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 0
  %36 = load ptr, ptr addrspace(1) %35, align 8
  %37 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %36, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8
  %39 = call i64 %38(ptr addrspace(1) %32, i64 1, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261428))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %45, label %82
41:
  %42 = load ptr addrspace(1), ptr %7
  call void @_bal_panic(ptr addrspace(1) %42), !dbg !19
  unreachable
43:
  %44 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %44), !dbg !8
  unreachable
45:
  %46 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !11
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 3
  %48 = load ptr addrspace(1), ptr addrspace(1) %47, align 8
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = load ptr addrspace(1), ptr %is3
  %51 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %50), !dbg !12
  %52 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %49, i64 0, i64 0
  store ptr addrspace(1) %51, ptr addrspace(1) %52
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  store i64 1, ptr addrspace(1) %53
  %54 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %55 = getelementptr i8, ptr addrspace(1) %54, i64 864691128455135236
  store ptr addrspace(1) %55, ptr %2
  %56 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %56), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %57 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 2), !dbg !14
  %58 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 3
  %59 = load ptr addrspace(1), ptr addrspace(1) %58, align 8
  %60 = bitcast ptr addrspace(1) %59 to ptr addrspace(1)
  %61 = and i64 72057594037927935, 2
  %62 = or i64 2449958197289549824, %61
  %63 = getelementptr i8, ptr addrspace(1) null, i64 %62
  %64 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %60, i64 0, i64 0
  store ptr addrspace(1) %63, ptr addrspace(1) %64
  %65 = zext i1 1 to i64
  %66 = or i64 %65, 72057594037927936
  %67 = getelementptr i8, ptr addrspace(1) null, i64 %66
  %68 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %60, i64 0, i64 1
  store ptr addrspace(1) %67, ptr addrspace(1) %68
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 1
  store i64 2, ptr addrspace(1) %69
  %70 = bitcast ptr addrspace(1) %57 to ptr addrspace(1)
  %71 = getelementptr i8, ptr addrspace(1) %70, i64 864691128455135236
  store ptr addrspace(1) %71, ptr %4
  %72 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %72, ptr %tb2
  %73 = load ptr addrspace(1), ptr %tb2
  %74 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %73, i64 72057594037927928), !dbg !15
  %75 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %76 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 0
  %77 = load ptr, ptr addrspace(1) %76, align 8
  %78 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %77, i64 0, i32 7
  %79 = load ptr, ptr %78, align 8
  %80 = call i64 %79(ptr addrspace(1) %73, i64 1, i64 2)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %85, label %97
82:
  %83 = or i64 %39, 1792
  %84 = call ptr addrspace(1) @_bal_panic_construct(i64 %83), !dbg !7
  store ptr addrspace(1) %84, ptr %7
  br label %41
85:
  %86 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %87 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 3
  %88 = load ptr addrspace(1), ptr addrspace(1) %87, align 8
  %89 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %90 = load ptr addrspace(1), ptr %tb2
  %91 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %90), !dbg !17
  %92 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %89, i64 0, i64 0
  store ptr addrspace(1) %91, ptr addrspace(1) %92
  %93 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 1
  store i64 1, ptr addrspace(1) %93
  %94 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %95 = getelementptr i8, ptr addrspace(1) %94, i64 864691128455135236
  store ptr addrspace(1) %95, ptr %5
  %96 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %96), !dbg !18
  store ptr addrspace(1) null, ptr %6
  ret void
97:
  %98 = or i64 %80, 2560
  %99 = call ptr addrspace(1) @_bal_panic_construct(i64 %98), !dbg !7
  store ptr addrspace(1) %99, ptr %7
  br label %41
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-array/fixedlength2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 26, scope: !5)
!10 = !DILocation(line: 7, column: 7, scope: !5)
!11 = !DILocation(line: 8, column: 15, scope: !5)
!12 = !DILocation(line: 8, column: 15, scope: !5)
!13 = !DILocation(line: 8, column: 4, scope: !5)
!14 = !DILocation(line: 9, column: 27, scope: !5)
!15 = !DILocation(line: 10, column: 7, scope: !5)
!16 = !DILocation(line: 11, column: 15, scope: !5)
!17 = !DILocation(line: 11, column: 15, scope: !5)
!18 = !DILocation(line: 11, column: 4, scope: !5)
!19 = !DILocation(line: 12, column: 0, scope: !5)
