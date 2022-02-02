@_bal_stack_guard = external global i8*
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"lhsFalse\00\00\00\00"}, align 8
@.str3 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"rhsFalse\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i1
  %2 = alloca i1
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i1
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i1
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i1
  %19 = alloca i1
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i1
  %22 = alloca i1
  %23 = alloca i1
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i1
  %26 = alloca i1
  %27 = alloca i1
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i1
  %30 = alloca i1
  %31 = alloca i1
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i8
  %34 = load i8*, i8** @_bal_stack_guard
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %133, label %36
36:
  %37 = call i1 @_B04rootlhsTrue(), !dbg !16
  store i1 %37, i1* %1, !dbg !16
  %38 = load i1, i1* %1
  br i1 %38, label %39, label %42
39:
  %40 = call i1 @_B04rootrhsTrue(), !dbg !17
  store i1 %40, i1* %2, !dbg !17
  %41 = load i1, i1* %2
  store i1 %41, i1* %3
  br label %44
42:
  %43 = load i1, i1* %1
  store i1 %43, i1* %3
  br label %44
44:
  %45 = load i1, i1* %3, !dbg !18
  %46 = zext i1 %45 to i64, !dbg !18
  %47 = or i64 %46, 72057594037927936, !dbg !18
  %48 = getelementptr i8, i8 addrspace(1)* null, i64 %47, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %48), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !18
  %49 = call i1 @_B04rootlhsFalse(), !dbg !19
  store i1 %49, i1* %5, !dbg !19
  %50 = load i1, i1* %5
  br i1 %50, label %51, label %54
51:
  %52 = call i1 @_B04rootrhsTrue(), !dbg !20
  store i1 %52, i1* %6, !dbg !20
  %53 = load i1, i1* %6
  store i1 %53, i1* %7
  br label %56
54:
  %55 = load i1, i1* %5
  store i1 %55, i1* %7
  br label %56
56:
  %57 = load i1, i1* %7, !dbg !21
  %58 = zext i1 %57 to i64, !dbg !21
  %59 = or i64 %58, 72057594037927936, !dbg !21
  %60 = getelementptr i8, i8 addrspace(1)* null, i64 %59, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %60), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !21
  %61 = call i1 @_B04rootlhsTrue(), !dbg !22
  store i1 %61, i1* %9, !dbg !22
  %62 = load i1, i1* %9
  br i1 %62, label %63, label %66
63:
  %64 = call i1 @_B04rootrhsFalse(), !dbg !23
  store i1 %64, i1* %10, !dbg !23
  %65 = load i1, i1* %10
  store i1 %65, i1* %11
  br label %68
66:
  %67 = load i1, i1* %9
  store i1 %67, i1* %11
  br label %68
68:
  %69 = load i1, i1* %11, !dbg !24
  %70 = zext i1 %69 to i64, !dbg !24
  %71 = or i64 %70, 72057594037927936, !dbg !24
  %72 = getelementptr i8, i8 addrspace(1)* null, i64 %71, !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %72), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !24
  %73 = call i1 @_B04rootlhsFalse(), !dbg !25
  store i1 %73, i1* %13, !dbg !25
  %74 = load i1, i1* %13
  br i1 %74, label %75, label %78
75:
  %76 = call i1 @_B04rootrhsFalse(), !dbg !26
  store i1 %76, i1* %14, !dbg !26
  %77 = load i1, i1* %14
  store i1 %77, i1* %15
  br label %80
78:
  %79 = load i1, i1* %13
  store i1 %79, i1* %15
  br label %80
80:
  %81 = load i1, i1* %15, !dbg !27
  %82 = zext i1 %81 to i64, !dbg !27
  %83 = or i64 %82, 72057594037927936, !dbg !27
  %84 = getelementptr i8, i8 addrspace(1)* null, i64 %83, !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %84), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !27
  %85 = call i1 @_B04rootlhsTrue(), !dbg !28
  store i1 %85, i1* %17, !dbg !28
  %86 = load i1, i1* %17
  br i1 %86, label %90, label %87
87:
  %88 = call i1 @_B04rootrhsTrue(), !dbg !29
  store i1 %88, i1* %18, !dbg !29
  %89 = load i1, i1* %18
  store i1 %89, i1* %19
  br label %92
90:
  %91 = load i1, i1* %17
  store i1 %91, i1* %19
  br label %92
92:
  %93 = load i1, i1* %19, !dbg !30
  %94 = zext i1 %93 to i64, !dbg !30
  %95 = or i64 %94, 72057594037927936, !dbg !30
  %96 = getelementptr i8, i8 addrspace(1)* null, i64 %95, !dbg !30
  call void @_Bb02ioprintln(i8 addrspace(1)* %96), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !30
  %97 = call i1 @_B04rootlhsFalse(), !dbg !31
  store i1 %97, i1* %21, !dbg !31
  %98 = load i1, i1* %21
  br i1 %98, label %102, label %99
99:
  %100 = call i1 @_B04rootrhsTrue(), !dbg !32
  store i1 %100, i1* %22, !dbg !32
  %101 = load i1, i1* %22
  store i1 %101, i1* %23
  br label %104
102:
  %103 = load i1, i1* %21
  store i1 %103, i1* %23
  br label %104
104:
  %105 = load i1, i1* %23, !dbg !33
  %106 = zext i1 %105 to i64, !dbg !33
  %107 = or i64 %106, 72057594037927936, !dbg !33
  %108 = getelementptr i8, i8 addrspace(1)* null, i64 %107, !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %108), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !33
  %109 = call i1 @_B04rootlhsTrue(), !dbg !34
  store i1 %109, i1* %25, !dbg !34
  %110 = load i1, i1* %25
  br i1 %110, label %114, label %111
111:
  %112 = call i1 @_B04rootrhsFalse(), !dbg !35
  store i1 %112, i1* %26, !dbg !35
  %113 = load i1, i1* %26
  store i1 %113, i1* %27
  br label %116
114:
  %115 = load i1, i1* %25
  store i1 %115, i1* %27
  br label %116
116:
  %117 = load i1, i1* %27, !dbg !36
  %118 = zext i1 %117 to i64, !dbg !36
  %119 = or i64 %118, 72057594037927936, !dbg !36
  %120 = getelementptr i8, i8 addrspace(1)* null, i64 %119, !dbg !36
  call void @_Bb02ioprintln(i8 addrspace(1)* %120), !dbg !36
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !36
  %121 = call i1 @_B04rootlhsFalse(), !dbg !37
  store i1 %121, i1* %29, !dbg !37
  %122 = load i1, i1* %29
  br i1 %122, label %126, label %123
123:
  %124 = call i1 @_B04rootrhsFalse(), !dbg !38
  store i1 %124, i1* %30, !dbg !38
  %125 = load i1, i1* %30
  store i1 %125, i1* %31
  br label %128
126:
  %127 = load i1, i1* %29
  store i1 %127, i1* %31
  br label %128
128:
  %129 = load i1, i1* %31, !dbg !39
  %130 = zext i1 %129 to i64, !dbg !39
  %131 = or i64 %130, 72057594037927936, !dbg !39
  %132 = getelementptr i8, i8 addrspace(1)* null, i64 %131, !dbg !39
  call void @_Bb02ioprintln(i8 addrspace(1)* %132), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !39
  ret void
133:
  %134 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !15
  call void @_bal_panic(i8 addrspace(1)* %134)
  unreachable
}
define i1 @_B04rootlhsTrue() !dbg !7 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %6, label %5
5:
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3054977056144320620)), !dbg !41
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !41
  ret i1 1
6:
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 8196), !dbg !40
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
define i1 @_B04rootrhsTrue() !dbg !9 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %6, label %5
5:
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3054977056144320626)), !dbg !43
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !43
  ret i1 1
6:
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 9476), !dbg !42
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
define i1 @_B04rootlhsFalse() !dbg !11 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %6, label %5
5:
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str2 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !45
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !45
  ret i1 0
6:
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 10756), !dbg !44
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
define i1 @_B04rootrhsFalse() !dbg !13 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %6, label %5
5:
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str3 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !47
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !47
  ret i1 0
6:
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 12036), !dbg !46
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/02-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"lhsTrue", linkageName:"_B04rootlhsTrue", scope: !1, file: !1, line: 32, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"rhsTrue", linkageName:"_B04rootrhsTrue", scope: !1, file: !1, line: 37, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"lhsFalse", linkageName:"_B04rootlhsFalse", scope: !1, file: !1, line: 42, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = distinct !DISubprogram(name:"rhsFalse", linkageName:"_B04rootrhsFalse", scope: !1, file: !1, line: 47, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !14)
!14 = !{}
!15 = !DILocation(line: 0, column: 0, scope: !5)
!16 = !DILocation(line: 3, column: 15, scope: !5)
!17 = !DILocation(line: 3, column: 28, scope: !5)
!18 = !DILocation(line: 3, column: 4, scope: !5)
!19 = !DILocation(line: 7, column: 15, scope: !5)
!20 = !DILocation(line: 7, column: 29, scope: !5)
!21 = !DILocation(line: 7, column: 4, scope: !5)
!22 = !DILocation(line: 10, column: 15, scope: !5)
!23 = !DILocation(line: 10, column: 28, scope: !5)
!24 = !DILocation(line: 10, column: 4, scope: !5)
!25 = !DILocation(line: 14, column: 15, scope: !5)
!26 = !DILocation(line: 14, column: 29, scope: !5)
!27 = !DILocation(line: 14, column: 4, scope: !5)
!28 = !DILocation(line: 17, column: 15, scope: !5)
!29 = !DILocation(line: 17, column: 28, scope: !5)
!30 = !DILocation(line: 17, column: 4, scope: !5)
!31 = !DILocation(line: 20, column: 15, scope: !5)
!32 = !DILocation(line: 20, column: 29, scope: !5)
!33 = !DILocation(line: 20, column: 4, scope: !5)
!34 = !DILocation(line: 24, column: 15, scope: !5)
!35 = !DILocation(line: 24, column: 28, scope: !5)
!36 = !DILocation(line: 24, column: 4, scope: !5)
!37 = !DILocation(line: 27, column: 15, scope: !5)
!38 = !DILocation(line: 27, column: 29, scope: !5)
!39 = !DILocation(line: 27, column: 4, scope: !5)
!40 = !DILocation(line: 0, column: 0, scope: !7)
!41 = !DILocation(line: 33, column: 4, scope: !7)
!42 = !DILocation(line: 0, column: 0, scope: !9)
!43 = !DILocation(line: 38, column: 4, scope: !9)
!44 = !DILocation(line: 0, column: 0, scope: !11)
!45 = !DILocation(line: 43, column: 4, scope: !11)
!46 = !DILocation(line: 0, column: 0, scope: !13)
!47 = !DILocation(line: 48, column: 4, scope: !13)
