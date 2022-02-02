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
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
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
  br i1 %30, label %76, label %31
31:
  %32 = call i8 addrspace(1)* @_B_mkInt(i64 2), !dbg !12
  store i8 addrspace(1)* %32, i8 addrspace(1)** %1, !dbg !12
  %33 = call i8 addrspace(1)* @_B_mkBoolean(i1 1), !dbg !13
  store i8 addrspace(1)* %33, i8 addrspace(1)** %2, !dbg !13
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %36 = call i1 @_bal_exact_eq(i8 addrspace(1)* %34, i8 addrspace(1)* %35)
  store i1 %36, i1* %3
  %37 = load i1, i1* %3, !dbg !14
  %38 = zext i1 %37 to i64, !dbg !14
  %39 = or i64 %38, 72057594037927936, !dbg !14
  %40 = getelementptr i8, i8 addrspace(1)* null, i64 %39, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !14
  %41 = call i8 addrspace(1)* @_B_mkInt(i64 0), !dbg !15
  store i8 addrspace(1)* %41, i8 addrspace(1)** %5, !dbg !15
  %42 = call i8 addrspace(1)* @_B_mkBoolean(i1 0), !dbg !16
  store i8 addrspace(1)* %42, i8 addrspace(1)** %6, !dbg !16
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %45 = call i1 @_bal_exact_eq(i8 addrspace(1)* %43, i8 addrspace(1)* %44)
  %46 = xor i1 %45, 1
  store i1 %46, i1* %7
  %47 = load i1, i1* %7, !dbg !17
  %48 = zext i1 %47 to i64, !dbg !17
  %49 = or i64 %48, 72057594037927936, !dbg !17
  %50 = getelementptr i8, i8 addrspace(1)* null, i64 %49, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %50), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  %51 = call i8 addrspace(1)* @_B_mkBoolean(i1 1), !dbg !18
  store i8 addrspace(1)* %51, i8 addrspace(1)** %9, !dbg !18
  %52 = call i8 addrspace(1)* @_B_mkInt(i64 1), !dbg !19
  store i8 addrspace(1)* %52, i8 addrspace(1)** %10, !dbg !19
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %55 = call i1 @_bal_exact_eq(i8 addrspace(1)* %53, i8 addrspace(1)* %54)
  store i1 %55, i1* %11
  %56 = load i1, i1* %11, !dbg !20
  %57 = zext i1 %56 to i64, !dbg !20
  %58 = or i64 %57, 72057594037927936, !dbg !20
  %59 = getelementptr i8, i8 addrspace(1)* null, i64 %58, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %59), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !20
  %60 = call i8 addrspace(1)* @_B_mkInt(i64 0), !dbg !21
  store i8 addrspace(1)* %60, i8 addrspace(1)** %13, !dbg !21
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %62 = zext i1 0 to i64
  %63 = or i64 %62, 72057594037927936
  %64 = getelementptr i8, i8 addrspace(1)* null, i64 %63
  %65 = icmp ne i8 addrspace(1)* %61, %64
  store i1 %65, i1* %14
  %66 = load i1, i1* %14, !dbg !22
  %67 = zext i1 %66 to i64, !dbg !22
  %68 = or i64 %67, 72057594037927936, !dbg !22
  %69 = getelementptr i8, i8 addrspace(1)* null, i64 %68, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %69), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !22
  %70 = call i8 addrspace(1)* @_B_mkBoolean(i1 1), !dbg !23
  store i8 addrspace(1)* %70, i8 addrspace(1)** %16, !dbg !23
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %72 = addrspacecast i8 addrspace(1)* %71 to i8*
  %73 = ptrtoint i8* %72 to i64
  %74 = and i64 %73, 2233785415175766016
  %75 = icmp eq i64 %74, 504403158265495552
  br i1 %75, label %78, label %81
76:
  %77 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %77)
  unreachable
78:
  %79 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %71)
  %80 = icmp eq i64 %79, 1
  store i1 %80, i1* %17
  br label %82
81:
  store i1 0, i1* %17
  br label %82
82:
  %83 = load i1, i1* %17, !dbg !24
  %84 = zext i1 %83 to i64, !dbg !24
  %85 = or i64 %84, 72057594037927936, !dbg !24
  %86 = getelementptr i8, i8 addrspace(1)* null, i64 %85, !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %86), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !24
  %87 = call i8 addrspace(1)* @_B_mkBoolean(i1 0), !dbg !25
  store i8 addrspace(1)* %87, i8 addrspace(1)** %19, !dbg !25
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  %89 = addrspacecast i8 addrspace(1)* %88 to i8*
  %90 = ptrtoint i8* %89 to i64
  %91 = and i64 %90, 2233785415175766016
  %92 = icmp eq i64 %91, 504403158265495552
  br i1 %92, label %93, label %96
93:
  %94 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %88)
  %95 = icmp ne i64 %94, 0
  store i1 %95, i1* %20
  br label %97
96:
  store i1 1, i1* %20
  br label %97
97:
  %98 = load i1, i1* %20, !dbg !26
  %99 = zext i1 %98 to i64, !dbg !26
  %100 = or i64 %99, 72057594037927936, !dbg !26
  %101 = getelementptr i8, i8 addrspace(1)* null, i64 %100, !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %101), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !26
  %102 = call i8 addrspace(1)* @_B_mkInt(i64 1), !dbg !27
  store i8 addrspace(1)* %102, i8 addrspace(1)** %22, !dbg !27
  %103 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  %104 = zext i1 1 to i64
  %105 = or i64 %104, 72057594037927936
  %106 = getelementptr i8, i8 addrspace(1)* null, i64 %105
  %107 = icmp eq i8 addrspace(1)* %103, %106
  store i1 %107, i1* %23
  %108 = load i1, i1* %23, !dbg !28
  %109 = zext i1 %108 to i64, !dbg !28
  %110 = or i64 %109, 72057594037927936, !dbg !28
  %111 = getelementptr i8, i8 addrspace(1)* null, i64 %110, !dbg !28
  call void @_Bb02ioprintln(i8 addrspace(1)* %111), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !28
  %112 = call i8 addrspace(1)* @_B_mkInt(i64 0), !dbg !29
  store i8 addrspace(1)* %112, i8 addrspace(1)** %25, !dbg !29
  %113 = load i8 addrspace(1)*, i8 addrspace(1)** %25
  %114 = zext i1 0 to i64
  %115 = or i64 %114, 72057594037927936
  %116 = getelementptr i8, i8 addrspace(1)* null, i64 %115
  %117 = icmp ne i8 addrspace(1)* %113, %116
  store i1 %117, i1* %26
  %118 = load i1, i1* %26, !dbg !30
  %119 = zext i1 %118 to i64, !dbg !30
  %120 = or i64 %119, 72057594037927936, !dbg !30
  %121 = getelementptr i8, i8 addrspace(1)* null, i64 %120, !dbg !30
  call void @_Bb02ioprintln(i8 addrspace(1)* %121), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !30
  ret void
}
define internal i8 addrspace(1)* @_B_mkInt(i64 %0) !dbg !7 {
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
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844), !dbg !31
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
define internal i8 addrspace(1)* @_B_mkBoolean(i1 %0) !dbg !9 {
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
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 4868), !dbg !32
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/02-equal/6-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"mkInt", linkageName:"_B_mkInt", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"mkBoolean", linkageName:"_B_mkBoolean", scope: !1, file: !1, line: 19, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 28, scope: !5)
!14 = !DILocation(line: 5, column: 4, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 28, scope: !5)
!17 = !DILocation(line: 6, column: 4, scope: !5)
!18 = !DILocation(line: 7, column: 15, scope: !5)
!19 = !DILocation(line: 7, column: 35, scope: !5)
!20 = !DILocation(line: 7, column: 4, scope: !5)
!21 = !DILocation(line: 8, column: 25, scope: !5)
!22 = !DILocation(line: 8, column: 4, scope: !5)
!23 = !DILocation(line: 9, column: 21, scope: !5)
!24 = !DILocation(line: 9, column: 4, scope: !5)
!25 = !DILocation(line: 10, column: 21, scope: !5)
!26 = !DILocation(line: 10, column: 4, scope: !5)
!27 = !DILocation(line: 11, column: 24, scope: !5)
!28 = !DILocation(line: 11, column: 4, scope: !5)
!29 = !DILocation(line: 12, column: 25, scope: !5)
!30 = !DILocation(line: 12, column: 4, scope: !5)
!31 = !DILocation(line: 0, column: 0, scope: !7)
!32 = !DILocation(line: 0, column: 0, scope: !9)
