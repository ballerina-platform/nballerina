@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [5 x i8] c"23.3\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define internal i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %0) !dbg !5 {
  %d = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %d
  %6 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  ret i8 addrspace(1)* %6
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
define void @_B04rootmain() !dbg !7 {
  %d = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %11, label %6
6:
  %7 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([5 x i8]* @.dec0 to i8*)), !dbg !11
  %8 = call i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %7), !dbg !11
  store i8 addrspace(1)* %8, i8 addrspace(1)** %1, !dbg !11
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %9, i8 addrspace(1)** %d
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %d, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %10), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !12
  ret void
11:
  %12 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !10
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/func1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 0, column: 0, scope: !7)
!11 = !DILocation(line: 7, column: 16, scope: !7)
!12 = !DILocation(line: 8, column: 4, scope: !7)
