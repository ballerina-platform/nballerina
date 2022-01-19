@_bal_stack_guard = external global i8*
@_Bt04root0 = external constant {i32, i32, [0 x i8*]}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i1 @_bal_type_contains({i32, i32, [0 x i8*]}*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
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
  %15 = alloca i8
  %16 = load i8*, i8** @_bal_stack_guard
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %68, label %18
18:
  %19 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.0)
  store i8 addrspace(1)* %19, i8 addrspace(1)** %x
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %21 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %20)
  store i1 %21, i1* %1
  %22 = load i1, i1* %1, !dbg !8
  %23 = zext i1 %22 to i64, !dbg !8
  %24 = or i64 %23, 72057594037927936, !dbg !8
  %25 = getelementptr i8, i8 addrspace(1)* null, i64 %24, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %26 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF0000000000000)
  store i8 addrspace(1)* %26, i8 addrspace(1)** %x
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %28 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %27)
  store i1 %28, i1* %3
  %29 = load i1, i1* %3, !dbg !9
  %30 = zext i1 %29 to i64, !dbg !9
  %31 = or i64 %30, 72057594037927936, !dbg !9
  %32 = getelementptr i8, i8 addrspace(1)* null, i64 %31, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %32), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %33 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0xFFF0000000000000)
  store i8 addrspace(1)* %33, i8 addrspace(1)** %x
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %35 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %34)
  store i1 %35, i1* %5
  %36 = load i1, i1* %5, !dbg !10
  %37 = zext i1 %36 to i64, !dbg !10
  %38 = or i64 %37, 72057594037927936, !dbg !10
  %39 = getelementptr i8, i8 addrspace(1)* null, i64 %38, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %39), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  %40 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000)
  store i8 addrspace(1)* %40, i8 addrspace(1)** %x
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %42 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %41)
  store i1 %42, i1* %7
  %43 = load i1, i1* %7, !dbg !11
  %44 = zext i1 %43 to i64, !dbg !11
  %45 = or i64 %44, 72057594037927936, !dbg !11
  %46 = getelementptr i8, i8 addrspace(1)* null, i64 %45, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  %47 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0)
  store i8 addrspace(1)* %47, i8 addrspace(1)** %x
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %49 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %48)
  store i1 %49, i1* %9
  %50 = load i1, i1* %9, !dbg !12
  %51 = zext i1 %50 to i64, !dbg !12
  %52 = or i64 %51, 72057594037927936, !dbg !12
  %53 = getelementptr i8, i8 addrspace(1)* null, i64 %52, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %53), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  %54 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.0)
  store i8 addrspace(1)* %54, i8 addrspace(1)** %x
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %56 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %55)
  store i1 %56, i1* %11
  %57 = load i1, i1* %11, !dbg !13
  %58 = zext i1 %57 to i64, !dbg !13
  %59 = or i64 %58, 72057594037927936, !dbg !13
  %60 = getelementptr i8, i8 addrspace(1)* null, i64 %59, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %60), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !13
  %61 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  store i8 addrspace(1)* %61, i8 addrspace(1)** %x
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %63 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %62)
  store i1 %63, i1* %13
  %64 = load i1, i1* %13, !dbg !14
  %65 = zext i1 %64 to i64, !dbg !14
  %66 = or i64 %65, 72057594037927936, !dbg !14
  %67 = getelementptr i8, i8 addrspace(1)* null, i64 %66, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %67), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !14
  ret void
68:
  %69 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %69)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-singleton/floattest1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 10, column: 4, scope: !5)
!9 = !DILocation(line: 12, column: 4, scope: !5)
!10 = !DILocation(line: 14, column: 4, scope: !5)
!11 = !DILocation(line: 16, column: 4, scope: !5)
!12 = !DILocation(line: 18, column: 4, scope: !5)
!13 = !DILocation(line: 20, column: 4, scope: !5)
!14 = !DILocation(line: 22, column: 4, scope: !5)
