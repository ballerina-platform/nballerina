@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)*, i64)
declare zeroext i1 @_bal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %e1 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %e2 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %a1 = alloca i8 addrspace(1)*
  %a2 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %v1 = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %19 = alloca i1
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i1
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i1
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i1
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i1
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i1
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i8 addrspace(1)*
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i8
  %34 = load i8*, i8** @_bal_stack_guard
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %151, label %36
36:
  %37 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630862696), i64 5), !dbg !7
  store i8 addrspace(1)* %37, i8 addrspace(1)** %1, !dbg !7
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %38, i8 addrspace(1)** %e1
  %39 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630862696), i64 6), !dbg !7
  store i8 addrspace(1)* %39, i8 addrspace(1)** %2, !dbg !7
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %40, i8 addrspace(1)** %e2
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %e1
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %e1
  %43 = call i1 @_bal_exact_eq(i8 addrspace(1)* %41, i8 addrspace(1)* %42)
  store i1 %43, i1* %3
  %44 = load i1, i1* %3, !dbg !8
  %45 = zext i1 %44 to i64, !dbg !8
  %46 = or i64 %45, 72057594037927936, !dbg !8
  %47 = getelementptr i8, i8 addrspace(1)* null, i64 %46, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %47), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !8
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %e1
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %e1
  %50 = call i1 @_bal_exact_eq(i8 addrspace(1)* %48, i8 addrspace(1)* %49)
  %51 = xor i1 %50, 1
  store i1 %51, i1* %5
  %52 = load i1, i1* %5, !dbg !9
  %53 = zext i1 %52 to i64, !dbg !9
  %54 = or i64 %53, 72057594037927936, !dbg !9
  %55 = getelementptr i8, i8 addrspace(1)* null, i64 %54, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %55), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !9
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %e1
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %e2
  %58 = call i1 @_bal_exact_eq(i8 addrspace(1)* %56, i8 addrspace(1)* %57)
  store i1 %58, i1* %7
  %59 = load i1, i1* %7, !dbg !10
  %60 = zext i1 %59 to i64, !dbg !10
  %61 = or i64 %60, 72057594037927936, !dbg !10
  %62 = getelementptr i8, i8 addrspace(1)* null, i64 %61, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %62), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !10
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %e1
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %e2
  %65 = call i1 @_bal_exact_eq(i8 addrspace(1)* %63, i8 addrspace(1)* %64)
  %66 = xor i1 %65, 1
  store i1 %66, i1* %9
  %67 = load i1, i1* %9, !dbg !11
  %68 = zext i1 %67 to i64, !dbg !11
  %69 = or i64 %68, 72057594037927936, !dbg !11
  %70 = getelementptr i8, i8 addrspace(1)* null, i64 %69, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %70), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !11
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %e1
  store i8 addrspace(1)* %71, i8 addrspace(1)** %a1
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %e2
  store i8 addrspace(1)* %72, i8 addrspace(1)** %a2
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %a1
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %a1
  %75 = call i1 @_bal_exact_eq(i8 addrspace(1)* %73, i8 addrspace(1)* %74)
  store i1 %75, i1* %11
  %76 = load i1, i1* %11, !dbg !12
  %77 = zext i1 %76 to i64, !dbg !12
  %78 = or i64 %77, 72057594037927936, !dbg !12
  %79 = getelementptr i8, i8 addrspace(1)* null, i64 %78, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %79), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !12
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %a1
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %a1
  %82 = call i1 @_bal_exact_eq(i8 addrspace(1)* %80, i8 addrspace(1)* %81)
  %83 = xor i1 %82, 1
  store i1 %83, i1* %13
  %84 = load i1, i1* %13, !dbg !13
  %85 = zext i1 %84 to i64, !dbg !13
  %86 = or i64 %85, 72057594037927936, !dbg !13
  %87 = getelementptr i8, i8 addrspace(1)* null, i64 %86, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %87), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !13
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %a1
  %89 = load i8 addrspace(1)*, i8 addrspace(1)** %a2
  %90 = call i1 @_bal_exact_eq(i8 addrspace(1)* %88, i8 addrspace(1)* %89)
  store i1 %90, i1* %15
  %91 = load i1, i1* %15, !dbg !14
  %92 = zext i1 %91 to i64, !dbg !14
  %93 = or i64 %92, 72057594037927936, !dbg !14
  %94 = getelementptr i8, i8 addrspace(1)* null, i64 %93, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %94), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !14
  %95 = load i8 addrspace(1)*, i8 addrspace(1)** %a1
  %96 = load i8 addrspace(1)*, i8 addrspace(1)** %a2
  %97 = call i1 @_bal_exact_eq(i8 addrspace(1)* %95, i8 addrspace(1)* %96)
  %98 = xor i1 %97, 1
  store i1 %98, i1* %17
  %99 = load i1, i1* %17, !dbg !15
  %100 = zext i1 %99 to i64, !dbg !15
  %101 = or i64 %100, 72057594037927936, !dbg !15
  %102 = getelementptr i8, i8 addrspace(1)* null, i64 %101, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %102), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !15
  %103 = load i8 addrspace(1)*, i8 addrspace(1)** %e1
  store i8 addrspace(1)* %103, i8 addrspace(1)** %v1
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %e2
  store i8 addrspace(1)* %104, i8 addrspace(1)** %v2
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %107 = call i1 @_bal_exact_eq(i8 addrspace(1)* %105, i8 addrspace(1)* %106)
  store i1 %107, i1* %19
  %108 = load i1, i1* %19, !dbg !16
  %109 = zext i1 %108 to i64, !dbg !16
  %110 = or i64 %109, 72057594037927936, !dbg !16
  %111 = getelementptr i8, i8 addrspace(1)* null, i64 %110, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %111), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !16
  %112 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %113 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %114 = call i1 @_bal_exact_eq(i8 addrspace(1)* %112, i8 addrspace(1)* %113)
  %115 = xor i1 %114, 1
  store i1 %115, i1* %21
  %116 = load i1, i1* %21, !dbg !17
  %117 = zext i1 %116 to i64, !dbg !17
  %118 = or i64 %117, 72057594037927936, !dbg !17
  %119 = getelementptr i8, i8 addrspace(1)* null, i64 %118, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %119), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !17
  %120 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %121 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %122 = call i1 @_bal_exact_eq(i8 addrspace(1)* %120, i8 addrspace(1)* %121)
  store i1 %122, i1* %23
  %123 = load i1, i1* %23, !dbg !18
  %124 = zext i1 %123 to i64, !dbg !18
  %125 = or i64 %124, 72057594037927936, !dbg !18
  %126 = getelementptr i8, i8 addrspace(1)* null, i64 %125, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %126), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !18
  %127 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %128 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %129 = call i1 @_bal_exact_eq(i8 addrspace(1)* %127, i8 addrspace(1)* %128)
  %130 = xor i1 %129, 1
  store i1 %130, i1* %25
  %131 = load i1, i1* %25, !dbg !19
  %132 = zext i1 %131 to i64, !dbg !19
  %133 = or i64 %132, 72057594037927936, !dbg !19
  %134 = getelementptr i8, i8 addrspace(1)* null, i64 %133, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %134), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %v2
  %135 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %136 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %137 = call i1 @_bal_exact_eq(i8 addrspace(1)* %135, i8 addrspace(1)* %136)
  store i1 %137, i1* %27
  %138 = load i1, i1* %27, !dbg !20
  %139 = zext i1 %138 to i64, !dbg !20
  %140 = or i64 %139, 72057594037927936, !dbg !20
  %141 = getelementptr i8, i8 addrspace(1)* null, i64 %140, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %141), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !20
  %142 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630862696), i64 25), !dbg !7
  store i8 addrspace(1)* %142, i8 addrspace(1)** %30, !dbg !7
  %143 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630862696), i64 25), !dbg !7
  store i8 addrspace(1)* %143, i8 addrspace(1)** %31, !dbg !7
  %144 = load i8 addrspace(1)*, i8 addrspace(1)** %30
  %145 = load i8 addrspace(1)*, i8 addrspace(1)** %31
  %146 = call i1 @_bal_exact_eq(i8 addrspace(1)* %144, i8 addrspace(1)* %145)
  store i1 %146, i1* %29
  %147 = load i1, i1* %29, !dbg !21
  %148 = zext i1 %147 to i64, !dbg !21
  %149 = or i64 %148, 72057594037927936, !dbg !21
  %150 = getelementptr i8, i8 addrspace(1)* null, i64 %149, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %150), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !21
  ret void
151:
  %152 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %152)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-error/9-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 4, scope: !5)
!9 = !DILocation(line: 8, column: 4, scope: !5)
!10 = !DILocation(line: 9, column: 4, scope: !5)
!11 = !DILocation(line: 10, column: 4, scope: !5)
!12 = !DILocation(line: 13, column: 4, scope: !5)
!13 = !DILocation(line: 14, column: 4, scope: !5)
!14 = !DILocation(line: 15, column: 4, scope: !5)
!15 = !DILocation(line: 16, column: 4, scope: !5)
!16 = !DILocation(line: 19, column: 4, scope: !5)
!17 = !DILocation(line: 20, column: 4, scope: !5)
!18 = !DILocation(line: 21, column: 4, scope: !5)
!19 = !DILocation(line: 22, column: 4, scope: !5)
!20 = !DILocation(line: 24, column: 4, scope: !5)
!21 = !DILocation(line: 25, column: 4, scope: !5)
