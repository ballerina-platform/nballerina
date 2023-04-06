@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %b = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i8
  %13 = load ptr, ptr @_bal_stack_guard
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %85, label %15
15:
  %16 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !9
  %17 = and i64 72057594037927935, 1
  %18 = or i64 2449958197289549824, %17
  %19 = getelementptr i8, ptr addrspace(1) null, i64 %18
  call void @_bal_mapping_init_member(ptr addrspace(1) %16, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %19), !dbg !10
  store ptr addrspace(1) %16, ptr %1
  %20 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 3), !dbg !11
  %21 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 3
  %22 = load ptr addrspace(1), ptr addrspace(1) %21, align 8
  %23 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %24 = load ptr addrspace(1), ptr %1
  %25 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %23, i64 0, i64 0
  store ptr addrspace(1) %24, ptr addrspace(1) %25
  %26 = and i64 72057594037927935, 0
  %27 = or i64 2449958197289549824, %26
  %28 = getelementptr i8, ptr addrspace(1) null, i64 %27
  %29 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %23, i64 0, i64 1
  store ptr addrspace(1) %28, ptr addrspace(1) %29
  %30 = and i64 72057594037927935, 0
  %31 = or i64 2449958197289549824, %30
  %32 = getelementptr i8, ptr addrspace(1) null, i64 %31
  %33 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %23, i64 0, i64 2
  store ptr addrspace(1) %32, ptr addrspace(1) %33
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 1
  store i64 3, ptr addrspace(1) %34
  %35 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %36 = getelementptr i8, ptr addrspace(1) %35, i64 864691128455135236
  store ptr addrspace(1) %36, ptr %2
  %37 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %37, ptr %a
  %38 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !12
  %39 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 3
  %40 = load ptr addrspace(1), ptr addrspace(1) %39, align 8
  %41 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %42 = load ptr addrspace(1), ptr %a
  %43 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %42), !dbg !13
  %44 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %41, i64 0, i64 0
  store ptr addrspace(1) %43, ptr addrspace(1) %44
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 1
  store i64 1, ptr addrspace(1) %45
  %46 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %47 = getelementptr i8, ptr addrspace(1) %46, i64 864691128455135236
  store ptr addrspace(1) %47, ptr %3
  %48 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %48), !dbg !14
  store ptr addrspace(1) null, ptr %4
  %49 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !15
  %50 = and i64 72057594037927935, 1
  %51 = or i64 2449958197289549824, %50
  %52 = getelementptr i8, ptr addrspace(1) null, i64 %51
  call void @_bal_mapping_init_member(ptr addrspace(1) %49, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %52), !dbg !16
  store ptr addrspace(1) %49, ptr %5
  %53 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 1), !dbg !17
  %54 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 3
  %55 = load ptr addrspace(1), ptr addrspace(1) %54, align 8
  %56 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %57 = load ptr addrspace(1), ptr %5
  %58 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %56, i64 0, i64 0
  store ptr addrspace(1) %57, ptr addrspace(1) %58
  %59 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 1
  store i64 1, ptr addrspace(1) %59
  %60 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %61 = getelementptr i8, ptr addrspace(1) %60, i64 864691128455135236
  store ptr addrspace(1) %61, ptr %6
  %62 = load ptr addrspace(1), ptr %6
  store ptr addrspace(1) %62, ptr %b
  %63 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !18
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 3
  %65 = load ptr addrspace(1), ptr addrspace(1) %64, align 8
  %66 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %67 = load ptr addrspace(1), ptr %b
  %68 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %67), !dbg !19
  %69 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %66, i64 0, i64 0
  store ptr addrspace(1) %68, ptr addrspace(1) %69
  %70 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 1
  store i64 1, ptr addrspace(1) %70
  %71 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %72 = getelementptr i8, ptr addrspace(1) %71, i64 864691128455135236
  store ptr addrspace(1) %72, ptr %7
  %73 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %73), !dbg !20
  store ptr addrspace(1) null, ptr %8
  %74 = load ptr addrspace(1), ptr %b
  %75 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %74, i64 72057594037927928), !dbg !21
  %76 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %77 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %76, i64 0, i32 0
  %78 = load ptr, ptr addrspace(1) %77, align 8
  %79 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %78, i64 0, i32 7
  %80 = load ptr, ptr %79, align 8
  %81 = call i64 %80(ptr addrspace(1) %74, i64 2, i64 10)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %87, label %99
83:
  %84 = load ptr addrspace(1), ptr %11
  call void @_bal_panic(ptr addrspace(1) %84), !dbg !25
  unreachable
85:
  %86 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %86), !dbg !8
  unreachable
87:
  %88 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !22
  %89 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %88, i64 0, i32 3
  %90 = load ptr addrspace(1), ptr addrspace(1) %89, align 8
  %91 = bitcast ptr addrspace(1) %90 to ptr addrspace(1)
  %92 = load ptr addrspace(1), ptr %b
  %93 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %92), !dbg !23
  %94 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %91, i64 0, i64 0
  store ptr addrspace(1) %93, ptr addrspace(1) %94
  %95 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %88, i64 0, i32 1
  store i64 1, ptr addrspace(1) %95
  %96 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %97 = getelementptr i8, ptr addrspace(1) %96, i64 864691128455135236
  store ptr addrspace(1) %97, ptr %9
  %98 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %98), !dbg !24
  store ptr addrspace(1) null, ptr %10
  ret void
99:
  %100 = or i64 %81, 2816
  %101 = call ptr addrspace(1) @_bal_panic_construct(i64 %100), !dbg !7
  store ptr addrspace(1) %101, ptr %11
  br label %83
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-fill/17-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 16, scope: !5)
!9 = !DILocation(line: 7, column: 23, scope: !5)
!10 = !DILocation(line: 7, column: 23, scope: !5)
!11 = !DILocation(line: 7, column: 22, scope: !5)
!12 = !DILocation(line: 8, column: 15, scope: !5)
!13 = !DILocation(line: 8, column: 15, scope: !5)
!14 = !DILocation(line: 8, column: 4, scope: !5)
!15 = !DILocation(line: 9, column: 21, scope: !5)
!16 = !DILocation(line: 9, column: 21, scope: !5)
!17 = !DILocation(line: 9, column: 20, scope: !5)
!18 = !DILocation(line: 10, column: 15, scope: !5)
!19 = !DILocation(line: 10, column: 15, scope: !5)
!20 = !DILocation(line: 10, column: 4, scope: !5)
!21 = !DILocation(line: 11, column: 5, scope: !5)
!22 = !DILocation(line: 12, column: 15, scope: !5)
!23 = !DILocation(line: 12, column: 15, scope: !5)
!24 = !DILocation(line: 12, column: 4, scope: !5)
!25 = !DILocation(line: 13, column: 0, scope: !5)
