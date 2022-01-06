@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)*) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %x = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i1
  %15 = alloca i8 addrspace(1)*
  %b = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8
  %21 = load i8*, i8** @_bal_stack_guard
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %34, label %23
23:
  %24 = call i8 addrspace(1)* @_B_ifElse(i1 1, i64 17, i1 0), !dbg !10
  store i8 addrspace(1)* %24, i8 addrspace(1)** %1, !dbg !10
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %26 = call i8 addrspace(1)* @_B_ifElse(i1 0, i64 32, i1 1), !dbg !12
  store i8 addrspace(1)* %26, i8 addrspace(1)** %3, !dbg !12
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %27), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %28 = call i8 addrspace(1)* @_B_ifElse(i1 1, i64 32, i1 1), !dbg !14
  store i8 addrspace(1)* %28, i8 addrspace(1)** %5, !dbg !14
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %30 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %29)
  %31 = extractvalue {i8 addrspace(1)*, i1} %30, 1
  br i1 %31, label %43, label %36
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = extractvalue {i8 addrspace(1)*, i1} %30, 0
  store i8 addrspace(1)* %37, i8 addrspace(1)** %6
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %39 = addrspacecast i8 addrspace(1)* %38 to i8*
  %40 = ptrtoint i8* %39 to i64
  %41 = and i64 %40, 2233785415175766016
  %42 = icmp eq i64 %41, 504403158265495552
  br i1 %42, label %45, label %53
43:
  %44 = call i8 addrspace(1)* @_bal_panic_construct(i64 1793), !dbg !9
  store i8 addrspace(1)* %44, i8 addrspace(1)** %19
  br label %32
45:
  %46 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %38)
  store i64 %46, i64* %7
  %47 = load i64, i64* %7, !dbg !15
  %48 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %47), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %48), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !15
  %49 = call i8 addrspace(1)* @_B_ifElse(i1 1, i64 42, i1 0), !dbg !16
  store i8 addrspace(1)* %49, i8 addrspace(1)** %9, !dbg !16
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %51 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %50)
  %52 = extractvalue {i8 addrspace(1)*, i1} %51, 1
  br i1 %52, label %62, label %55
53:
  %54 = call i8 addrspace(1)* @_bal_panic_construct(i64 1795), !dbg !9
  store i8 addrspace(1)* %54, i8 addrspace(1)** %19
  br label %32
55:
  %56 = extractvalue {i8 addrspace(1)*, i1} %51, 0
  store i8 addrspace(1)* %56, i8 addrspace(1)** %10
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %58 = addrspacecast i8 addrspace(1)* %57 to i8*
  %59 = ptrtoint i8* %58 to i64
  %60 = and i64 %59, 2233785415175766016
  %61 = icmp eq i64 %60, 504403158265495552
  br i1 %61, label %64, label %75
62:
  %63 = call i8 addrspace(1)* @_bal_panic_construct(i64 2049), !dbg !9
  store i8 addrspace(1)* %63, i8 addrspace(1)** %19
  br label %32
64:
  %65 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %57)
  store i64 %65, i64* %11
  %66 = load i64, i64* %11
  store i64 %66, i64* %x
  %67 = load i64, i64* %x, !dbg !17
  %68 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %67), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %68), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !17
  %69 = call i8 addrspace(1)* @_B_ifElse(i1 0, i64 21, i1 1), !dbg !18
  store i8 addrspace(1)* %69, i8 addrspace(1)** %13, !dbg !18
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %71 = addrspacecast i8 addrspace(1)* %70 to i8*
  %72 = ptrtoint i8* %71 to i64
  %73 = and i64 %72, 2233785415175766016
  %74 = icmp eq i64 %73, 72057594037927936
  br i1 %74, label %77, label %91
75:
  %76 = call i8 addrspace(1)* @_bal_panic_construct(i64 2051), !dbg !9
  store i8 addrspace(1)* %76, i8 addrspace(1)** %19
  br label %32
77:
  %78 = addrspacecast i8 addrspace(1)* %70 to i8*
  %79 = ptrtoint i8* %78 to i64
  %80 = trunc i64 %79 to i1
  store i1 %80, i1* %14
  %81 = load i1, i1* %14, !dbg !19
  %82 = zext i1 %81 to i64, !dbg !19
  %83 = or i64 %82, 72057594037927936, !dbg !19
  %84 = getelementptr i8, i8 addrspace(1)* null, i64 %83, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %84), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !19
  %85 = call i8 addrspace(1)* @_B_ifElse(i1 0, i64 21, i1 0), !dbg !20
  store i8 addrspace(1)* %85, i8 addrspace(1)** %16, !dbg !20
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %87 = addrspacecast i8 addrspace(1)* %86 to i8*
  %88 = ptrtoint i8* %87 to i64
  %89 = and i64 %88, 2233785415175766016
  %90 = icmp eq i64 %89, 72057594037927936
  br i1 %90, label %93, label %102
91:
  %92 = call i8 addrspace(1)* @_bal_panic_construct(i64 2563), !dbg !9
  store i8 addrspace(1)* %92, i8 addrspace(1)** %19
  br label %32
93:
  %94 = addrspacecast i8 addrspace(1)* %86 to i8*
  %95 = ptrtoint i8* %94 to i64
  %96 = trunc i64 %95 to i1
  store i1 %96, i1* %17
  %97 = load i1, i1* %17
  store i1 %97, i1* %b
  %98 = load i1, i1* %b, !dbg !21
  %99 = zext i1 %98 to i64, !dbg !21
  %100 = or i64 %99, 72057594037927936, !dbg !21
  %101 = getelementptr i8, i8 addrspace(1)* null, i64 %100, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %101), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !21
  ret void
102:
  %103 = call i8 addrspace(1)* @_bal_panic_construct(i64 2819), !dbg !9
  store i8 addrspace(1)* %103, i8 addrspace(1)** %19
  br label %32
}
define internal i8 addrspace(1)* @_B_ifElse(i1 %0, i64 %1, i1 %2) !dbg !7 {
  %t = alloca i1
  %n = alloca i64
  %b = alloca i1
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %17, label %7
7:
  store i1 %0, i1* %t
  store i64 %1, i64* %n
  store i1 %2, i1* %b
  %8 = load i1, i1* %t
  br i1 %8, label %9, label %12
9:
  %10 = load i64, i64* %n
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %10)
  ret i8 addrspace(1)* %11
12:
  %13 = load i1, i1* %b
  %14 = zext i1 %13 to i64
  %15 = or i64 %14, 72057594037927936
  %16 = getelementptr i8, i8 addrspace(1)* null, i64 %15
  ret i8 addrspace(1)* %16
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844), !dbg !22
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/02-typecast/7-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"ifElse", linkageName:"_B_ifElse", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 20, scope: !5)
!15 = !DILocation(line: 7, column: 4, scope: !5)
!16 = !DILocation(line: 8, column: 17, scope: !5)
!17 = !DILocation(line: 9, column: 4, scope: !5)
!18 = !DILocation(line: 10, column: 24, scope: !5)
!19 = !DILocation(line: 10, column: 4, scope: !5)
!20 = !DILocation(line: 11, column: 25, scope: !5)
!21 = !DILocation(line: 12, column: 4, scope: !5)
!22 = !DILocation(line: 0, column: 0, scope: !7)
