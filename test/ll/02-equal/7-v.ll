@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare zeroext i1 @_bal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i1
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i1
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i1
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i1
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i8
  %29 = load i8*, i8** @_bal_stack_guard
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %47, label %31
31:
  %32 = call i8 addrspace(1)* @_B_mkInt(i64 0), !dbg !14
  store i8 addrspace(1)* %32, i8 addrspace(1)** %1, !dbg !14
  %33 = call i8 addrspace(1)* @_B_mkNil(), !dbg !15
  store i8 addrspace(1)* %33, i8 addrspace(1)** %2, !dbg !15
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %36 = call i1 @_bal_exact_eq(i8 addrspace(1)* %34, i8 addrspace(1)* %35)
  store i1 %36, i1* %3
  %37 = load i1, i1* %3, !dbg !16
  %38 = zext i1 %37 to i64, !dbg !16
  %39 = or i64 %38, 72057594037927936, !dbg !16
  %40 = getelementptr i8, i8 addrspace(1)* null, i64 %39, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !16
  %41 = call i8 addrspace(1)* @_B_mkNil(), !dbg !17
  store i8 addrspace(1)* %41, i8 addrspace(1)** %5, !dbg !17
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %43 = addrspacecast i8 addrspace(1)* %42 to i8*
  %44 = ptrtoint i8* %43 to i64
  %45 = and i64 %44, 2233785415175766016
  %46 = icmp eq i64 %45, 504403158265495552
  br i1 %46, label %49, label %52
47:
  %48 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %48)
  unreachable
49:
  %50 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %42)
  %51 = icmp ne i64 %50, 0
  store i1 %51, i1* %6
  br label %53
52:
  store i1 1, i1* %6
  br label %53
53:
  %54 = load i1, i1* %6, !dbg !18
  %55 = zext i1 %54 to i64, !dbg !18
  %56 = or i64 %55, 72057594037927936, !dbg !18
  %57 = getelementptr i8, i8 addrspace(1)* null, i64 %56, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %57), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !18
  %58 = call i8 addrspace(1)* @_B_mkBoolean(i1 0), !dbg !19
  store i8 addrspace(1)* %58, i8 addrspace(1)** %8, !dbg !19
  %59 = call i8 addrspace(1)* @_B_mkNil(), !dbg !20
  store i8 addrspace(1)* %59, i8 addrspace(1)** %9, !dbg !20
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %62 = call i1 @_bal_exact_eq(i8 addrspace(1)* %60, i8 addrspace(1)* %61)
  store i1 %62, i1* %10
  %63 = load i1, i1* %10, !dbg !21
  %64 = zext i1 %63 to i64, !dbg !21
  %65 = or i64 %64, 72057594037927936, !dbg !21
  %66 = getelementptr i8, i8 addrspace(1)* null, i64 %65, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %66), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !21
  %67 = call i8 addrspace(1)* @_B_mkBoolean(i1 1), !dbg !22
  store i8 addrspace(1)* %67, i8 addrspace(1)** %12, !dbg !22
  %68 = call i8 addrspace(1)* @_B_mkNil(), !dbg !23
  store i8 addrspace(1)* %68, i8 addrspace(1)** %13, !dbg !23
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %71 = call i1 @_bal_exact_eq(i8 addrspace(1)* %69, i8 addrspace(1)* %70)
  %72 = xor i1 %71, 1
  store i1 %72, i1* %14
  %73 = load i1, i1* %14, !dbg !24
  %74 = zext i1 %73 to i64, !dbg !24
  %75 = or i64 %74, 72057594037927936, !dbg !24
  %76 = getelementptr i8, i8 addrspace(1)* null, i64 %75, !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %76), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !24
  %77 = call i8 addrspace(1)* @_B_mkNil(), !dbg !25
  store i8 addrspace(1)* %77, i8 addrspace(1)** %16, !dbg !25
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %79 = zext i1 0 to i64
  %80 = or i64 %79, 72057594037927936
  %81 = getelementptr i8, i8 addrspace(1)* null, i64 %80
  %82 = icmp ne i8 addrspace(1)* %78, %81
  store i1 %82, i1* %17
  %83 = load i1, i1* %17, !dbg !26
  %84 = zext i1 %83 to i64, !dbg !26
  %85 = or i64 %84, 72057594037927936, !dbg !26
  %86 = getelementptr i8, i8 addrspace(1)* null, i64 %85, !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %86), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !26
  %87 = call i8 addrspace(1)* @_B_mkNil(), !dbg !27
  store i8 addrspace(1)* %87, i8 addrspace(1)** %19, !dbg !27
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  %89 = zext i1 1 to i64
  %90 = or i64 %89, 72057594037927936
  %91 = getelementptr i8, i8 addrspace(1)* null, i64 %90
  %92 = icmp ne i8 addrspace(1)* %88, %91
  store i1 %92, i1* %20
  %93 = load i1, i1* %20, !dbg !28
  %94 = zext i1 %93 to i64, !dbg !28
  %95 = or i64 %94, 72057594037927936, !dbg !28
  %96 = getelementptr i8, i8 addrspace(1)* null, i64 %95, !dbg !28
  call void @_Bb02ioprintln(i8 addrspace(1)* %96), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !28
  %97 = call i8 addrspace(1)* @_B_mkBoolean(i1 1), !dbg !29
  store i8 addrspace(1)* %97, i8 addrspace(1)** %22, !dbg !29
  %98 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  %99 = zext i1 1 to i64
  %100 = or i64 %99, 72057594037927936
  %101 = getelementptr i8, i8 addrspace(1)* null, i64 %100
  %102 = icmp eq i8 addrspace(1)* %98, %101
  store i1 %102, i1* %23
  %103 = load i1, i1* %23, !dbg !30
  %104 = zext i1 %103 to i64, !dbg !30
  %105 = or i64 %104, 72057594037927936, !dbg !30
  %106 = getelementptr i8, i8 addrspace(1)* null, i64 %105, !dbg !30
  call void @_Bb02ioprintln(i8 addrspace(1)* %106), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !30
  %107 = call i8 addrspace(1)* @_B_mkBoolean(i1 0), !dbg !31
  store i8 addrspace(1)* %107, i8 addrspace(1)** %25, !dbg !31
  %108 = load i8 addrspace(1)*, i8 addrspace(1)** %25
  %109 = zext i1 0 to i64
  %110 = or i64 %109, 72057594037927936
  %111 = getelementptr i8, i8 addrspace(1)* null, i64 %110
  %112 = icmp ne i8 addrspace(1)* %108, %111
  store i1 %112, i1* %26
  %113 = load i1, i1* %26, !dbg !32
  %114 = zext i1 %113 to i64, !dbg !32
  %115 = or i64 %114, 72057594037927936, !dbg !32
  %116 = getelementptr i8, i8 addrspace(1)* null, i64 %115, !dbg !32
  call void @_Bb02ioprintln(i8 addrspace(1)* %116), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !32
  ret void
}
define internal i8 addrspace(1)* @_B_mkNil() !dbg !7 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret i8 addrspace(1)* null
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844), !dbg !33
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
define internal i8 addrspace(1)* @_B_mkInt(i64 %0) !dbg !9 {
  %n = alloca i64
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %8, label %5
5:
  store i64 %0, i64* %n
  %6 = load i64, i64* %n
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %6)
  ret i8 addrspace(1)* %7
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 4868), !dbg !34
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
define internal i8 addrspace(1)* @_B_mkBoolean(i1 %0) !dbg !11 {
  %b = alloca i1
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %10, label %5
5:
  store i1 %0, i1* %b
  %6 = load i1, i1* %b
  %7 = zext i1 %6 to i64
  %8 = or i64 %7, 72057594037927936
  %9 = getelementptr i8, i8 addrspace(1)* null, i64 %8
  ret i8 addrspace(1)* %9
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 5892), !dbg !35
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/02-equal/7-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"mkNil", linkageName:"_B_mkNil", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"mkInt", linkageName:"_B_mkInt", scope: !1, file: !1, line: 19, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"mkBoolean", linkageName:"_B_mkBoolean", scope: !1, file: !1, line: 23, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 5, column: 15, scope: !5)
!15 = !DILocation(line: 5, column: 28, scope: !5)
!16 = !DILocation(line: 5, column: 4, scope: !5)
!17 = !DILocation(line: 6, column: 21, scope: !5)
!18 = !DILocation(line: 6, column: 4, scope: !5)
!19 = !DILocation(line: 7, column: 15, scope: !5)
!20 = !DILocation(line: 7, column: 36, scope: !5)
!21 = !DILocation(line: 7, column: 4, scope: !5)
!22 = !DILocation(line: 8, column: 15, scope: !5)
!23 = !DILocation(line: 8, column: 35, scope: !5)
!24 = !DILocation(line: 8, column: 4, scope: !5)
!25 = !DILocation(line: 9, column: 25, scope: !5)
!26 = !DILocation(line: 9, column: 4, scope: !5)
!27 = !DILocation(line: 10, column: 15, scope: !5)
!28 = !DILocation(line: 10, column: 4, scope: !5)
!29 = !DILocation(line: 11, column: 15, scope: !5)
!30 = !DILocation(line: 11, column: 4, scope: !5)
!31 = !DILocation(line: 12, column: 25, scope: !5)
!32 = !DILocation(line: 12, column: 4, scope: !5)
!33 = !DILocation(line: 0, column: 0, scope: !7)
!34 = !DILocation(line: 0, column: 0, scope: !9)
!35 = !DILocation(line: 0, column: 0, scope: !11)
