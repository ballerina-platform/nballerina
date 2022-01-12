@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %a = alloca i8 addrspace(1)*
  %b = alloca i8 addrspace(1)*
  %c = alloca i8 addrspace(1)*
  %d = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8
  %17 = load i8*, i8** @_bal_stack_guard
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %50, label %19
19:
  store i8 addrspace(1)* null, i8 addrspace(1)** %a
  store i8 addrspace(1)* null, i8 addrspace(1)** %b
  store i8 addrspace(1)* null, i8 addrspace(1)** %c
  store i8 addrspace(1)* null, i8 addrspace(1)** %d
  %20 = zext i1 1 to i64, !dbg !18
  %21 = or i64 %20, 72057594037927936, !dbg !18
  %22 = getelementptr i8, i8 addrspace(1)* null, i64 %21, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !18
  %23 = zext i1 1 to i64, !dbg !19
  %24 = or i64 %23, 72057594037927936, !dbg !19
  %25 = getelementptr i8, i8 addrspace(1)* null, i64 %24, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !19
  %26 = zext i1 1 to i64, !dbg !20
  %27 = or i64 %26, 72057594037927936, !dbg !20
  %28 = getelementptr i8, i8 addrspace(1)* null, i64 %27, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %28), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !20
  %29 = zext i1 1 to i64, !dbg !21
  %30 = or i64 %29, 72057594037927936, !dbg !21
  %31 = getelementptr i8, i8 addrspace(1)* null, i64 %30, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %31), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !21
  %32 = zext i1 1 to i64, !dbg !22
  %33 = or i64 %32, 72057594037927936, !dbg !22
  %34 = getelementptr i8, i8 addrspace(1)* null, i64 %33, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %34), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !22
  call void @_B_retNul1(), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !23
  %35 = zext i1 1 to i64, !dbg !24
  %36 = or i64 %35, 72057594037927936, !dbg !24
  %37 = getelementptr i8, i8 addrspace(1)* null, i64 %36, !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %37), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !24
  call void @_B_retNul2(), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !25
  %38 = zext i1 1 to i64, !dbg !26
  %39 = or i64 %38, 72057594037927936, !dbg !26
  %40 = getelementptr i8, i8 addrspace(1)* null, i64 %39, !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !26
  call void @_B_retNul3(), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !27
  %41 = zext i1 1 to i64, !dbg !28
  %42 = or i64 %41, 72057594037927936, !dbg !28
  %43 = getelementptr i8, i8 addrspace(1)* null, i64 %42, !dbg !28
  call void @_Bb02ioprintln(i8 addrspace(1)* %43), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !28
  call void @_B_retNul4(), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !29
  %44 = zext i1 1 to i64, !dbg !30
  %45 = or i64 %44, 72057594037927936, !dbg !30
  %46 = getelementptr i8, i8 addrspace(1)* null, i64 %45, !dbg !30
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !30
  call void @_B_retNul5(), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !31
  %47 = zext i1 1 to i64, !dbg !32
  %48 = or i64 %47, 72057594037927936, !dbg !32
  %49 = getelementptr i8, i8 addrspace(1)* null, i64 %48, !dbg !32
  call void @_Bb02ioprintln(i8 addrspace(1)* %49), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !32
  ret void
50:
  %51 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !17
  call void @_bal_panic(i8 addrspace(1)* %51)
  unreachable
}
define internal void @_B_retNul1() !dbg !7 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret void
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 5380), !dbg !33
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
define internal void @_B_retNul2() !dbg !9 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret void
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 6404), !dbg !34
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
define internal void @_B_retNul3() !dbg !11 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret void
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 7428), !dbg !35
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
define internal void @_B_retNul4() !dbg !13 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret void
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 8452), !dbg !36
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
define internal void @_B_retNul5() !dbg !15 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret void
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 9476), !dbg !37
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/10-null/equal2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"retNul1", linkageName:"_B_retNul1", scope: !1, file: !1, line: 21, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"retNul2", linkageName:"_B_retNul2", scope: !1, file: !1, line: 25, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"retNul3", linkageName:"_B_retNul3", scope: !1, file: !1, line: 29, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = distinct !DISubprogram(name:"retNul4", linkageName:"_B_retNul4", scope: !1, file: !1, line: 33, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !14)
!14 = !{}
!15 = distinct !DISubprogram(name:"retNul5", linkageName:"_B_retNul5", scope: !1, file: !1, line: 37, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !16)
!16 = !{}
!17 = !DILocation(line: 0, column: 0, scope: !5)
!18 = !DILocation(line: 8, column: 4, scope: !5)
!19 = !DILocation(line: 9, column: 4, scope: !5)
!20 = !DILocation(line: 10, column: 4, scope: !5)
!21 = !DILocation(line: 11, column: 4, scope: !5)
!22 = !DILocation(line: 12, column: 4, scope: !5)
!23 = !DILocation(line: 14, column: 20, scope: !5)
!24 = !DILocation(line: 14, column: 4, scope: !5)
!25 = !DILocation(line: 15, column: 20, scope: !5)
!26 = !DILocation(line: 15, column: 4, scope: !5)
!27 = !DILocation(line: 16, column: 20, scope: !5)
!28 = !DILocation(line: 16, column: 4, scope: !5)
!29 = !DILocation(line: 17, column: 20, scope: !5)
!30 = !DILocation(line: 17, column: 4, scope: !5)
!31 = !DILocation(line: 18, column: 20, scope: !5)
!32 = !DILocation(line: 18, column: 4, scope: !5)
!33 = !DILocation(line: 0, column: 0, scope: !7)
!34 = !DILocation(line: 0, column: 0, scope: !9)
!35 = !DILocation(line: 0, column: 0, scope: !11)
!36 = !DILocation(line: 0, column: 0, scope: !13)
!37 = !DILocation(line: 0, column: 0, scope: !15)
