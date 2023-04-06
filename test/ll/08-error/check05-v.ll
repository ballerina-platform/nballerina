@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %28, label %9
9:
  %10 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %11 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %10, i64 0, i32 3
  %12 = load ptr addrspace(1), ptr addrspace(1) %11, align 8
  %13 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %14 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %13, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738018640634209634), ptr addrspace(1) %14
  %15 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %10, i64 0, i32 1
  store i64 1, ptr addrspace(1) %15
  %16 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %17 = getelementptr i8, ptr addrspace(1) %16, i64 864691128455135236
  store ptr addrspace(1) %17, ptr %1
  %18 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %18), !dbg !12
  store ptr addrspace(1) null, ptr %2
  call void @_B_noOp(), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %19 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 3
  %21 = load ptr addrspace(1), ptr addrspace(1) %20, align 8
  %22 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %23 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %22, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187965258032737), ptr addrspace(1) %23
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 1
  store i64 1, ptr addrspace(1) %24
  %25 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %26 = getelementptr i8, ptr addrspace(1) %25, i64 864691128455135236
  store ptr addrspace(1) %26, ptr %4
  %27 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %27), !dbg !15
  store ptr addrspace(1) null, ptr %5
  ret void
28:
  %29 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %29), !dbg !10
  unreachable
}
define internal void @_B_noOp() !dbg !7 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %16, label %6
6:
  %7 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %8 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 3
  %9 = load ptr addrspace(1), ptr addrspace(1) %8, align 8
  %10 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %11 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %10, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738018580404858473), ptr addrspace(1) %11
  %12 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 1
  store i64 1, ptr addrspace(1) %12
  %13 = bitcast ptr addrspace(1) %7 to ptr addrspace(1)
  %14 = getelementptr i8, ptr addrspace(1) %13, i64 864691128455135236
  store ptr addrspace(1) %14, ptr %1
  %15 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %15), !dbg !19
  store ptr addrspace(1) null, ptr %2
  ret void
16:
  %17 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !16
  call void @_bal_panic(ptr addrspace(1) %17), !dbg !17
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/08-error/check05-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"noOp", linkageName:"_B_noOp", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 2, column: 16, scope: !5)
!11 = !DILocation(line: 3, column: 15, scope: !5)
!12 = !DILocation(line: 3, column: 4, scope: !5)
!13 = !DILocation(line: 4, column: 16, scope: !5)
!14 = !DILocation(line: 5, column: 15, scope: !5)
!15 = !DILocation(line: 5, column: 4, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
!17 = !DILocation(line: 9, column: 9, scope: !7)
!18 = !DILocation(line: 10, column: 15, scope: !7)
!19 = !DILocation(line: 10, column: 4, scope: !7)
