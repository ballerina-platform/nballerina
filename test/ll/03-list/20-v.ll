@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb0m4lang5arraypush(ptr addrspace(1), ptr addrspace(1))
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %49, label %9
9:
  %10 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %11 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %12 = getelementptr i8, ptr addrspace(1) %11, i64 864691128455135236
  store ptr addrspace(1) %12, ptr %1
  %13 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %13, ptr %v
  %14 = load ptr addrspace(1), ptr %v
  %15 = load ptr addrspace(1), ptr %v
  %16 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %15), !dbg !10
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %14, ptr addrspace(1) %16), !dbg !11
  store ptr addrspace(1) null, ptr %2
  %17 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 4), !dbg !12
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 3
  %19 = load ptr addrspace(1), ptr addrspace(1) %18, align 8
  %20 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %21 = and i64 72057594037927935, 1
  %22 = or i64 2449958197289549824, %21
  %23 = getelementptr i8, ptr addrspace(1) null, i64 %22
  %24 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 0
  store ptr addrspace(1) %23, ptr addrspace(1) %24
  %25 = and i64 72057594037927935, 2
  %26 = or i64 2449958197289549824, %25
  %27 = getelementptr i8, ptr addrspace(1) null, i64 %26
  %28 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 1
  store ptr addrspace(1) %27, ptr addrspace(1) %28
  %29 = load ptr addrspace(1), ptr %v
  %30 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %29), !dbg !13
  %31 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 2
  store ptr addrspace(1) %30, ptr addrspace(1) %31
  %32 = and i64 72057594037927935, 4
  %33 = or i64 2449958197289549824, %32
  %34 = getelementptr i8, ptr addrspace(1) null, i64 %33
  %35 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 3
  store ptr addrspace(1) %34, ptr addrspace(1) %35
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 1
  store i64 4, ptr addrspace(1) %36
  %37 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %38 = getelementptr i8, ptr addrspace(1) %37, i64 864691128455135236
  store ptr addrspace(1) %38, ptr %3
  %39 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !14
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 3
  %41 = load ptr addrspace(1), ptr addrspace(1) %40, align 8
  %42 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %43 = load ptr addrspace(1), ptr %3
  %44 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %42, i64 0, i64 0
  store ptr addrspace(1) %43, ptr addrspace(1) %44
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 1
  store i64 1, ptr addrspace(1) %45
  %46 = bitcast ptr addrspace(1) %39 to ptr addrspace(1)
  %47 = getelementptr i8, ptr addrspace(1) %46, i64 864691128455135236
  store ptr addrspace(1) %47, ptr %4
  %48 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %48), !dbg !15
  store ptr addrspace(1) null, ptr %5
  ret void
49:
  %50 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %50), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/20-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 12, scope: !5)
!10 = !DILocation(line: 6, column: 4, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 7, column: 13, scope: !5)
!13 = !DILocation(line: 7, column: 13, scope: !5)
!14 = !DILocation(line: 7, column: 13, scope: !5)
!15 = !DILocation(line: 7, column: 2, scope: !5)
