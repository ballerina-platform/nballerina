@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %b = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %24, label %14
14:
  call void @_B_makeNil(), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %15), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  call void @_B_makeNil(), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !12
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %16), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !14
  call void @_B_makeNil(), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4), !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %18), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !16
  call void @_B_makeNil(), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5), !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %19), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !18
  store i1 0, i1* %b
  %20 = load i1, i1* %b
  br i1 %20, label %21, label %23
21:
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 6), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !19
  br label %23
23:
  ret void
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %25)
  unreachable
}
define internal void @_B_makeNil() !dbg !7 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret void
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 7684), !dbg !20
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/02-nil/equal-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"makeNil", linkageName:"_B_makeNil", scope: !1, file: !1, line: 30, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 7, scope: !5)
!11 = !DILocation(line: 6, column: 8, scope: !5)
!12 = !DILocation(line: 8, column: 13, scope: !5)
!13 = !DILocation(line: 9, column: 8, scope: !5)
!14 = !DILocation(line: 12, column: 8, scope: !5)
!15 = !DILocation(line: 14, column: 7, scope: !5)
!16 = !DILocation(line: 17, column: 8, scope: !5)
!17 = !DILocation(line: 19, column: 13, scope: !5)
!18 = !DILocation(line: 22, column: 8, scope: !5)
!19 = !DILocation(line: 26, column: 8, scope: !5)
!20 = !DILocation(line: 0, column: 0, scope: !7)
