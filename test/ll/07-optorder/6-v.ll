@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i64 @_bal_boolean_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
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
  br i1 %19, label %80, label %20
20:
  %21 = zext i1 0 to i64
  %22 = or i64 %21, 72057594037927936
  %23 = getelementptr i8, i8 addrspace(1)* null, i64 %22
  store i8 addrspace(1)* %23, i8 addrspace(1)** %a
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %25 = call i64 @_bal_boolean_compare(i8 addrspace(1)* %24, i8 addrspace(1)* null)
  %26 = icmp ule i64 %25, 1
  store i1 %26, i1* %1
  %27 = load i1, i1* %1, !dbg !8
  %28 = zext i1 %27 to i64, !dbg !8
  %29 = or i64 %28, 72057594037927936, !dbg !8
  %30 = getelementptr i8, i8 addrspace(1)* null, i64 %29, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %30), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %32 = call i64 @_bal_boolean_compare(i8 addrspace(1)* %31, i8 addrspace(1)* null)
  %33 = icmp eq i64 %32, 0
  store i1 %33, i1* %3
  %34 = load i1, i1* %3, !dbg !9
  %35 = zext i1 %34 to i64, !dbg !9
  %36 = or i64 %35, 72057594037927936, !dbg !9
  %37 = getelementptr i8, i8 addrspace(1)* null, i64 %36, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %37), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %39 = call i64 @_bal_boolean_compare(i8 addrspace(1)* %38, i8 addrspace(1)* null)
  %40 = icmp sge i64 %39, 1
  store i1 %40, i1* %5
  %41 = load i1, i1* %5, !dbg !10
  %42 = zext i1 %41 to i64, !dbg !10
  %43 = or i64 %42, 72057594037927936, !dbg !10
  %44 = getelementptr i8, i8 addrspace(1)* null, i64 %43, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %44), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %46 = call i64 @_bal_boolean_compare(i8 addrspace(1)* %45, i8 addrspace(1)* null)
  %47 = icmp eq i64 %46, 2
  store i1 %47, i1* %7
  %48 = load i1, i1* %7, !dbg !11
  %49 = zext i1 %48 to i64, !dbg !11
  %50 = or i64 %49, 72057594037927936, !dbg !11
  %51 = getelementptr i8, i8 addrspace(1)* null, i64 %50, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %51), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %53 = call i64 @_bal_boolean_compare(i8 addrspace(1)* null, i8 addrspace(1)* %52)
  %54 = icmp ule i64 %53, 1
  store i1 %54, i1* %9
  %55 = load i1, i1* %9, !dbg !12
  %56 = zext i1 %55 to i64, !dbg !12
  %57 = or i64 %56, 72057594037927936, !dbg !12
  %58 = getelementptr i8, i8 addrspace(1)* null, i64 %57, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %58), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %60 = call i64 @_bal_boolean_compare(i8 addrspace(1)* null, i8 addrspace(1)* %59)
  %61 = icmp eq i64 %60, 0
  store i1 %61, i1* %11
  %62 = load i1, i1* %11, !dbg !13
  %63 = zext i1 %62 to i64, !dbg !13
  %64 = or i64 %63, 72057594037927936, !dbg !13
  %65 = getelementptr i8, i8 addrspace(1)* null, i64 %64, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %65), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !13
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %67 = call i64 @_bal_boolean_compare(i8 addrspace(1)* null, i8 addrspace(1)* %66)
  %68 = icmp sge i64 %67, 1
  store i1 %68, i1* %13
  %69 = load i1, i1* %13, !dbg !14
  %70 = zext i1 %69 to i64, !dbg !14
  %71 = or i64 %70, 72057594037927936, !dbg !14
  %72 = getelementptr i8, i8 addrspace(1)* null, i64 %71, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %72), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !14
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %74 = call i64 @_bal_boolean_compare(i8 addrspace(1)* null, i8 addrspace(1)* %73)
  %75 = icmp eq i64 %74, 2
  store i1 %75, i1* %15
  %76 = load i1, i1* %15, !dbg !15
  %77 = zext i1 %76 to i64, !dbg !15
  %78 = or i64 %77, 72057594037927936, !dbg !15
  %79 = getelementptr i8, i8 addrspace(1)* null, i64 %78, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %79), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !15
  ret void
80:
  %81 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %81)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-optorder/6-v.bal", directory:"")
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
