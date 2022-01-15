@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [2 x i8] c"1\00", align 8
@_Bt04root0 = external constant {i32, i32, [0 x i8*]}
@.dec1 = internal unnamed_addr constant [2 x i8] c"2\00", align 8
@.dec2 = internal unnamed_addr constant [6 x i8] c"2.000\00", align 8
@.dec3 = internal unnamed_addr constant [2 x i8] c"3\00", align 8
@.dec4 = internal unnamed_addr constant [2 x i8] c"4\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
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
  br i1 %15, label %59, label %16
16:
  %17 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %17, i8 addrspace(1)** %v
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %19 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %18)
  store i1 %19, i1* %1
  %20 = load i1, i1* %1, !dbg !8
  %21 = zext i1 %20 to i64, !dbg !8
  %22 = or i64 %21, 72057594037927936, !dbg !8
  %23 = getelementptr i8, i8 addrspace(1)* null, i64 %22, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %24 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %24, i8 addrspace(1)** %v
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %26 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %25)
  store i1 %26, i1* %3
  %27 = load i1, i1* %3, !dbg !9
  %28 = zext i1 %27 to i64, !dbg !9
  %29 = or i64 %28, 72057594037927936, !dbg !9
  %30 = getelementptr i8, i8 addrspace(1)* null, i64 %29, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %30), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %31 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([6 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %31, i8 addrspace(1)** %v
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %33 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %32)
  store i1 %33, i1* %5
  %34 = load i1, i1* %5, !dbg !10
  %35 = zext i1 %34 to i64, !dbg !10
  %36 = or i64 %35, 72057594037927936, !dbg !10
  %37 = getelementptr i8, i8 addrspace(1)* null, i64 %36, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %37), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  %38 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  store i8 addrspace(1)* %38, i8 addrspace(1)** %v
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %40 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %39)
  store i1 %40, i1* %7
  %41 = load i1, i1* %7, !dbg !11
  %42 = zext i1 %41 to i64, !dbg !11
  %43 = or i64 %42, 72057594037927936, !dbg !11
  %44 = getelementptr i8, i8 addrspace(1)* null, i64 %43, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %44), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  %45 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec3 to i8*))
  store i8 addrspace(1)* %45, i8 addrspace(1)** %v
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %47 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %46)
  store i1 %47, i1* %9
  %48 = load i1, i1* %9, !dbg !12
  %49 = zext i1 %48 to i64, !dbg !12
  %50 = or i64 %49, 72057594037927936, !dbg !12
  %51 = getelementptr i8, i8 addrspace(1)* null, i64 %50, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %51), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  %52 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec4 to i8*))
  store i8 addrspace(1)* %52, i8 addrspace(1)** %v
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %54 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %53)
  store i1 %54, i1* %11
  %55 = load i1, i1* %11, !dbg !13
  %56 = zext i1 %55 to i64, !dbg !13
  %57 = or i64 %56, 72057594037927936, !dbg !13
  %58 = getelementptr i8, i8 addrspace(1)* null, i64 %57, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %58), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !13
  ret void
59:
  %60 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %60)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-singleton/dectest1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 4, scope: !5)
!9 = !DILocation(line: 9, column: 4, scope: !5)
!10 = !DILocation(line: 11, column: 4, scope: !5)
!11 = !DILocation(line: 13, column: 4, scope: !5)
!12 = !DILocation(line: 15, column: 4, scope: !5)
!13 = !DILocation(line: 17, column: 4, scope: !5)
