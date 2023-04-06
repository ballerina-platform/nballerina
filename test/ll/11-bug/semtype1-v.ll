@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
define internal ptr addrspace(1) @_B_foo(ptr addrspace(1) %0) !dbg !5 {
  %v = alloca ptr addrspace(1)
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %7, label %5
5:
  store ptr addrspace(1) %0, ptr %v
  %6 = load ptr addrspace(1), ptr %v
  ret ptr addrspace(1) %6
7:
  %8 = call ptr addrspace(1) @_bal_panic_construct(i64 3588), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %8), !dbg !10
  unreachable
}
define void @_B04rootmain() !dbg !7 {
  %x = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %32, label %8
8:
  %9 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %10 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 3
  %11 = load ptr addrspace(1), ptr addrspace(1) %10, align 8
  %12 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %13 = getelementptr inbounds [0 x i64], ptr addrspace(1) %12, i64 0, i64 0
  store i64 17, ptr addrspace(1) %13
  %14 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 1
  store i64 1, ptr addrspace(1) %14
  %15 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %16 = getelementptr i8, ptr addrspace(1) %15, i64 864691128455135236
  store ptr addrspace(1) %16, ptr %1
  %17 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %17, ptr %x
  %18 = load ptr addrspace(1), ptr %x
  %19 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %18), !dbg !14
  %20 = call ptr addrspace(1) @_B_foo(ptr addrspace(1) %19), !dbg !15
  store ptr addrspace(1) %20, ptr %2
  %21 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 3
  %23 = load ptr addrspace(1), ptr addrspace(1) %22, align 8
  %24 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %25 = load ptr addrspace(1), ptr %2
  %26 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %25), !dbg !17
  %27 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %24, i64 0, i64 0
  store ptr addrspace(1) %26, ptr addrspace(1) %27
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 1
  store i64 1, ptr addrspace(1) %28
  %29 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %30 = getelementptr i8, ptr addrspace(1) %29, i64 864691128455135236
  store ptr addrspace(1) %30, ptr %3
  %31 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %31), !dbg !18
  store ptr addrspace(1) null, ptr %4
  ret void
32:
  %33 = call ptr addrspace(1) @_bal_panic_construct(i64 4612), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %33), !dbg !12
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-bug/semtype1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 14, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 18, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 14, column: 9, scope: !5)
!11 = !DILocation(line: 0, column: 0, scope: !7)
!12 = !DILocation(line: 18, column: 16, scope: !7)
!13 = !DILocation(line: 19, column: 14, scope: !7)
!14 = !DILocation(line: 20, column: 15, scope: !7)
!15 = !DILocation(line: 20, column: 15, scope: !7)
!16 = !DILocation(line: 20, column: 15, scope: !7)
!17 = !DILocation(line: 20, column: 15, scope: !7)
!18 = !DILocation(line: 20, column: 4, scope: !7)
