@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb0m4lang5arraypush(ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
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
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %45, label %12
12:
  %13 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %14 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %15 = getelementptr i8, ptr addrspace(1) %14, i64 864691128455135236
  store ptr addrspace(1) %15, ptr %1
  %16 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %16, ptr %v
  %17 = load ptr addrspace(1), ptr %v
  %18 = and i64 72057594037927935, 0
  %19 = or i64 2449958197289549824, %18
  %20 = getelementptr i8, ptr addrspace(1) null, i64 %19
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %17, ptr addrspace(1) %20), !dbg !10
  store ptr addrspace(1) null, ptr %2
  %21 = load ptr addrspace(1), ptr %v
  %22 = zext i1 1 to i64
  %23 = or i64 %22, 72057594037927936
  %24 = getelementptr i8, ptr addrspace(1) null, i64 %23
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %21, ptr addrspace(1) %24), !dbg !11
  store ptr addrspace(1) null, ptr %3
  %25 = load ptr addrspace(1), ptr %v
  %26 = and i64 72057594037927935, 2
  %27 = or i64 2449958197289549824, %26
  %28 = getelementptr i8, ptr addrspace(1) null, i64 %27
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %25, ptr addrspace(1) %28), !dbg !12
  store ptr addrspace(1) null, ptr %4
  %29 = load ptr addrspace(1), ptr %v
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %29, ptr addrspace(1) null), !dbg !13
  store ptr addrspace(1) null, ptr %5
  %30 = load ptr addrspace(1), ptr %v
  %31 = and i64 72057594037927935, 4
  %32 = or i64 2449958197289549824, %31
  %33 = getelementptr i8, ptr addrspace(1) null, i64 %32
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %30, ptr addrspace(1) %33), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %34 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 3
  %36 = load ptr addrspace(1), ptr addrspace(1) %35, align 8
  %37 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %38 = load ptr addrspace(1), ptr %v
  %39 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %38), !dbg !16
  %40 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %37, i64 0, i64 0
  store ptr addrspace(1) %39, ptr addrspace(1) %40
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 1
  store i64 1, ptr addrspace(1) %41
  %42 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %43 = getelementptr i8, ptr addrspace(1) %42, i64 864691128455135236
  store ptr addrspace(1) %43, ptr %7
  %44 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %44), !dbg !17
  store ptr addrspace(1) null, ptr %8
  ret void
45:
  %46 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %46), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/18-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 14, scope: !5)
!10 = !DILocation(line: 5, column: 6, scope: !5)
!11 = !DILocation(line: 6, column: 6, scope: !5)
!12 = !DILocation(line: 7, column: 6, scope: !5)
!13 = !DILocation(line: 8, column: 6, scope: !5)
!14 = !DILocation(line: 9, column: 6, scope: !5)
!15 = !DILocation(line: 10, column: 15, scope: !5)
!16 = !DILocation(line: 10, column: 15, scope: !5)
!17 = !DILocation(line: 10, column: 4, scope: !5)
