@_bal_stack_guard = external global i8*
@_Bt04root0 = external constant {i32, i32, [0 x i8*]}
@_Bt04root1 = external constant {i32, i32, [0 x i8*]}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i1 @_bal_type_contains({i32, i32, [0 x i8*]}*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %v = alloca i8 addrspace(1)*
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
  br i1 %15, label %60, label %16
16:
  %17 = zext i1 1 to i64
  %18 = or i64 %17, 72057594037927936
  %19 = getelementptr i8, i8 addrspace(1)* null, i64 %18
  store i8 addrspace(1)* %19, i8 addrspace(1)** %v
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %21 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %20)
  store i1 %21, i1* %1
  %22 = load i1, i1* %1, !dbg !8
  %23 = zext i1 %22 to i64, !dbg !8
  %24 = or i64 %23, 72057594037927936, !dbg !8
  %25 = getelementptr i8, i8 addrspace(1)* null, i64 %24, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %27 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root1, i8 addrspace(1)* %26)
  store i1 %27, i1* %3
  %28 = load i1, i1* %3, !dbg !9
  %29 = zext i1 %28 to i64, !dbg !9
  %30 = or i64 %29, 72057594037927936, !dbg !9
  %31 = getelementptr i8, i8 addrspace(1)* null, i64 %30, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %31), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %32 = zext i1 0 to i64
  %33 = or i64 %32, 72057594037927936
  %34 = getelementptr i8, i8 addrspace(1)* null, i64 %33
  store i8 addrspace(1)* %34, i8 addrspace(1)** %v
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %36 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %35)
  store i1 %36, i1* %5
  %37 = load i1, i1* %5, !dbg !10
  %38 = zext i1 %37 to i64, !dbg !10
  %39 = or i64 %38, 72057594037927936, !dbg !10
  %40 = getelementptr i8, i8 addrspace(1)* null, i64 %39, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %42 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root1, i8 addrspace(1)* %41)
  store i1 %42, i1* %7
  %43 = load i1, i1* %7, !dbg !11
  %44 = zext i1 %43 to i64, !dbg !11
  %45 = or i64 %44, 72057594037927936, !dbg !11
  %46 = getelementptr i8, i8 addrspace(1)* null, i64 %45, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  %47 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  store i8 addrspace(1)* %47, i8 addrspace(1)** %v
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %49 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %48)
  store i1 %49, i1* %9
  %50 = load i1, i1* %9, !dbg !12
  %51 = zext i1 %50 to i64, !dbg !12
  %52 = or i64 %51, 72057594037927936, !dbg !12
  %53 = getelementptr i8, i8 addrspace(1)* null, i64 %52, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %53), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %55 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root1, i8 addrspace(1)* %54)
  store i1 %55, i1* %11
  %56 = load i1, i1* %11, !dbg !13
  %57 = zext i1 %56 to i64, !dbg !13
  %58 = or i64 %57, 72057594037927936, !dbg !13
  %59 = getelementptr i8, i8 addrspace(1)* null, i64 %58, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %59), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !13
  ret void
60:
  %61 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %61)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-singleton/booleantest1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 4, scope: !5)
!9 = !DILocation(line: 9, column: 4, scope: !5)
!10 = !DILocation(line: 12, column: 4, scope: !5)
!11 = !DILocation(line: 13, column: 4, scope: !5)
!12 = !DILocation(line: 15, column: 4, scope: !5)
!13 = !DILocation(line: 16, column: 4, scope: !5)
