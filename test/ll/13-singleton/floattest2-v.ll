@_bal_stack_guard = external global i8*
@_Bt04root0 = external constant {i32, i32, [0 x i8*]}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i1 @_bal_type_contains_float({i32, i32, [0 x i8*]}*, double) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca double
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
  br i1 %17, label %61, label %18
18:
  store double 1.0, double* %x
  %19 = load double, double* %x
  %20 = call i1 @_bal_type_contains_float({i32, i32, [0 x i8*]}* @_Bt04root0, double %19)
  store i1 %20, i1* %1
  %21 = load i1, i1* %1, !dbg !8
  %22 = zext i1 %21 to i64, !dbg !8
  %23 = or i64 %22, 72057594037927936, !dbg !8
  %24 = getelementptr i8, i8 addrspace(1)* null, i64 %23, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  store double 0x7FF0000000000000, double* %x
  %25 = load double, double* %x
  %26 = call i1 @_bal_type_contains_float({i32, i32, [0 x i8*]}* @_Bt04root0, double %25)
  store i1 %26, i1* %3
  %27 = load i1, i1* %3, !dbg !9
  %28 = zext i1 %27 to i64, !dbg !9
  %29 = or i64 %28, 72057594037927936, !dbg !9
  %30 = getelementptr i8, i8 addrspace(1)* null, i64 %29, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %30), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  store double 0xFFF0000000000000, double* %x
  %31 = load double, double* %x
  %32 = call i1 @_bal_type_contains_float({i32, i32, [0 x i8*]}* @_Bt04root0, double %31)
  store i1 %32, i1* %5
  %33 = load i1, i1* %5, !dbg !10
  %34 = zext i1 %33 to i64, !dbg !10
  %35 = or i64 %34, 72057594037927936, !dbg !10
  %36 = getelementptr i8, i8 addrspace(1)* null, i64 %35, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  store double 0x7FF8000000000000, double* %x
  %37 = load double, double* %x
  %38 = call i1 @_bal_type_contains_float({i32, i32, [0 x i8*]}* @_Bt04root0, double %37)
  store i1 %38, i1* %7
  %39 = load i1, i1* %7, !dbg !11
  %40 = zext i1 %39 to i64, !dbg !11
  %41 = or i64 %40, 72057594037927936, !dbg !11
  %42 = getelementptr i8, i8 addrspace(1)* null, i64 %41, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %42), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  store double 0.0, double* %x
  %43 = load double, double* %x
  %44 = call i1 @_bal_type_contains_float({i32, i32, [0 x i8*]}* @_Bt04root0, double %43)
  store i1 %44, i1* %9
  %45 = load i1, i1* %9, !dbg !12
  %46 = zext i1 %45 to i64, !dbg !12
  %47 = or i64 %46, 72057594037927936, !dbg !12
  %48 = getelementptr i8, i8 addrspace(1)* null, i64 %47, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %48), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  store double -0.0, double* %x
  %49 = load double, double* %x
  %50 = call i1 @_bal_type_contains_float({i32, i32, [0 x i8*]}* @_Bt04root0, double %49)
  store i1 %50, i1* %11
  %51 = load i1, i1* %11, !dbg !13
  %52 = zext i1 %51 to i64, !dbg !13
  %53 = or i64 %52, 72057594037927936, !dbg !13
  %54 = getelementptr i8, i8 addrspace(1)* null, i64 %53, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %54), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !13
  store double -1.0, double* %x
  %55 = load double, double* %x
  %56 = call i1 @_bal_type_contains_float({i32, i32, [0 x i8*]}* @_Bt04root0, double %55)
  store i1 %56, i1* %13
  %57 = load i1, i1* %13, !dbg !14
  %58 = zext i1 %57 to i64, !dbg !14
  %59 = or i64 %58, 72057594037927936, !dbg !14
  %60 = getelementptr i8, i8 addrspace(1)* null, i64 %59, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %60), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !14
  ret void
61:
  %62 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %62)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-singleton/floattest2-v.bal", directory:"")
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
