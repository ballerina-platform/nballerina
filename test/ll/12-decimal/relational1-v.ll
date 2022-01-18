@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [4 x i8] c"1.5\00", align 8
@.dec1 = internal unnamed_addr constant [2 x i8] c"3\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare i64 @_bal_decimal_cmp(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %z = alloca i8 addrspace(1)*
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
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %68, label %16
16:
  %17 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([4 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %17, i8 addrspace(1)** %x
  %18 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %18, i8 addrspace(1)** %y
  %19 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %19, i8 addrspace(1)** %z
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %22 = call i64 @_bal_decimal_cmp(i8 addrspace(1)* %20, i8 addrspace(1)* %21)
  %23 = icmp sle i64 %22, 0
  store i1 %23, i1* %1
  %24 = load i1, i1* %1, !dbg !8
  %25 = zext i1 %24 to i64, !dbg !8
  %26 = or i64 %25, 72057594037927936, !dbg !8
  %27 = getelementptr i8, i8 addrspace(1)* null, i64 %26, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %27), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %30 = call i64 @_bal_decimal_cmp(i8 addrspace(1)* %28, i8 addrspace(1)* %29)
  %31 = icmp sge i64 %30, 0
  store i1 %31, i1* %3
  %32 = load i1, i1* %3, !dbg !9
  %33 = zext i1 %32 to i64, !dbg !9
  %34 = or i64 %33, 72057594037927936, !dbg !9
  %35 = getelementptr i8, i8 addrspace(1)* null, i64 %34, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %35), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %38 = call i64 @_bal_decimal_cmp(i8 addrspace(1)* %36, i8 addrspace(1)* %37)
  %39 = icmp slt i64 %38, 0
  store i1 %39, i1* %5
  %40 = load i1, i1* %5, !dbg !10
  %41 = zext i1 %40 to i64, !dbg !10
  %42 = or i64 %41, 72057594037927936, !dbg !10
  %43 = getelementptr i8, i8 addrspace(1)* null, i64 %42, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %43), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %46 = call i64 @_bal_decimal_cmp(i8 addrspace(1)* %44, i8 addrspace(1)* %45)
  %47 = icmp sgt i64 %46, 0
  store i1 %47, i1* %7
  %48 = load i1, i1* %7, !dbg !11
  %49 = zext i1 %48 to i64, !dbg !11
  %50 = or i64 %49, 72057594037927936, !dbg !11
  %51 = getelementptr i8, i8 addrspace(1)* null, i64 %50, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %51), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %z
  %54 = call i64 @_bal_decimal_cmp(i8 addrspace(1)* %52, i8 addrspace(1)* %53)
  %55 = icmp sge i64 %54, 0
  store i1 %55, i1* %9
  %56 = load i1, i1* %9, !dbg !12
  %57 = zext i1 %56 to i64, !dbg !12
  %58 = or i64 %57, 72057594037927936, !dbg !12
  %59 = getelementptr i8, i8 addrspace(1)* null, i64 %58, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %59), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %z
  %62 = call i64 @_bal_decimal_cmp(i8 addrspace(1)* %60, i8 addrspace(1)* %61)
  %63 = icmp sle i64 %62, 0
  store i1 %63, i1* %11
  %64 = load i1, i1* %11, !dbg !13
  %65 = zext i1 %64 to i64, !dbg !13
  %66 = or i64 %65, 72057594037927936, !dbg !13
  %67 = getelementptr i8, i8 addrspace(1)* null, i64 %66, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %67), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !13
  ret void
68:
  %69 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %69)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/relational1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
!9 = !DILocation(line: 7, column: 4, scope: !5)
!10 = !DILocation(line: 8, column: 4, scope: !5)
!11 = !DILocation(line: 9, column: 4, scope: !5)
!12 = !DILocation(line: 10, column: 4, scope: !5)
!13 = !DILocation(line: 11, column: 4, scope: !5)
