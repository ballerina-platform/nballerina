@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)*, i64)
define void @_B04rootmain() !dbg !5 {
  %result = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  %9 = call i8 addrspace(1)* @_B_err(i1 1), !dbg !14
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1, !dbg !14
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %10, i8 addrspace(1)** %result
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !15
  call void @_B_display(i8 addrspace(1)* %11), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !15
  %12 = call i8 addrspace(1)* @_B_err(i1 0), !dbg !16
  store i8 addrspace(1)* %12, i8 addrspace(1)** %3, !dbg !16
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %13, i8 addrspace(1)** %result
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !17
  call void @_B_display(i8 addrspace(1)* %14), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !17
  ret void
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
}
define internal void @_B_display(i8 addrspace(1)* %0) !dbg !7 {
  %result = alloca i8 addrspace(1)*
  %2 = alloca i1
  %result.1 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %result.2 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %21, label %8
8:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %result
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %10 = addrspacecast i8 addrspace(1)* %9 to i8*
  %11 = ptrtoint i8* %10 to i64
  %12 = and i64 %11, 2233785415175766016
  %13 = icmp eq i64 %12, 792633534417207296
  store i1 %13, i1* %2
  %14 = load i1, i1* %2
  br i1 %14, label %15, label %17
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  store i8 addrspace(1)* %16, i8 addrspace(1)** %result.1
  call void @_B_p(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620702562)), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !19
  br label %20
17:
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  store i8 addrspace(1)* %18, i8 addrspace(1)** %result.2
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %result.2, !dbg !20
  call void @_B_p(i8 addrspace(1)* %19), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !20
  br label %20
20:
  ret void
21:
  %22 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820), !dbg !18
  call void @_bal_panic(i8 addrspace(1)* %22)
  unreachable
}
define internal void @_B_p(i8 addrspace(1)* %0) !dbg !9 {
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %8, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %7), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !22
  ret void
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 5124), !dbg !21
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
define internal i8 addrspace(1)* @_B_err(i1 %0) !dbg !11 {
  %ok = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %12, label %6
6:
  store i1 %0, i1* %ok
  %7 = load i1, i1* %ok
  br i1 %7, label %8, label %9
8:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630863215)
9:
  %10 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098313193684234094), i64 29), !dbg !23
  store i8 addrspace(1)* %10, i8 addrspace(1)** %2, !dbg !23
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  ret i8 addrspace(1)* %11
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 6148), !dbg !23
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-error/8-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"display", linkageName:"_B_display", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"p", linkageName:"_B_p", scope: !1, file: !1, line: 20, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"err", linkageName:"_B_err", scope: !1, file: !1, line: 24, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 5, column: 23, scope: !5)
!15 = !DILocation(line: 6, column: 4, scope: !5)
!16 = !DILocation(line: 7, column: 13, scope: !5)
!17 = !DILocation(line: 8, column: 4, scope: !5)
!18 = !DILocation(line: 0, column: 0, scope: !7)
!19 = !DILocation(line: 13, column: 8, scope: !7)
!20 = !DILocation(line: 16, column: 8, scope: !7)
!21 = !DILocation(line: 0, column: 0, scope: !9)
!22 = !DILocation(line: 21, column: 4, scope: !9)
!23 = !DILocation(line: 0, column: 0, scope: !11)
