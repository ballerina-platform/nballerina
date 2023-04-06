@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %13, label %7
7:
  %8 = call i1 @_B_foo(), !dbg !15
  store i1 %8, ptr %1
  %9 = load i1, ptr %1
  br i1 %9, label %10, label %11
10:
  call void @_B_bar(i64 100), !dbg !17
  store ptr addrspace(1) null, ptr %2
  br label %12
11:
  call void @_B_baz(i64 200), !dbg !16
  store ptr addrspace(1) null, ptr %3
  br label %12
12:
  ret void
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !14
  unreachable
}
define internal i1 @_B_foo() !dbg !7 {
  %1 = alloca i8
  %2 = load ptr, ptr @_bal_stack_guard
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %5, label %4
4:
  ret i1 1
5:
  %6 = call ptr addrspace(1) @_bal_panic_construct(i64 3076), !dbg !18
  call void @_bal_panic(ptr addrspace(1) %6), !dbg !19
  unreachable
}
define internal void @_B_bar(i64 %0) !dbg !9 {
  %x = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %19, label %7
7:
  store i64 %0, ptr %x
  %8 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %9 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %8, i64 0, i32 3
  %10 = load ptr addrspace(1), ptr addrspace(1) %9, align 8
  %11 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %12 = load i64, ptr %x
  %13 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %12), !dbg !23
  %14 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %11, i64 0, i64 0
  store ptr addrspace(1) %13, ptr addrspace(1) %14
  %15 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %8, i64 0, i32 1
  store i64 1, ptr addrspace(1) %15
  %16 = bitcast ptr addrspace(1) %8 to ptr addrspace(1)
  %17 = getelementptr i8, ptr addrspace(1) %16, i64 864691128455135236
  store ptr addrspace(1) %17, ptr %2
  %18 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %18), !dbg !24
  store ptr addrspace(1) null, ptr %3
  ret void
19:
  %20 = call ptr addrspace(1) @_bal_panic_construct(i64 4100), !dbg !20
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !21
  unreachable
}
define internal void @_B_baz(i64 %0) !dbg !11 {
  %x = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %19, label %7
7:
  store i64 %0, ptr %x
  %8 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %9 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %8, i64 0, i32 3
  %10 = load ptr addrspace(1), ptr addrspace(1) %9, align 8
  %11 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %12 = load i64, ptr %x
  %13 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %12), !dbg !28
  %14 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %11, i64 0, i64 0
  store ptr addrspace(1) %13, ptr addrspace(1) %14
  %15 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %8, i64 0, i32 1
  store i64 1, ptr addrspace(1) %15
  %16 = bitcast ptr addrspace(1) %8 to ptr addrspace(1)
  %17 = getelementptr i8, ptr addrspace(1) %16, i64 864691128455135236
  store ptr addrspace(1) %17, ptr %2
  %18 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %18), !dbg !29
  store ptr addrspace(1) null, ptr %3
  ret void
19:
  %20 = call ptr addrspace(1) @_bal_panic_construct(i64 5124), !dbg !25
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !26
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-function/call06-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"bar", linkageName:"_B_bar", scope: !1, file: !1, line: 16, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"baz", linkageName:"_B_baz", scope: !1, file: !1, line: 20, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 4, column: 16, scope: !5)
!15 = !DILocation(line: 5, column: 8, scope: !5)
!16 = !DILocation(line: 8, column: 8, scope: !5)
!17 = !DILocation(line: 6, column: 8, scope: !5)
!18 = !DILocation(line: 0, column: 0, scope: !7)
!19 = !DILocation(line: 12, column: 9, scope: !7)
!20 = !DILocation(line: 0, column: 0, scope: !9)
!21 = !DILocation(line: 16, column: 9, scope: !9)
!22 = !DILocation(line: 17, column: 15, scope: !9)
!23 = !DILocation(line: 17, column: 15, scope: !9)
!24 = !DILocation(line: 17, column: 4, scope: !9)
!25 = !DILocation(line: 0, column: 0, scope: !11)
!26 = !DILocation(line: 20, column: 9, scope: !11)
!27 = !DILocation(line: 21, column: 15, scope: !11)
!28 = !DILocation(line: 21, column: 15, scope: !11)
!29 = !DILocation(line: 21, column: 4, scope: !11)
