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
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i1
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i1
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8
  %22 = load i8*, i8** @_bal_stack_guard
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %70, label %24
24:
  store i8 addrspace(1)* null, i8 addrspace(1)** %a
  store i8 addrspace(1)* null, i8 addrspace(1)** %b
  store i8 addrspace(1)* null, i8 addrspace(1)** %c
  store i8 addrspace(1)* null, i8 addrspace(1)** %d
  %25 = zext i1 1 to i64, !dbg !18
  %26 = or i64 %25, 72057594037927936, !dbg !18
  %27 = getelementptr i8, i8 addrspace(1)* null, i64 %26, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %27), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !18
  %28 = zext i1 1 to i64, !dbg !19
  %29 = or i64 %28, 72057594037927936, !dbg !19
  %30 = getelementptr i8, i8 addrspace(1)* null, i64 %29, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %30), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !19
  %31 = zext i1 1 to i64, !dbg !20
  %32 = or i64 %31, 72057594037927936, !dbg !20
  %33 = getelementptr i8, i8 addrspace(1)* null, i64 %32, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %33), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !20
  %34 = zext i1 1 to i64, !dbg !21
  %35 = or i64 %34, 72057594037927936, !dbg !21
  %36 = getelementptr i8, i8 addrspace(1)* null, i64 %35, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !21
  %37 = zext i1 1 to i64, !dbg !22
  %38 = or i64 %37, 72057594037927936, !dbg !22
  %39 = getelementptr i8, i8 addrspace(1)* null, i64 %38, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %39), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !22
  call void @_B_retNul1(), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !23
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %41 = icmp eq i8 addrspace(1)* null, %40
  store i1 %41, i1* %6
  %42 = load i1, i1* %6, !dbg !24
  %43 = zext i1 %42 to i64, !dbg !24
  %44 = or i64 %43, 72057594037927936, !dbg !24
  %45 = getelementptr i8, i8 addrspace(1)* null, i64 %44, !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %45), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !24
  call void @_B_retNul2(), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !25
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %47 = icmp eq i8 addrspace(1)* null, %46
  store i1 %47, i1* %9
  %48 = load i1, i1* %9, !dbg !26
  %49 = zext i1 %48 to i64, !dbg !26
  %50 = or i64 %49, 72057594037927936, !dbg !26
  %51 = getelementptr i8, i8 addrspace(1)* null, i64 %50, !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %51), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !26
  call void @_B_retNul3(), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !27
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %53 = icmp eq i8 addrspace(1)* null, %52
  store i1 %53, i1* %12
  %54 = load i1, i1* %12, !dbg !28
  %55 = zext i1 %54 to i64, !dbg !28
  %56 = or i64 %55, 72057594037927936, !dbg !28
  %57 = getelementptr i8, i8 addrspace(1)* null, i64 %56, !dbg !28
  call void @_Bb02ioprintln(i8 addrspace(1)* %57), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !28
  call void @_B_retNul4(), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !29
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %59 = icmp eq i8 addrspace(1)* null, %58
  store i1 %59, i1* %15
  %60 = load i1, i1* %15, !dbg !30
  %61 = zext i1 %60 to i64, !dbg !30
  %62 = or i64 %61, 72057594037927936, !dbg !30
  %63 = getelementptr i8, i8 addrspace(1)* null, i64 %62, !dbg !30
  call void @_Bb02ioprintln(i8 addrspace(1)* %63), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !30
  call void @_B_retNul5(), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !31
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  %65 = icmp eq i8 addrspace(1)* null, %64
  store i1 %65, i1* %18
  %66 = load i1, i1* %18, !dbg !32
  %67 = zext i1 %66 to i64, !dbg !32
  %68 = or i64 %67, 72057594037927936, !dbg !32
  %69 = getelementptr i8, i8 addrspace(1)* null, i64 %68, !dbg !32
  call void @_Bb02ioprintln(i8 addrspace(1)* %69), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !32
  ret void
70:
  %71 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !17
  call void @_bal_panic(i8 addrspace(1)* %71)
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
