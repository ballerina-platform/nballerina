@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %30, label %9
9:
  %10 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %11 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %12 = getelementptr i8, ptr addrspace(1) %11, i64 864691128455135236
  store ptr addrspace(1) %12, ptr %1
  %13 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %13, ptr %a
  %14 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 2), !dbg !10
  %15 = and i64 72057594037927935, 1
  %16 = or i64 2449958197289549824, %15
  %17 = getelementptr i8, ptr addrspace(1) null, i64 %16
  call void @_bal_mapping_init_member(ptr addrspace(1) %14, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573432114793), ptr addrspace(1) %17), !dbg !11
  call void @_bal_mapping_init_member(ptr addrspace(1) %14, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738020822377722995), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431985267)), !dbg !12
  store ptr addrspace(1) %14, ptr %2
  %18 = load ptr addrspace(1), ptr %a
  %19 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %18, i64 72057594037927928), !dbg !13
  %20 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %21 = load ptr addrspace(1), ptr %2
  %22 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 0
  %23 = load ptr, ptr addrspace(1) %22, align 8
  %24 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8
  %26 = call i64 %25(ptr addrspace(1) %18, i64 2, ptr addrspace(1) %21)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %32, label %44
28:
  %29 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %29), !dbg !17
  unreachable
30:
  %31 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %31), !dbg !8
  unreachable
32:
  %33 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !14
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 3
  %35 = load ptr addrspace(1), ptr addrspace(1) %34, align 8
  %36 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %37 = load ptr addrspace(1), ptr %a
  %38 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %37), !dbg !15
  %39 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %36, i64 0, i64 0
  store ptr addrspace(1) %38, ptr addrspace(1) %39
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 1
  store i64 1, ptr addrspace(1) %40
  %41 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %42 = getelementptr i8, ptr addrspace(1) %41, i64 864691128455135236
  store ptr addrspace(1) %42, ptr %3
  %43 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %43), !dbg !16
  store ptr addrspace(1) null, ptr %4
  ret void
44:
  %45 = or i64 %26, 1536
  %46 = call ptr addrspace(1) @_bal_panic_construct(i64 %45), !dbg !7
  store ptr addrspace(1) %46, ptr %5
  br label %28
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-fill/16-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 12, scope: !5)
!10 = !DILocation(line: 6, column: 11, scope: !5)
!11 = !DILocation(line: 6, column: 11, scope: !5)
!12 = !DILocation(line: 6, column: 11, scope: !5)
!13 = !DILocation(line: 6, column: 5, scope: !5)
!14 = !DILocation(line: 7, column: 15, scope: !5)
!15 = !DILocation(line: 7, column: 15, scope: !5)
!16 = !DILocation(line: 7, column: 4, scope: !5)
!17 = !DILocation(line: 8, column: 0, scope: !5)
