@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca i64
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i64
  %16 = alloca i64
  %17 = alloca i64
  %18 = alloca i64
  %19 = alloca i64
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i64
  %22 = alloca i64
  %23 = alloca i64
  %24 = alloca i64
  %25 = alloca i64
  %26 = alloca i64
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i64
  %29 = alloca i64
  %30 = alloca i64
  %31 = alloca i64
  %32 = alloca i64
  %33 = alloca i64
  %34 = alloca i64
  %35 = alloca i8 addrspace(1)*
  %36 = alloca i8
  %37 = load i8*, i8** @_bal_stack_guard
  %38 = icmp ult i8* %36, %37
  br i1 %38, label %103, label %39
39:
  %40 = call i64 @_B_add(i64 3, i64 5), !dbg !10
  store i64 %40, i64* %1, !dbg !10
  %41 = load i64, i64* %1, !dbg !11
  %42 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %41), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %42), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %43 = call i64 @_B_add(i64 3, i64 5), !dbg !12
  store i64 %43, i64* %3, !dbg !12
  %44 = load i64, i64* %3, !dbg !13
  %45 = call i64 @_B_add(i64 %44, i64 11), !dbg !13
  store i64 %45, i64* %4, !dbg !13
  %46 = load i64, i64* %4, !dbg !14
  %47 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %46), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %47), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !14
  %48 = call i64 @_B_add(i64 3, i64 5), !dbg !15
  store i64 %48, i64* %6, !dbg !15
  %49 = call i64 @_B_add(i64 5, i64 9), !dbg !16
  store i64 %49, i64* %7, !dbg !16
  %50 = load i64, i64* %6, !dbg !17
  %51 = load i64, i64* %7, !dbg !17
  %52 = call i64 @_B_add(i64 %50, i64 %51), !dbg !17
  store i64 %52, i64* %8, !dbg !17
  %53 = load i64, i64* %8, !dbg !18
  %54 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %53), !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %54), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !18
  %55 = call i64 @_B_add(i64 3, i64 5), !dbg !19
  store i64 %55, i64* %10, !dbg !19
  %56 = call i64 @_B_add(i64 5, i64 9), !dbg !20
  store i64 %56, i64* %11, !dbg !20
  %57 = load i64, i64* %10, !dbg !21
  %58 = load i64, i64* %11, !dbg !21
  %59 = call i64 @_B_add(i64 %57, i64 %58), !dbg !21
  store i64 %59, i64* %12, !dbg !21
  %60 = load i64, i64* %12, !dbg !22
  %61 = call i64 @_B_add(i64 %60, i64 12), !dbg !22
  store i64 %61, i64* %13, !dbg !22
  %62 = load i64, i64* %13, !dbg !23
  %63 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %62), !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %63), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !23
  %64 = call i64 @_B_add(i64 3, i64 5), !dbg !24
  store i64 %64, i64* %15, !dbg !24
  %65 = call i64 @_B_add(i64 5, i64 9), !dbg !25
  store i64 %65, i64* %16, !dbg !25
  %66 = load i64, i64* %15, !dbg !26
  %67 = load i64, i64* %16, !dbg !26
  %68 = call i64 @_B_add(i64 %66, i64 %67), !dbg !26
  store i64 %68, i64* %17, !dbg !26
  %69 = call i64 @_B_add(i64 4, i64 7), !dbg !27
  store i64 %69, i64* %18, !dbg !27
  %70 = load i64, i64* %17, !dbg !28
  %71 = load i64, i64* %18, !dbg !28
  %72 = call i64 @_B_add(i64 %70, i64 %71), !dbg !28
  store i64 %72, i64* %19, !dbg !28
  %73 = load i64, i64* %19, !dbg !29
  %74 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %73), !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %74), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !29
  %75 = call i64 @_B_add(i64 3, i64 5), !dbg !30
  store i64 %75, i64* %21, !dbg !30
  %76 = call i64 @_B_add(i64 5, i64 9), !dbg !31
  store i64 %76, i64* %22, !dbg !31
  %77 = load i64, i64* %21, !dbg !32
  %78 = load i64, i64* %22, !dbg !32
  %79 = call i64 @_B_add(i64 %77, i64 %78), !dbg !32
  store i64 %79, i64* %23, !dbg !32
  %80 = call i64 @_B_add(i64 4, i64 7), !dbg !33
  store i64 %80, i64* %24, !dbg !33
  %81 = load i64, i64* %24, !dbg !34
  %82 = call i64 @_B_add(i64 %81, i64 5), !dbg !34
  store i64 %82, i64* %25, !dbg !34
  %83 = load i64, i64* %23, !dbg !35
  %84 = load i64, i64* %25, !dbg !35
  %85 = call i64 @_B_add(i64 %83, i64 %84), !dbg !35
  store i64 %85, i64* %26, !dbg !35
  %86 = load i64, i64* %26, !dbg !36
  %87 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %86), !dbg !36
  call void @_Bb02ioprintln(i8 addrspace(1)* %87), !dbg !36
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !36
  %88 = call i64 @_B_add(i64 3, i64 5), !dbg !37
  store i64 %88, i64* %28, !dbg !37
  %89 = call i64 @_B_add(i64 5, i64 9), !dbg !38
  store i64 %89, i64* %29, !dbg !38
  %90 = load i64, i64* %28, !dbg !39
  %91 = load i64, i64* %29, !dbg !39
  %92 = call i64 @_B_add(i64 %90, i64 %91), !dbg !39
  store i64 %92, i64* %30, !dbg !39
  %93 = call i64 @_B_add(i64 4, i64 7), !dbg !40
  store i64 %93, i64* %31, !dbg !40
  %94 = call i64 @_B_add(i64 23, i64 50), !dbg !41
  store i64 %94, i64* %32, !dbg !41
  %95 = load i64, i64* %31, !dbg !42
  %96 = load i64, i64* %32, !dbg !42
  %97 = call i64 @_B_add(i64 %95, i64 %96), !dbg !42
  store i64 %97, i64* %33, !dbg !42
  %98 = load i64, i64* %30, !dbg !43
  %99 = load i64, i64* %33, !dbg !43
  %100 = call i64 @_B_add(i64 %98, i64 %99), !dbg !43
  store i64 %100, i64* %34, !dbg !43
  %101 = load i64, i64* %34, !dbg !44
  %102 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %101), !dbg !44
  call void @_Bb02ioprintln(i8 addrspace(1)* %102), !dbg !44
  store i8 addrspace(1)* null, i8 addrspace(1)** %35, !dbg !44
  ret void
103:
  %104 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %104)
  unreachable
}
define internal i64 @_B_add(i64 %0, i64 %1) !dbg !7 {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %9 = load i64, i64* %x
  %10 = load i64, i64* %y
  %11 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %20, label %17
13:
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 3332), !dbg !45
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
17:
  %18 = extractvalue {i64, i1} %11, 0
  store i64 %18, i64* %3
  %19 = load i64, i64* %3
  ret i64 %19
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 3585), !dbg !45
  store i8 addrspace(1)* %21, i8 addrspace(1)** %4
  br label %13
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/add4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"add", linkageName:"_B_add", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 15, scope: !5)
!11 = !DILocation(line: 4, column: 4, scope: !5)
!12 = !DILocation(line: 5, column: 19, scope: !5)
!13 = !DILocation(line: 5, column: 15, scope: !5)
!14 = !DILocation(line: 5, column: 4, scope: !5)
!15 = !DILocation(line: 6, column: 19, scope: !5)
!16 = !DILocation(line: 6, column: 30, scope: !5)
!17 = !DILocation(line: 6, column: 15, scope: !5)
!18 = !DILocation(line: 6, column: 4, scope: !5)
!19 = !DILocation(line: 7, column: 23, scope: !5)
!20 = !DILocation(line: 7, column: 34, scope: !5)
!21 = !DILocation(line: 7, column: 19, scope: !5)
!22 = !DILocation(line: 7, column: 15, scope: !5)
!23 = !DILocation(line: 7, column: 4, scope: !5)
!24 = !DILocation(line: 8, column: 23, scope: !5)
!25 = !DILocation(line: 8, column: 34, scope: !5)
!26 = !DILocation(line: 8, column: 19, scope: !5)
!27 = !DILocation(line: 8, column: 46, scope: !5)
!28 = !DILocation(line: 8, column: 15, scope: !5)
!29 = !DILocation(line: 8, column: 4, scope: !5)
!30 = !DILocation(line: 9, column: 23, scope: !5)
!31 = !DILocation(line: 9, column: 34, scope: !5)
!32 = !DILocation(line: 9, column: 19, scope: !5)
!33 = !DILocation(line: 9, column: 50, scope: !5)
!34 = !DILocation(line: 9, column: 46, scope: !5)
!35 = !DILocation(line: 9, column: 15, scope: !5)
!36 = !DILocation(line: 9, column: 4, scope: !5)
!37 = !DILocation(line: 10, column: 23, scope: !5)
!38 = !DILocation(line: 10, column: 34, scope: !5)
!39 = !DILocation(line: 10, column: 19, scope: !5)
!40 = !DILocation(line: 10, column: 50, scope: !5)
!41 = !DILocation(line: 10, column: 61, scope: !5)
!42 = !DILocation(line: 10, column: 46, scope: !5)
!43 = !DILocation(line: 10, column: 15, scope: !5)
!44 = !DILocation(line: 10, column: 4, scope: !5)
!45 = !DILocation(line: 0, column: 0, scope: !7)
