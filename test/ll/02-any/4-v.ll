@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
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
  br i1 %8, label %18, label %9
9:
  %10 = and i64 72057594037927935, 57
  %11 = or i64 2449958197289549824, %10
  %12 = getelementptr i8, ptr addrspace(1) null, i64 %11
  call void @_B_foo(ptr addrspace(1) %12), !dbg !11
  store ptr addrspace(1) null, ptr %1
  %13 = zext i1 1 to i64
  %14 = or i64 %13, 72057594037927936
  %15 = getelementptr i8, ptr addrspace(1) null, i64 %14
  call void @_B_foo(ptr addrspace(1) %15), !dbg !12
  store ptr addrspace(1) null, ptr %2
  call void @_B_foo(ptr addrspace(1) null), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %16 = call ptr addrspace(1) @_bal_int_to_tagged(i64 9223372036854775807), !dbg !14
  call void @_B_foo(ptr addrspace(1) %16), !dbg !15
  store ptr addrspace(1) null, ptr %4
  %17 = call ptr addrspace(1) @_bal_int_to_tagged(i64 -9223372036854775808), !dbg !16
  call void @_B_foo(ptr addrspace(1) %17), !dbg !17
  store ptr addrspace(1) null, ptr %5
  ret void
18:
  %19 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %19), !dbg !10
  unreachable
}
define internal void @_B_foo(ptr addrspace(1) %0) !dbg !7 {
  %x = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %18, label %7
7:
  store ptr addrspace(1) %0, ptr %x
  %8 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %9 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %8, i64 0, i32 3
  %10 = load ptr addrspace(1), ptr addrspace(1) %9, align 8
  %11 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %12 = load ptr addrspace(1), ptr %x
  %13 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %11, i64 0, i64 0
  store ptr addrspace(1) %12, ptr addrspace(1) %13
  %14 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %8, i64 0, i32 1
  store i64 1, ptr addrspace(1) %14
  %15 = bitcast ptr addrspace(1) %8 to ptr addrspace(1)
  %16 = getelementptr i8, ptr addrspace(1) %15, i64 864691128455135236
  store ptr addrspace(1) %16, ptr %2
  %17 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %17), !dbg !21
  store ptr addrspace(1) null, ptr %3
  ret void
18:
  %19 = call ptr addrspace(1) @_bal_panic_construct(i64 2820), !dbg !18
  call void @_bal_panic(ptr addrspace(1) %19), !dbg !19
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/02-any/4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 16, scope: !5)
!11 = !DILocation(line: 4, column: 4, scope: !5)
!12 = !DILocation(line: 5, column: 4, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 4, scope: !5)
!15 = !DILocation(line: 7, column: 4, scope: !5)
!16 = !DILocation(line: 8, column: 4, scope: !5)
!17 = !DILocation(line: 8, column: 4, scope: !5)
!18 = !DILocation(line: 0, column: 0, scope: !7)
!19 = !DILocation(line: 11, column: 9, scope: !7)
!20 = !DILocation(line: 12, column: 15, scope: !7)
!21 = !DILocation(line: 12, column: 4, scope: !7)
