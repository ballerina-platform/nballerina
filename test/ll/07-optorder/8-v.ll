@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i64 @_bal_string_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
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
  br i1 %19, label %77, label %20
20:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)** %a
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %22 = call i64 @_bal_string_compare(i8 addrspace(1)* %21, i8 addrspace(1)* null)
  %23 = icmp ule i64 %22, 1
  store i1 %23, i1* %1
  %24 = load i1, i1* %1, !dbg !8
  %25 = zext i1 %24 to i64, !dbg !8
  %26 = or i64 %25, 72057594037927936, !dbg !8
  %27 = getelementptr i8, i8 addrspace(1)* null, i64 %26, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %27), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %29 = call i64 @_bal_string_compare(i8 addrspace(1)* %28, i8 addrspace(1)* null)
  %30 = icmp eq i64 %29, 0
  store i1 %30, i1* %3
  %31 = load i1, i1* %3, !dbg !9
  %32 = zext i1 %31 to i64, !dbg !9
  %33 = or i64 %32, 72057594037927936, !dbg !9
  %34 = getelementptr i8, i8 addrspace(1)* null, i64 %33, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %34), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %36 = call i64 @_bal_string_compare(i8 addrspace(1)* %35, i8 addrspace(1)* null)
  %37 = icmp sge i64 %36, 1
  store i1 %37, i1* %5
  %38 = load i1, i1* %5, !dbg !10
  %39 = zext i1 %38 to i64, !dbg !10
  %40 = or i64 %39, 72057594037927936, !dbg !10
  %41 = getelementptr i8, i8 addrspace(1)* null, i64 %40, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %41), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %43 = call i64 @_bal_string_compare(i8 addrspace(1)* %42, i8 addrspace(1)* null)
  %44 = icmp eq i64 %43, 2
  store i1 %44, i1* %7
  %45 = load i1, i1* %7, !dbg !11
  %46 = zext i1 %45 to i64, !dbg !11
  %47 = or i64 %46, 72057594037927936, !dbg !11
  %48 = getelementptr i8, i8 addrspace(1)* null, i64 %47, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %48), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %50 = call i64 @_bal_string_compare(i8 addrspace(1)* null, i8 addrspace(1)* %49)
  %51 = icmp ule i64 %50, 1
  store i1 %51, i1* %9
  %52 = load i1, i1* %9, !dbg !12
  %53 = zext i1 %52 to i64, !dbg !12
  %54 = or i64 %53, 72057594037927936, !dbg !12
  %55 = getelementptr i8, i8 addrspace(1)* null, i64 %54, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %55), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %57 = call i64 @_bal_string_compare(i8 addrspace(1)* null, i8 addrspace(1)* %56)
  %58 = icmp eq i64 %57, 0
  store i1 %58, i1* %11
  %59 = load i1, i1* %11, !dbg !13
  %60 = zext i1 %59 to i64, !dbg !13
  %61 = or i64 %60, 72057594037927936, !dbg !13
  %62 = getelementptr i8, i8 addrspace(1)* null, i64 %61, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %62), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !13
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %64 = call i64 @_bal_string_compare(i8 addrspace(1)* null, i8 addrspace(1)* %63)
  %65 = icmp sge i64 %64, 1
  store i1 %65, i1* %13
  %66 = load i1, i1* %13, !dbg !14
  %67 = zext i1 %66 to i64, !dbg !14
  %68 = or i64 %67, 72057594037927936, !dbg !14
  %69 = getelementptr i8, i8 addrspace(1)* null, i64 %68, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %69), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !14
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %71 = call i64 @_bal_string_compare(i8 addrspace(1)* null, i8 addrspace(1)* %70)
  %72 = icmp eq i64 %71, 2
  store i1 %72, i1* %15
  %73 = load i1, i1* %15, !dbg !15
  %74 = zext i1 %73 to i64, !dbg !15
  %75 = or i64 %74, 72057594037927936, !dbg !15
  %76 = getelementptr i8, i8 addrspace(1)* null, i64 %75, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %76), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !15
  ret void
77:
  %78 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %78)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-optorder/8-v.bal", directory:"")
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
