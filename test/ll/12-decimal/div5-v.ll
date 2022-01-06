@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [2 x i8] c"1\00", align 8
@.dec1 = internal unnamed_addr constant [3 x i8] c"-1\00", align 8
@.dec2 = internal unnamed_addr constant [2 x i8] c"0\00", align 8
@.dec3 = internal unnamed_addr constant [42 x i8] c"9.999999999999999999999999999999999E+6144\00", align 8
@.dec4 = internal unnamed_addr constant [42 x i8] c"9.999999999999999999999999999999999E-6001\00", align 8
@.dec5 = internal unnamed_addr constant [7 x i8] c"5E+142\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare {i8 addrspace(1)*, i64} @_bal_decimal_div(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %d1 = alloca i8 addrspace(1)*
  %d2 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8
  %13 = load i8*, i8** @_bal_stack_guard
  %14 = icmp ult i8* %12, %13
  br i1 %14, label %25, label %15
15:
  %16 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %16, i8 addrspace(1)** %d1
  %17 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %17, i8 addrspace(1)** %d2
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %20 = call {i8 addrspace(1)*, i64} @_bal_decimal_div(i8 addrspace(1)* %18, i8 addrspace(1)* %19)
  %21 = extractvalue {i8 addrspace(1)*, i64} %20, 1
  %22 = icmp ugt i64 %21, 0
  br i1 %22, label %37, label %27
23:
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  call void @_bal_panic(i8 addrspace(1)* %24)
  unreachable
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %26)
  unreachable
27:
  %28 = extractvalue {i8 addrspace(1)*, i64} %20, 0
  store i8 addrspace(1)* %28, i8 addrspace(1)** %1
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %29), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %30 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([3 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %30, i8 addrspace(1)** %d1
  %31 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %31, i8 addrspace(1)** %d2
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %34 = call {i8 addrspace(1)*, i64} @_bal_decimal_div(i8 addrspace(1)* %32, i8 addrspace(1)* %33)
  %35 = extractvalue {i8 addrspace(1)*, i64} %34, 1
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %50, label %40
37:
  %38 = or i64 %21, 1280
  %39 = call i8 addrspace(1)* @_bal_panic_construct(i64 %38), !dbg !7
  store i8 addrspace(1)* %39, i8 addrspace(1)** %11
  br label %23
40:
  %41 = extractvalue {i8 addrspace(1)*, i64} %34, 0
  store i8 addrspace(1)* %41, i8 addrspace(1)** %3
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %42), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %43 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %43, i8 addrspace(1)** %d1
  %44 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([3 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %44, i8 addrspace(1)** %d2
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %47 = call {i8 addrspace(1)*, i64} @_bal_decimal_div(i8 addrspace(1)* %45, i8 addrspace(1)* %46)
  %48 = extractvalue {i8 addrspace(1)*, i64} %47, 1
  %49 = icmp ugt i64 %48, 0
  br i1 %49, label %63, label %53
50:
  %51 = or i64 %35, 2304
  %52 = call i8 addrspace(1)* @_bal_panic_construct(i64 %51), !dbg !7
  store i8 addrspace(1)* %52, i8 addrspace(1)** %11
  br label %23
53:
  %54 = extractvalue {i8 addrspace(1)*, i64} %47, 0
  store i8 addrspace(1)* %54, i8 addrspace(1)** %5
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %55), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  %56 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([42 x i8]* @.dec3 to i8*))
  store i8 addrspace(1)* %56, i8 addrspace(1)** %d1
  %57 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([42 x i8]* @.dec3 to i8*))
  store i8 addrspace(1)* %57, i8 addrspace(1)** %d2
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %60 = call {i8 addrspace(1)*, i64} @_bal_decimal_div(i8 addrspace(1)* %58, i8 addrspace(1)* %59)
  %61 = extractvalue {i8 addrspace(1)*, i64} %60, 1
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %76, label %66
63:
  %64 = or i64 %48, 3328
  %65 = call i8 addrspace(1)* @_bal_panic_construct(i64 %64), !dbg !7
  store i8 addrspace(1)* %65, i8 addrspace(1)** %11
  br label %23
66:
  %67 = extractvalue {i8 addrspace(1)*, i64} %60, 0
  store i8 addrspace(1)* %67, i8 addrspace(1)** %7
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %68), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  %69 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([42 x i8]* @.dec4 to i8*))
  store i8 addrspace(1)* %69, i8 addrspace(1)** %d1
  %70 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec5 to i8*))
  store i8 addrspace(1)* %70, i8 addrspace(1)** %d2
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %73 = call {i8 addrspace(1)*, i64} @_bal_decimal_div(i8 addrspace(1)* %71, i8 addrspace(1)* %72)
  %74 = extractvalue {i8 addrspace(1)*, i64} %73, 1
  %75 = icmp ugt i64 %74, 0
  br i1 %75, label %82, label %79
76:
  %77 = or i64 %61, 4352
  %78 = call i8 addrspace(1)* @_bal_panic_construct(i64 %77), !dbg !7
  store i8 addrspace(1)* %78, i8 addrspace(1)** %11
  br label %23
79:
  %80 = extractvalue {i8 addrspace(1)*, i64} %73, 0
  store i8 addrspace(1)* %80, i8 addrspace(1)** %9
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %81), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  ret void
82:
  %83 = or i64 %74, 5376
  %84 = call i8 addrspace(1)* @_bal_panic_construct(i64 %83), !dbg !7
  store i8 addrspace(1)* %84, i8 addrspace(1)** %11
  br label %23
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/div5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 4, scope: !5)
!9 = !DILocation(line: 9, column: 4, scope: !5)
!10 = !DILocation(line: 13, column: 4, scope: !5)
!11 = !DILocation(line: 17, column: 4, scope: !5)
!12 = !DILocation(line: 21, column: 4, scope: !5)
