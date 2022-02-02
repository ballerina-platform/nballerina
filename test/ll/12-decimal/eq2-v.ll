@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [2 x i8] c"1\00", align 8
@.dec1 = internal unnamed_addr constant [3 x i8] c"-1\00", align 8
@.dec2 = internal unnamed_addr constant [2 x i8] c"0\00", align 8
@.dec3 = internal unnamed_addr constant [42 x i8] c"9.999999999999999999999999999999999E+6144\00", align 8
@.dec4 = internal unnamed_addr constant [8 x i8] c"1E+6111\00", align 8
@.dec5 = internal unnamed_addr constant [41 x i8] c"9.99999999999999999999999999999999E+6143\00", align 8
@.dec6 = internal unnamed_addr constant [42 x i8] c"9.999999999999999999999999999999990E+6143\00", align 8
@.dec7 = internal unnamed_addr constant [8 x i8] c"1E-6143\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare i64 @_bal_decimal_cmp(i8 addrspace(1)*, i8 addrspace(1)*) readonly
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
  br i1 %17, label %89, label %18
18:
  %19 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %19, i8 addrspace(1)** %d1
  %20 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %20, i8 addrspace(1)** %d2
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %23 = call i64 @_bal_decimal_cmp(i8 addrspace(1)* %21, i8 addrspace(1)* %22)
  %24 = icmp eq i64 %23, 0
  store i1 %24, i1* %1
  %25 = load i1, i1* %1, !dbg !8
  %26 = zext i1 %25 to i64, !dbg !8
  %27 = or i64 %26, 72057594037927936, !dbg !8
  %28 = getelementptr i8, i8 addrspace(1)* null, i64 %27, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %28), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %29 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([3 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %29, i8 addrspace(1)** %d1
  %30 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %30, i8 addrspace(1)** %d2
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %33 = call i64 @_bal_decimal_cmp(i8 addrspace(1)* %31, i8 addrspace(1)* %32)
  %34 = icmp ne i64 %33, 0
  store i1 %34, i1* %3
  %35 = load i1, i1* %3, !dbg !9
  %36 = zext i1 %35 to i64, !dbg !9
  %37 = or i64 %36, 72057594037927936, !dbg !9
  %38 = getelementptr i8, i8 addrspace(1)* null, i64 %37, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %38), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %39 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %39, i8 addrspace(1)** %d1
  %40 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %40, i8 addrspace(1)** %d2
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %43 = call i64 @_bal_decimal_cmp(i8 addrspace(1)* %41, i8 addrspace(1)* %42)
  %44 = icmp eq i64 %43, 0
  store i1 %44, i1* %5
  %45 = load i1, i1* %5, !dbg !10
  %46 = zext i1 %45 to i64, !dbg !10
  %47 = or i64 %46, 72057594037927936, !dbg !10
  %48 = getelementptr i8, i8 addrspace(1)* null, i64 %47, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %48), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  %49 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([42 x i8]* @.dec3 to i8*))
  store i8 addrspace(1)* %49, i8 addrspace(1)** %d1
  %50 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec4 to i8*))
  store i8 addrspace(1)* %50, i8 addrspace(1)** %d2
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %53 = call i64 @_bal_decimal_cmp(i8 addrspace(1)* %51, i8 addrspace(1)* %52)
  %54 = icmp ne i64 %53, 0
  store i1 %54, i1* %7
  %55 = load i1, i1* %7, !dbg !11
  %56 = zext i1 %55 to i64, !dbg !11
  %57 = or i64 %56, 72057594037927936, !dbg !11
  %58 = getelementptr i8, i8 addrspace(1)* null, i64 %57, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %58), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  %59 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([41 x i8]* @.dec5 to i8*))
  store i8 addrspace(1)* %59, i8 addrspace(1)** %d1
  %60 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([42 x i8]* @.dec6 to i8*))
  store i8 addrspace(1)* %60, i8 addrspace(1)** %d2
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %63 = call i64 @_bal_decimal_cmp(i8 addrspace(1)* %61, i8 addrspace(1)* %62)
  %64 = icmp eq i64 %63, 0
  store i1 %64, i1* %9
  %65 = load i1, i1* %9, !dbg !12
  %66 = zext i1 %65 to i64, !dbg !12
  %67 = or i64 %66, 72057594037927936, !dbg !12
  %68 = getelementptr i8, i8 addrspace(1)* null, i64 %67, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %68), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  %69 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %69, i8 addrspace(1)** %d1
  %70 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec7 to i8*))
  store i8 addrspace(1)* %70, i8 addrspace(1)** %d2
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %73 = call i64 @_bal_decimal_cmp(i8 addrspace(1)* %71, i8 addrspace(1)* %72)
  %74 = icmp eq i64 %73, 0
  store i1 %74, i1* %11
  %75 = load i1, i1* %11, !dbg !13
  %76 = zext i1 %75 to i64, !dbg !13
  %77 = or i64 %76, 72057594037927936, !dbg !13
  %78 = getelementptr i8, i8 addrspace(1)* null, i64 %77, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %78), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !13
  %79 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec7 to i8*))
  store i8 addrspace(1)* %79, i8 addrspace(1)** %d1
  %80 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec7 to i8*))
  store i8 addrspace(1)* %80, i8 addrspace(1)** %d2
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %83 = call i64 @_bal_decimal_cmp(i8 addrspace(1)* %81, i8 addrspace(1)* %82)
  %84 = icmp eq i64 %83, 0
  store i1 %84, i1* %13
  %85 = load i1, i1* %13, !dbg !14
  %86 = zext i1 %85 to i64, !dbg !14
  %87 = or i64 %86, 72057594037927936, !dbg !14
  %88 = getelementptr i8, i8 addrspace(1)* null, i64 %87, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %88), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !14
  ret void
89:
  %90 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %90)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/eq2-v.bal", directory:"")
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
