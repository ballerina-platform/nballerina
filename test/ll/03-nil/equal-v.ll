@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %37, label %14
14:
  call void @_B_makeNil(), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !12
  %15 = zext i1 1 to i64, !dbg !13
  %16 = or i64 %15, 72057594037927936, !dbg !13
  %17 = getelementptr i8, i8 addrspace(1)* null, i64 %16, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !13
  call void @_B_makeNil(), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !14
  %18 = zext i1 1 to i64, !dbg !15
  %19 = or i64 %18, 72057594037927936, !dbg !15
  %20 = getelementptr i8, i8 addrspace(1)* null, i64 %19, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !15
  %21 = zext i1 0 to i64, !dbg !16
  %22 = or i64 %21, 72057594037927936, !dbg !16
  %23 = getelementptr i8, i8 addrspace(1)* null, i64 %22, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %x
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %25 = icmp eq i8 addrspace(1)* %24, null
  store i1 %25, i1* %6
  %26 = load i1, i1* %6, !dbg !17
  %27 = zext i1 %26 to i64, !dbg !17
  %28 = or i64 %27, 72057594037927936, !dbg !17
  %29 = getelementptr i8, i8 addrspace(1)* null, i64 %28, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %29), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !17
  %30 = call i8 addrspace(1)* @_B_makeNilAny(), !dbg !18
  store i8 addrspace(1)* %30, i8 addrspace(1)** %8, !dbg !18
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %32 = icmp ne i8 addrspace(1)* %31, null
  store i1 %32, i1* %9
  %33 = load i1, i1* %9, !dbg !19
  %34 = zext i1 %33 to i64, !dbg !19
  %35 = or i64 %34, 72057594037927936, !dbg !19
  %36 = getelementptr i8, i8 addrspace(1)* null, i64 %35, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !19
  ret void
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %38)
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
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 3332), !dbg !20
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
define internal i8 addrspace(1)* @_B_makeNilAny() !dbg !9 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret i8 addrspace(1)* null
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 4356), !dbg !21
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-nil/equal-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"makeNil", linkageName:"_B_makeNil", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"makeNilAny", linkageName:"_B_makeNilAny", scope: !1, file: !1, line: 17, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 6, column: 15, scope: !5)
!15 = !DILocation(line: 6, column: 4, scope: !5)
!16 = !DILocation(line: 7, column: 4, scope: !5)
!17 = !DILocation(line: 9, column: 4, scope: !5)
!18 = !DILocation(line: 10, column: 15, scope: !5)
!19 = !DILocation(line: 10, column: 4, scope: !5)
!20 = !DILocation(line: 0, column: 0, scope: !7)
!21 = !DILocation(line: 0, column: 0, scope: !9)
