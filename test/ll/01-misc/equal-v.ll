@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare zeroext i1 @_bal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i1
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i1
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i8
  %30 = load i8*, i8** @_bal_stack_guard
  %31 = icmp ult i8* %29, %30
  br i1 %31, label %97, label %32
32:
  %33 = call i8 addrspace(1)* @_B_mkNil(), !dbg !14
  store i8 addrspace(1)* %33, i8 addrspace(1)** %2, !dbg !14
  %34 = call i8 addrspace(1)* @_B_mkNil(), !dbg !15
  store i8 addrspace(1)* %34, i8 addrspace(1)** %3, !dbg !15
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %37 = call i1 @_bal_exact_eq(i8 addrspace(1)* %35, i8 addrspace(1)* %36)
  store i1 %37, i1* %1
  %38 = load i1, i1* %1, !dbg !16
  %39 = zext i1 %38 to i64, !dbg !16
  %40 = or i64 %39, 72057594037927936, !dbg !16
  %41 = getelementptr i8, i8 addrspace(1)* null, i64 %40, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %41), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !16
  %42 = call i8 addrspace(1)* @_B_mkInt(i64 1), !dbg !17
  store i8 addrspace(1)* %42, i8 addrspace(1)** %6, !dbg !17
  %43 = call i8 addrspace(1)* @_B_mkInt(i64 1), !dbg !18
  store i8 addrspace(1)* %43, i8 addrspace(1)** %7, !dbg !18
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %46 = call i1 @_bal_exact_eq(i8 addrspace(1)* %44, i8 addrspace(1)* %45)
  %47 = xor i1 %46, 1
  store i1 %47, i1* %5
  %48 = load i1, i1* %5, !dbg !19
  %49 = zext i1 %48 to i64, !dbg !19
  %50 = or i64 %49, 72057594037927936, !dbg !19
  %51 = getelementptr i8, i8 addrspace(1)* null, i64 %50, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %51), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !19
  %52 = call i8 addrspace(1)* @_B_mkBoolean(i1 1), !dbg !20
  store i8 addrspace(1)* %52, i8 addrspace(1)** %10, !dbg !20
  %53 = call i8 addrspace(1)* @_B_mkBoolean(i1 1), !dbg !21
  store i8 addrspace(1)* %53, i8 addrspace(1)** %11, !dbg !21
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %56 = call i1 @_bal_exact_eq(i8 addrspace(1)* %54, i8 addrspace(1)* %55)
  store i1 %56, i1* %9
  %57 = load i1, i1* %9, !dbg !22
  %58 = zext i1 %57 to i64, !dbg !22
  %59 = or i64 %58, 72057594037927936, !dbg !22
  %60 = getelementptr i8, i8 addrspace(1)* null, i64 %59, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %60), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !22
  %61 = call i8 addrspace(1)* @_B_mkInt(i64 -36028797018963969), !dbg !23
  store i8 addrspace(1)* %61, i8 addrspace(1)** %14, !dbg !23
  %62 = call i8 addrspace(1)* @_B_mkInt(i64 -36028797018963969), !dbg !24
  store i8 addrspace(1)* %62, i8 addrspace(1)** %15, !dbg !24
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %65 = call i1 @_bal_exact_eq(i8 addrspace(1)* %63, i8 addrspace(1)* %64)
  store i1 %65, i1* %13
  %66 = load i1, i1* %13, !dbg !25
  %67 = zext i1 %66 to i64, !dbg !25
  %68 = or i64 %67, 72057594037927936, !dbg !25
  %69 = getelementptr i8, i8 addrspace(1)* null, i64 %68, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %69), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !25
  %70 = call i8 addrspace(1)* @_B_mkInt(i64 -36028797018963968), !dbg !26
  store i8 addrspace(1)* %70, i8 addrspace(1)** %18, !dbg !26
  %71 = call i8 addrspace(1)* @_B_mkInt(i64 -36028797018963968), !dbg !27
  store i8 addrspace(1)* %71, i8 addrspace(1)** %19, !dbg !27
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  %74 = call i1 @_bal_exact_eq(i8 addrspace(1)* %72, i8 addrspace(1)* %73)
  store i1 %74, i1* %17
  %75 = load i1, i1* %17, !dbg !28
  %76 = zext i1 %75 to i64, !dbg !28
  %77 = or i64 %76, 72057594037927936, !dbg !28
  %78 = getelementptr i8, i8 addrspace(1)* null, i64 %77, !dbg !28
  call void @_Bb02ioprintln(i8 addrspace(1)* %78), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !28
  %79 = call i8 addrspace(1)* @_B_mkInt(i64 36028797018963967), !dbg !29
  store i8 addrspace(1)* %79, i8 addrspace(1)** %22, !dbg !29
  %80 = call i8 addrspace(1)* @_B_mkInt(i64 36028797018963967), !dbg !30
  store i8 addrspace(1)* %80, i8 addrspace(1)** %23, !dbg !30
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %23
  %83 = call i1 @_bal_exact_eq(i8 addrspace(1)* %81, i8 addrspace(1)* %82)
  store i1 %83, i1* %21
  %84 = load i1, i1* %21, !dbg !31
  %85 = zext i1 %84 to i64, !dbg !31
  %86 = or i64 %85, 72057594037927936, !dbg !31
  %87 = getelementptr i8, i8 addrspace(1)* null, i64 %86, !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %87), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !31
  %88 = call i8 addrspace(1)* @_B_mkInt(i64 36028797018963968), !dbg !32
  store i8 addrspace(1)* %88, i8 addrspace(1)** %26, !dbg !32
  %89 = call i8 addrspace(1)* @_B_mkInt(i64 36028797018963968), !dbg !33
  store i8 addrspace(1)* %89, i8 addrspace(1)** %27, !dbg !33
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  %91 = load i8 addrspace(1)*, i8 addrspace(1)** %27
  %92 = call i1 @_bal_exact_eq(i8 addrspace(1)* %90, i8 addrspace(1)* %91)
  store i1 %92, i1* %25
  %93 = load i1, i1* %25, !dbg !34
  %94 = zext i1 %93 to i64, !dbg !34
  %95 = or i64 %94, 72057594037927936, !dbg !34
  %96 = getelementptr i8, i8 addrspace(1)* null, i64 %95, !dbg !34
  call void @_Bb02ioprintln(i8 addrspace(1)* %96), !dbg !34
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !34
  ret void
97:
  %98 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %98)
  unreachable
}
define internal i8 addrspace(1)* @_B_mkNil() !dbg !7 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret i8 addrspace(1)* null
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 4100), !dbg !35
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
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 5124), !dbg !36
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
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 6148), !dbg !37
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-misc/equal-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"mkNil", linkageName:"_B_mkNil", scope: !1, file: !1, line: 16, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"mkInt", linkageName:"_B_mkInt", scope: !1, file: !1, line: 20, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"mkBoolean", linkageName:"_B_mkBoolean", scope: !1, file: !1, line: 24, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 5, column: 15, scope: !5)
!15 = !DILocation(line: 5, column: 27, scope: !5)
!16 = !DILocation(line: 5, column: 4, scope: !5)
!17 = !DILocation(line: 6, column: 15, scope: !5)
!18 = !DILocation(line: 6, column: 28, scope: !5)
!19 = !DILocation(line: 6, column: 4, scope: !5)
!20 = !DILocation(line: 7, column: 15, scope: !5)
!21 = !DILocation(line: 7, column: 35, scope: !5)
!22 = !DILocation(line: 7, column: 4, scope: !5)
!23 = !DILocation(line: 10, column: 15, scope: !5)
!24 = !DILocation(line: 10, column: 45, scope: !5)
!25 = !DILocation(line: 10, column: 4, scope: !5)
!26 = !DILocation(line: 11, column: 15, scope: !5)
!27 = !DILocation(line: 11, column: 45, scope: !5)
!28 = !DILocation(line: 11, column: 4, scope: !5)
!29 = !DILocation(line: 12, column: 15, scope: !5)
!30 = !DILocation(line: 12, column: 44, scope: !5)
!31 = !DILocation(line: 12, column: 4, scope: !5)
!32 = !DILocation(line: 13, column: 15, scope: !5)
!33 = !DILocation(line: 13, column: 44, scope: !5)
!34 = !DILocation(line: 13, column: 4, scope: !5)
!35 = !DILocation(line: 0, column: 0, scope: !7)
!36 = !DILocation(line: 0, column: 0, scope: !9)
!37 = !DILocation(line: 0, column: 0, scope: !11)
