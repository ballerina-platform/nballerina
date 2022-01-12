@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [2 x i8] c"0\00", align 8
@.dec1 = internal unnamed_addr constant [43 x i8] c"-9.999999999999999999999999999999999E+6144\00", align 8
@.dec2 = internal unnamed_addr constant [9 x i8] c"0.000001\00", align 8
@.dec3 = internal unnamed_addr constant [4 x i8] c"1.0\00", align 8
@.dec4 = internal unnamed_addr constant [5 x i8] c"1.00\00", align 8
@.dec5 = internal unnamed_addr constant [11 x i8] c"0.00000100\00", align 8
@.dec6 = internal unnamed_addr constant [8 x i8] c"1E-6142\00", align 8
@.dec7 = internal unnamed_addr constant [10 x i8] c"1.0E-6142\00", align 8
@.dec8 = internal unnamed_addr constant [8 x i8] c"1.00E+5\00", align 8
@.dec9 = internal unnamed_addr constant [7 x i8] c"1.0E+5\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare zeroext i1 @_bal_decimal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %d1 = alloca i8 addrspace(1)*
  %d2 = alloca i8 addrspace(1)*
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
  br i1 %17, label %83, label %18
18:
  %19 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %19, i8 addrspace(1)** %d1
  %20 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %20, i8 addrspace(1)** %d2
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %23 = call i1 @_bal_decimal_exact_eq(i8 addrspace(1)* %21, i8 addrspace(1)* %22)
  store i1 %23, i1* %1
  %24 = load i1, i1* %1, !dbg !8
  %25 = zext i1 %24 to i64, !dbg !8
  %26 = or i64 %25, 72057594037927936, !dbg !8
  %27 = getelementptr i8, i8 addrspace(1)* null, i64 %26, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %27), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %28 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([43 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %28, i8 addrspace(1)** %d1
  %29 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([43 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %29, i8 addrspace(1)** %d2
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %32 = call i1 @_bal_decimal_exact_eq(i8 addrspace(1)* %30, i8 addrspace(1)* %31)
  store i1 %32, i1* %3
  %33 = load i1, i1* %3, !dbg !9
  %34 = zext i1 %33 to i64, !dbg !9
  %35 = or i64 %34, 72057594037927936, !dbg !9
  %36 = getelementptr i8, i8 addrspace(1)* null, i64 %35, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %37 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([9 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %37, i8 addrspace(1)** %d1
  %38 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([9 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %38, i8 addrspace(1)** %d2
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %41 = call i1 @_bal_decimal_exact_eq(i8 addrspace(1)* %39, i8 addrspace(1)* %40)
  store i1 %41, i1* %5
  %42 = load i1, i1* %5, !dbg !10
  %43 = zext i1 %42 to i64, !dbg !10
  %44 = or i64 %43, 72057594037927936, !dbg !10
  %45 = getelementptr i8, i8 addrspace(1)* null, i64 %44, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %45), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  %46 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([4 x i8]* @.dec3 to i8*))
  store i8 addrspace(1)* %46, i8 addrspace(1)** %d1
  %47 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([5 x i8]* @.dec4 to i8*))
  store i8 addrspace(1)* %47, i8 addrspace(1)** %d2
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %50 = call i1 @_bal_decimal_exact_eq(i8 addrspace(1)* %48, i8 addrspace(1)* %49)
  store i1 %50, i1* %7
  %51 = load i1, i1* %7, !dbg !11
  %52 = zext i1 %51 to i64, !dbg !11
  %53 = or i64 %52, 72057594037927936, !dbg !11
  %54 = getelementptr i8, i8 addrspace(1)* null, i64 %53, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %54), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  %55 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([11 x i8]* @.dec5 to i8*))
  store i8 addrspace(1)* %55, i8 addrspace(1)** %d1
  %56 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([9 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %56, i8 addrspace(1)** %d2
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %59 = call i1 @_bal_decimal_exact_eq(i8 addrspace(1)* %57, i8 addrspace(1)* %58)
  store i1 %59, i1* %9
  %60 = load i1, i1* %9, !dbg !12
  %61 = zext i1 %60 to i64, !dbg !12
  %62 = or i64 %61, 72057594037927936, !dbg !12
  %63 = getelementptr i8, i8 addrspace(1)* null, i64 %62, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %63), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  %64 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec6 to i8*))
  store i8 addrspace(1)* %64, i8 addrspace(1)** %d1
  %65 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([10 x i8]* @.dec7 to i8*))
  store i8 addrspace(1)* %65, i8 addrspace(1)** %d2
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %68 = call i1 @_bal_decimal_exact_eq(i8 addrspace(1)* %66, i8 addrspace(1)* %67)
  store i1 %68, i1* %11
  %69 = load i1, i1* %11, !dbg !13
  %70 = zext i1 %69 to i64, !dbg !13
  %71 = or i64 %70, 72057594037927936, !dbg !13
  %72 = getelementptr i8, i8 addrspace(1)* null, i64 %71, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %72), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !13
  %73 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec8 to i8*))
  store i8 addrspace(1)* %73, i8 addrspace(1)** %d1
  %74 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec9 to i8*))
  store i8 addrspace(1)* %74, i8 addrspace(1)** %d2
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %77 = call i1 @_bal_decimal_exact_eq(i8 addrspace(1)* %75, i8 addrspace(1)* %76)
  %78 = xor i1 %77, 1
  store i1 %78, i1* %13
  %79 = load i1, i1* %13, !dbg !14
  %80 = zext i1 %79 to i64, !dbg !14
  %81 = or i64 %80, 72057594037927936, !dbg !14
  %82 = getelementptr i8, i8 addrspace(1)* null, i64 %81, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %82), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !14
  ret void
83:
  %84 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %84)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/exacteq2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 4, scope: !5)
!9 = !DILocation(line: 8, column: 4, scope: !5)
!10 = !DILocation(line: 11, column: 4, scope: !5)
!11 = !DILocation(line: 14, column: 4, scope: !5)
!12 = !DILocation(line: 17, column: 4, scope: !5)
!13 = !DILocation(line: 20, column: 4, scope: !5)
!14 = !DILocation(line: 23, column: 4, scope: !5)
