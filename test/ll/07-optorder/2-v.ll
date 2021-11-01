@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_int_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %a = alloca i8 addrspace(1)*
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8
  %18 = load i8*, i8** @_bal_stack_guard
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %78, label %20
20:
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  store i8 addrspace(1)* %21, i8 addrspace(1)** %a
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %23 = call i64 @_bal_int_compare(i8 addrspace(1)* %22, i8 addrspace(1)* null)
  %24 = icmp ule i64 %23, 1
  store i1 %24, i1* %1
  %25 = load i1, i1* %1, !dbg !8
  %26 = zext i1 %25 to i64, !dbg !8
  %27 = or i64 %26, 72057594037927936, !dbg !8
  %28 = getelementptr i8, i8 addrspace(1)* null, i64 %27, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %28), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %30 = call i64 @_bal_int_compare(i8 addrspace(1)* %29, i8 addrspace(1)* null)
  %31 = icmp eq i64 %30, 0
  store i1 %31, i1* %3
  %32 = load i1, i1* %3, !dbg !9
  %33 = zext i1 %32 to i64, !dbg !9
  %34 = or i64 %33, 72057594037927936, !dbg !9
  %35 = getelementptr i8, i8 addrspace(1)* null, i64 %34, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %35), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %37 = call i64 @_bal_int_compare(i8 addrspace(1)* %36, i8 addrspace(1)* null)
  %38 = icmp sge i64 %37, 1
  store i1 %38, i1* %5
  %39 = load i1, i1* %5, !dbg !10
  %40 = zext i1 %39 to i64, !dbg !10
  %41 = or i64 %40, 72057594037927936, !dbg !10
  %42 = getelementptr i8, i8 addrspace(1)* null, i64 %41, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %42), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %44 = call i64 @_bal_int_compare(i8 addrspace(1)* %43, i8 addrspace(1)* null)
  %45 = icmp eq i64 %44, 2
  store i1 %45, i1* %7
  %46 = load i1, i1* %7, !dbg !11
  %47 = zext i1 %46 to i64, !dbg !11
  %48 = or i64 %47, 72057594037927936, !dbg !11
  %49 = getelementptr i8, i8 addrspace(1)* null, i64 %48, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %49), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %51 = call i64 @_bal_int_compare(i8 addrspace(1)* null, i8 addrspace(1)* %50)
  %52 = icmp ule i64 %51, 1
  store i1 %52, i1* %9
  %53 = load i1, i1* %9, !dbg !12
  %54 = zext i1 %53 to i64, !dbg !12
  %55 = or i64 %54, 72057594037927936, !dbg !12
  %56 = getelementptr i8, i8 addrspace(1)* null, i64 %55, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %56), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %58 = call i64 @_bal_int_compare(i8 addrspace(1)* null, i8 addrspace(1)* %57)
  %59 = icmp eq i64 %58, 0
  store i1 %59, i1* %11
  %60 = load i1, i1* %11, !dbg !13
  %61 = zext i1 %60 to i64, !dbg !13
  %62 = or i64 %61, 72057594037927936, !dbg !13
  %63 = getelementptr i8, i8 addrspace(1)* null, i64 %62, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %63), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !13
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %65 = call i64 @_bal_int_compare(i8 addrspace(1)* null, i8 addrspace(1)* %64)
  %66 = icmp sge i64 %65, 1
  store i1 %66, i1* %13
  %67 = load i1, i1* %13, !dbg !14
  %68 = zext i1 %67 to i64, !dbg !14
  %69 = or i64 %68, 72057594037927936, !dbg !14
  %70 = getelementptr i8, i8 addrspace(1)* null, i64 %69, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %70), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !14
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %72 = call i64 @_bal_int_compare(i8 addrspace(1)* null, i8 addrspace(1)* %71)
  %73 = icmp eq i64 %72, 2
  store i1 %73, i1* %15
  %74 = load i1, i1* %15, !dbg !15
  %75 = zext i1 %74 to i64, !dbg !15
  %76 = or i64 %75, 72057594037927936, !dbg !15
  %77 = getelementptr i8, i8 addrspace(1)* null, i64 %76, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %77), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !15
  ret void
78:
  %79 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %79)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-optorder/2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
!9 = !DILocation(line: 7, column: 4, scope: !5)
!10 = !DILocation(line: 8, column: 4, scope: !5)
!11 = !DILocation(line: 9, column: 4, scope: !5)
!12 = !DILocation(line: 11, column: 4, scope: !5)
!13 = !DILocation(line: 12, column: 4, scope: !5)
!14 = !DILocation(line: 13, column: 4, scope: !5)
!15 = !DILocation(line: 14, column: 4, scope: !5)
