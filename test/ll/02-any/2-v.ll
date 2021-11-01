@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %b = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %23, label %8
8:
  %9 = zext i1 1 to i64, !dbg !8
  %10 = or i64 %9, 72057594037927936, !dbg !8
  %11 = getelementptr i8, i8 addrspace(1)* null, i64 %10, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %11), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  %12 = zext i1 0 to i64, !dbg !9
  %13 = or i64 %12, 72057594037927936, !dbg !9
  %14 = getelementptr i8, i8 addrspace(1)* null, i64 %13, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %14), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  store i1 1, i1* %b
  %15 = load i1, i1* %b, !dbg !10
  %16 = zext i1 %15 to i64, !dbg !10
  %17 = or i64 %16, 72057594037927936, !dbg !10
  %18 = getelementptr i8, i8 addrspace(1)* null, i64 %17, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %18), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !10
  store i1 0, i1* %b
  %19 = load i1, i1* %b, !dbg !11
  %20 = zext i1 %19 to i64, !dbg !11
  %21 = or i64 %20, 72057594037927936, !dbg !11
  %22 = getelementptr i8, i8 addrspace(1)* null, i64 %21, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  ret void
23:
  %24 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %24)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/02-any/2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 4, scope: !5)
!9 = !DILocation(line: 6, column: 4, scope: !5)
!10 = !DILocation(line: 8, column: 4, scope: !5)
!11 = !DILocation(line: 10, column: 4, scope: !5)
