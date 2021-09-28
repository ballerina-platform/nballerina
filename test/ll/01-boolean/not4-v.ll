@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %6, label %5
5:
  call void @_B_printBoolean(), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  ret void
6:
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
define internal void @_B_printBoolean() !dbg !7 {
  %1 = alloca i8 addrspace(1)*
  %b = alloca i1
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %15, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %8), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !12
  store i1 0, i1* %b
  %9 = load i1, i1* %b
  %10 = xor i1 1, %9
  store i1 %10, i1* %2
  %11 = load i1, i1* %2
  br i1 %11, label %12, label %14
12:
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %13), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !13
  br label %14
14:
  ret void
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-boolean/not4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printBoolean", linkageName:"_B_printBoolean", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 4, scope: !5)
!11 = !DILocation(line: 0, column: 0, scope: !7)
!12 = !DILocation(line: 11, column: 8, scope: !7)
!13 = !DILocation(line: 15, column: 8, scope: !7)
