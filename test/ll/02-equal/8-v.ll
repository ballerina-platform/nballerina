@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %n = alloca i64
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i1
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %b = alloca i1
  %19 = alloca i1
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i1
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i8
  %26 = load i8*, i8** @_bal_stack_guard
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %35, label %28
28:
  %29 = call i8 addrspace(1)* @_B_mkInt(i64 2), !dbg !12
  store i8 addrspace(1)* %29, i8 addrspace(1)** %2, !dbg !12
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %31 = addrspacecast i8 addrspace(1)* %30 to i8*
  %32 = ptrtoint i8* %31 to i64
  %33 = and i64 %32, 2233785415175766016
  %34 = icmp eq i64 %33, 504403158265495552
  br i1 %34, label %37, label %40
35:
  %36 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %36)
  unreachable
37:
  %38 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %30)
  %39 = icmp eq i64 %38, 2
  store i1 %39, i1* %1
  br label %41
40:
  store i1 0, i1* %1
  br label %41
41:
  %42 = load i1, i1* %1, !dbg !13
  %43 = zext i1 %42 to i64, !dbg !13
  %44 = or i64 %43, 72057594037927936, !dbg !13
  %45 = getelementptr i8, i8 addrspace(1)* null, i64 %44, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %45), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !13
  %46 = call i8 addrspace(1)* @_B_mkInt(i64 17), !dbg !14
  store i8 addrspace(1)* %46, i8 addrspace(1)** %5, !dbg !14
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %48 = addrspacecast i8 addrspace(1)* %47 to i8*
  %49 = ptrtoint i8* %48 to i64
  %50 = and i64 %49, 2233785415175766016
  %51 = icmp eq i64 %50, 504403158265495552
  br i1 %51, label %52, label %55
52:
  %53 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %47)
  %54 = icmp ne i64 %53, 17
  store i1 %54, i1* %4
  br label %56
55:
  store i1 1, i1* %4
  br label %56
56:
  %57 = load i1, i1* %4, !dbg !15
  %58 = zext i1 %57 to i64, !dbg !15
  %59 = or i64 %58, 72057594037927936, !dbg !15
  %60 = getelementptr i8, i8 addrspace(1)* null, i64 %59, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %60), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %61 = call i8 addrspace(1)* @_B_mkBoolean(i1 1), !dbg !16
  store i8 addrspace(1)* %61, i8 addrspace(1)** %8, !dbg !16
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %63 = zext i1 1 to i64
  %64 = or i64 %63, 72057594037927936
  %65 = getelementptr i8, i8 addrspace(1)* null, i64 %64
  %66 = icmp eq i8 addrspace(1)* %62, %65
  store i1 %66, i1* %7
  %67 = load i1, i1* %7, !dbg !17
  %68 = zext i1 %67 to i64, !dbg !17
  %69 = or i64 %68, 72057594037927936, !dbg !17
  %70 = getelementptr i8, i8 addrspace(1)* null, i64 %69, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %70), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !17
  %71 = call i8 addrspace(1)* @_B_mkBoolean(i1 0), !dbg !18
  store i8 addrspace(1)* %71, i8 addrspace(1)** %11, !dbg !18
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %73 = zext i1 0 to i64
  %74 = or i64 %73, 72057594037927936
  %75 = getelementptr i8, i8 addrspace(1)* null, i64 %74
  %76 = icmp ne i8 addrspace(1)* %72, %75
  store i1 %76, i1* %10
  %77 = load i1, i1* %10, !dbg !19
  %78 = zext i1 %77 to i64, !dbg !19
  %79 = or i64 %78, 72057594037927936, !dbg !19
  %80 = getelementptr i8, i8 addrspace(1)* null, i64 %79, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %80), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !19
  store i64 2, i64* %n
  %81 = call i8 addrspace(1)* @_B_mkInt(i64 2), !dbg !20
  store i8 addrspace(1)* %81, i8 addrspace(1)** %14, !dbg !20
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %83 = load i64, i64* %n
  %84 = addrspacecast i8 addrspace(1)* %82 to i8*
  %85 = ptrtoint i8* %84 to i64
  %86 = and i64 %85, 2233785415175766016
  %87 = icmp eq i64 %86, 504403158265495552
  br i1 %87, label %88, label %91
88:
  %89 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %82)
  %90 = icmp eq i64 %89, %83
  store i1 %90, i1* %13
  br label %92
91:
  store i1 0, i1* %13
  br label %92
92:
  %93 = load i1, i1* %13, !dbg !21
  %94 = zext i1 %93 to i64, !dbg !21
  %95 = or i64 %94, 72057594037927936, !dbg !21
  %96 = getelementptr i8, i8 addrspace(1)* null, i64 %95, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %96), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !21
  store i64 17, i64* %n
  %97 = call i8 addrspace(1)* @_B_mkInt(i64 17), !dbg !22
  store i8 addrspace(1)* %97, i8 addrspace(1)** %17, !dbg !22
  %98 = load i64, i64* %n
  %99 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  %100 = addrspacecast i8 addrspace(1)* %99 to i8*
  %101 = ptrtoint i8* %100 to i64
  %102 = and i64 %101, 2233785415175766016
  %103 = icmp eq i64 %102, 504403158265495552
  br i1 %103, label %104, label %107
104:
  %105 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %99)
  %106 = icmp ne i64 %105, %98
  store i1 %106, i1* %16
  br label %108
107:
  store i1 1, i1* %16
  br label %108
108:
  %109 = load i1, i1* %16, !dbg !23
  %110 = zext i1 %109 to i64, !dbg !23
  %111 = or i64 %110, 72057594037927936, !dbg !23
  %112 = getelementptr i8, i8 addrspace(1)* null, i64 %111, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %112), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !23
  store i1 1, i1* %b
  %113 = call i8 addrspace(1)* @_B_mkBoolean(i1 1), !dbg !24
  store i8 addrspace(1)* %113, i8 addrspace(1)** %20, !dbg !24
  %114 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %115 = load i1, i1* %b
  %116 = zext i1 %115 to i64
  %117 = or i64 %116, 72057594037927936
  %118 = getelementptr i8, i8 addrspace(1)* null, i64 %117
  %119 = icmp eq i8 addrspace(1)* %114, %118
  store i1 %119, i1* %19
  %120 = load i1, i1* %19, !dbg !25
  %121 = zext i1 %120 to i64, !dbg !25
  %122 = or i64 %121, 72057594037927936, !dbg !25
  %123 = getelementptr i8, i8 addrspace(1)* null, i64 %122, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %123), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !25
  store i1 0, i1* %b
  %124 = call i8 addrspace(1)* @_B_mkBoolean(i1 0), !dbg !26
  store i8 addrspace(1)* %124, i8 addrspace(1)** %23, !dbg !26
  %125 = load i1, i1* %b
  %126 = load i8 addrspace(1)*, i8 addrspace(1)** %23
  %127 = zext i1 %125 to i64
  %128 = or i64 %127, 72057594037927936
  %129 = getelementptr i8, i8 addrspace(1)* null, i64 %128
  %130 = icmp ne i8 addrspace(1)* %126, %129
  store i1 %130, i1* %22
  %131 = load i1, i1* %22, !dbg !27
  %132 = zext i1 %131 to i64, !dbg !27
  %133 = or i64 %132, 72057594037927936, !dbg !27
  %134 = getelementptr i8, i8 addrspace(1)* null, i64 %133, !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %134), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !27
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
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 4868), !dbg !28
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
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 5892), !dbg !29
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/02-equal/8-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"mkInt", linkageName:"_B_mkInt", scope: !1, file: !1, line: 19, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"mkBoolean", linkageName:"_B_mkBoolean", scope: !1, file: !1, line: 23, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 6, column: 21, scope: !5)
!15 = !DILocation(line: 6, column: 4, scope: !5)
!16 = !DILocation(line: 7, column: 15, scope: !5)
!17 = !DILocation(line: 7, column: 4, scope: !5)
!18 = !DILocation(line: 8, column: 24, scope: !5)
!19 = !DILocation(line: 8, column: 4, scope: !5)
!20 = !DILocation(line: 10, column: 15, scope: !5)
!21 = !DILocation(line: 10, column: 4, scope: !5)
!22 = !DILocation(line: 12, column: 20, scope: !5)
!23 = !DILocation(line: 12, column: 4, scope: !5)
!24 = !DILocation(line: 14, column: 15, scope: !5)
!25 = !DILocation(line: 14, column: 4, scope: !5)
!26 = !DILocation(line: 16, column: 20, scope: !5)
!27 = !DILocation(line: 16, column: 4, scope: !5)
!28 = !DILocation(line: 0, column: 0, scope: !7)
!29 = !DILocation(line: 0, column: 0, scope: !9)
