@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %45, label %16
16:
  call void @_B_makeNil(), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !12
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %18 = icmp eq i8 addrspace(1)* %17, null
  store i1 %18, i1* %1
  %19 = load i1, i1* %1, !dbg !13
  %20 = zext i1 %19 to i64, !dbg !13
  %21 = or i64 %20, 72057594037927936, !dbg !13
  %22 = getelementptr i8, i8 addrspace(1)* null, i64 %21, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !13
  call void @_B_makeNil(), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !14
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %24 = icmp eq i8 addrspace(1)* %23, null
  store i1 %24, i1* %4
  %25 = load i1, i1* %4, !dbg !15
  %26 = zext i1 %25 to i64, !dbg !15
  %27 = or i64 %26, 72057594037927936, !dbg !15
  %28 = getelementptr i8, i8 addrspace(1)* null, i64 %27, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %28), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %29 = zext i1 0 to i64, !dbg !16
  %30 = or i64 %29, 72057594037927936, !dbg !16
  %31 = getelementptr i8, i8 addrspace(1)* null, i64 %30, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %31), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %x
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %33 = icmp eq i8 addrspace(1)* %32, null
  store i1 %33, i1* %8
  %34 = load i1, i1* %8, !dbg !17
  %35 = zext i1 %34 to i64, !dbg !17
  %36 = or i64 %35, 72057594037927936, !dbg !17
  %37 = getelementptr i8, i8 addrspace(1)* null, i64 %36, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %37), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !17
  %38 = call i8 addrspace(1)* @_B_makeNilAny(), !dbg !18
  store i8 addrspace(1)* %38, i8 addrspace(1)** %11, !dbg !18
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %40 = icmp ne i8 addrspace(1)* %39, null
  store i1 %40, i1* %10
  %41 = load i1, i1* %10, !dbg !19
  %42 = zext i1 %41 to i64, !dbg !19
  %43 = or i64 %42, 72057594037927936, !dbg !19
  %44 = getelementptr i8, i8 addrspace(1)* null, i64 %43, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %44), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !19
  ret void
45:
  %46 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %46)
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
!0 = !{i32 1, !"Debug Info Version", i32 3}
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
