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
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %16, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 57), !dbg !10
  call void @_B_foo(i8 addrspace(1)* %10), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  %11 = zext i1 1 to i64, !dbg !11
  %12 = or i64 %11, 72057594037927936, !dbg !11
  %13 = getelementptr i8, i8 addrspace(1)* null, i64 %12, !dbg !11
  call void @_B_foo(i8 addrspace(1)* %13), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  call void @_B_foo(i8 addrspace(1)* null), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !12
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9223372036854775807), !dbg !13
  call void @_B_foo(i8 addrspace(1)* %14), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -9223372036854775808), !dbg !14
  call void @_B_foo(i8 addrspace(1)* %15), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !14
  ret void
16:
  %17 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %17)
  unreachable
}
define internal void @_B_foo(i8 addrspace(1)* %0) !dbg !7 {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %8, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %x, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %7), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !16
  ret void
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820), !dbg !15
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/02-any/4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 4, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 7, column: 4, scope: !5)
!14 = !DILocation(line: 8, column: 4, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
!16 = !DILocation(line: 12, column: 4, scope: !7)
