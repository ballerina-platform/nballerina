@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define internal i1 @_B_foo(i64 %0, i64 %1, i64 %2) !dbg !5 {
  %a = alloca i64
  %b = alloca i64
  %c = alloca i64
  %4 = alloca i64
  %5 = alloca i1
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %17, label %9
9:
  store i64 %0, ptr %a
  store i64 %1, ptr %b
  store i64 %2, ptr %c
  %10 = load i64, ptr %a
  %11 = load i64, ptr %b
  %12 = or i64 %10, %11
  store i64 %12, ptr %4
  %13 = load i64, ptr %4
  %14 = load i64, ptr %c
  %15 = icmp eq i64 %13, %14
  store i1 %15, ptr %5
  %16 = load i1, ptr %5
  ret i1 %16
17:
  %18 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %18), !dbg !10
  unreachable
}
define void @_B04rootmain() !dbg !7 {
  %1 = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %22, label %7
7:
  %8 = call i1 @_B_foo(i64 1, i64 1, i64 2), !dbg !13
  store i1 %8, ptr %1
  %9 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %10 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 3
  %11 = load ptr addrspace(1), ptr addrspace(1) %10, align 8
  %12 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %13 = load i1, ptr %1
  %14 = zext i1 %13 to i64
  %15 = or i64 %14, 72057594037927936
  %16 = getelementptr i8, ptr addrspace(1) null, i64 %15
  %17 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %12, i64 0, i64 0
  store ptr addrspace(1) %16, ptr addrspace(1) %17
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 1
  store i64 1, ptr addrspace(1) %18
  %19 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %20 = getelementptr i8, ptr addrspace(1) %19, i64 864691128455135236
  store ptr addrspace(1) %20, ptr %2
  %21 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %21), !dbg !15
  store ptr addrspace(1) null, ptr %3
  ret void
22:
  %23 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %23), !dbg !12
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-boolean/equal-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 9, scope: !5)
!11 = !DILocation(line: 0, column: 0, scope: !7)
!12 = !DILocation(line: 8, column: 16, scope: !7)
!13 = !DILocation(line: 9, column: 15, scope: !7)
!14 = !DILocation(line: 9, column: 15, scope: !7)
!15 = !DILocation(line: 9, column: 4, scope: !7)
