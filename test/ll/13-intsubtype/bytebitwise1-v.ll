@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %7, label %6
6:
  call void @_B_and(), !dbg !13
  store ptr addrspace(1) null, ptr %1
  call void @_B_or(), !dbg !14
  store ptr addrspace(1) null, ptr %2
  ret void
7:
  %8 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %8), !dbg !12
  unreachable
}
define internal void @_B_and() !dbg !7 {
  %x = alloca i64
  %y = alloca i64
  %n = alloca i64
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %25, label %7
7:
  store i64 255, ptr %x
  store i64 4612, ptr %y
  %8 = load i64, ptr %x
  %9 = load i64, ptr %y
  %10 = and i64 %8, %9
  store i64 %10, ptr %1
  %11 = load i64, ptr %1
  store i64 %11, ptr %n
  %12 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %13 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 3
  %14 = load ptr addrspace(1), ptr addrspace(1) %13, align 8
  %15 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %16 = load i64, ptr %n
  %17 = and i64 72057594037927935, %16
  %18 = or i64 2449958197289549824, %17
  %19 = getelementptr i8, ptr addrspace(1) null, i64 %18
  %20 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %15, i64 0, i64 0
  store ptr addrspace(1) %19, ptr addrspace(1) %20
  %21 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 1
  store i64 1, ptr addrspace(1) %21
  %22 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %23 = getelementptr i8, ptr addrspace(1) %22, i64 864691128455135236
  store ptr addrspace(1) %23, ptr %2
  %24 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %24), !dbg !18
  store ptr addrspace(1) null, ptr %3
  ret void
25:
  %26 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !15
  call void @_bal_panic(ptr addrspace(1) %26), !dbg !16
  unreachable
}
define internal void @_B_or() !dbg !9 {
  %x = alloca i64
  %y = alloca i64
  %b = alloca i64
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %25, label %7
7:
  store i64 240, ptr %x
  store i64 15, ptr %y
  %8 = load i64, ptr %x
  %9 = load i64, ptr %y
  %10 = or i64 %8, %9
  store i64 %10, ptr %1
  %11 = load i64, ptr %1
  store i64 %11, ptr %b
  %12 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %13 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 3
  %14 = load ptr addrspace(1), ptr addrspace(1) %13, align 8
  %15 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %16 = load i64, ptr %b
  %17 = and i64 72057594037927935, %16
  %18 = or i64 2449958197289549824, %17
  %19 = getelementptr i8, ptr addrspace(1) null, i64 %18
  %20 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %15, i64 0, i64 0
  store ptr addrspace(1) %19, ptr addrspace(1) %20
  %21 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 1
  store i64 1, ptr addrspace(1) %21
  %22 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %23 = getelementptr i8, ptr addrspace(1) %22, i64 864691128455135236
  store ptr addrspace(1) %23, ptr %2
  %24 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %24), !dbg !22
  store ptr addrspace(1) null, ptr %3
  ret void
25:
  %26 = call ptr addrspace(1) @_bal_panic_construct(i64 3844), !dbg !19
  call void @_bal_panic(ptr addrspace(1) %26), !dbg !20
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-intsubtype/bytebitwise1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"and", linkageName:"_B_and", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"or", linkageName:"_B_or", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 3, column: 16, scope: !5)
!13 = !DILocation(line: 4, column: 4, scope: !5)
!14 = !DILocation(line: 5, column: 4, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
!16 = !DILocation(line: 8, column: 9, scope: !7)
!17 = !DILocation(line: 12, column: 15, scope: !7)
!18 = !DILocation(line: 12, column: 4, scope: !7)
!19 = !DILocation(line: 0, column: 0, scope: !9)
!20 = !DILocation(line: 15, column: 9, scope: !9)
!21 = !DILocation(line: 19, column: 15, scope: !9)
!22 = !DILocation(line: 19, column: 4, scope: !9)
