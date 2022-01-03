@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [2 x i8] c"0\00", align 8
@.dec1 = internal unnamed_addr constant [2 x i8] c"1\00", align 8
@.dec2 = internal unnamed_addr constant [3 x i8] c"-1\00", align 8
@.dec3 = internal unnamed_addr constant [8 x i8] c"1E-6143\00", align 8
@.dec4 = internal unnamed_addr constant [42 x i8] c"9.999999999999999999999999999999998E+6144\00", align 8
@.dec5 = internal unnamed_addr constant [5 x i8] c"-2.1\00", align 8
@.dec6 = internal unnamed_addr constant [8 x i8] c"-2.1E+2\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare i8 addrspace(1)* @_bal_decimal_neg(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %d = alloca i8 addrspace(1)*
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
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %39, label %16
16:
  %17 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %17, i8 addrspace(1)** %d
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %19 = call i8 addrspace(1)* @_bal_decimal_neg(i8 addrspace(1)* %18)
  store i8 addrspace(1)* %19, i8 addrspace(1)** %1
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %21 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %21, i8 addrspace(1)** %d
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %23 = call i8 addrspace(1)* @_bal_decimal_neg(i8 addrspace(1)* %22)
  store i8 addrspace(1)* %23, i8 addrspace(1)** %3
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %25 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([3 x i8]* @.dec2 to i8*))
  store i8 addrspace(1)* %25, i8 addrspace(1)** %d
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %27 = call i8 addrspace(1)* @_bal_decimal_neg(i8 addrspace(1)* %26)
  store i8 addrspace(1)* %27, i8 addrspace(1)** %5
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %28), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  %29 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec3 to i8*))
  store i8 addrspace(1)* %29, i8 addrspace(1)** %d
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %31 = call i8 addrspace(1)* @_bal_decimal_neg(i8 addrspace(1)* %30)
  store i8 addrspace(1)* %31, i8 addrspace(1)** %7
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %32), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  %33 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([42 x i8]* @.dec4 to i8*))
  store i8 addrspace(1)* %33, i8 addrspace(1)** %d
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %35 = call i8 addrspace(1)* @_bal_decimal_neg(i8 addrspace(1)* %34)
  store i8 addrspace(1)* %35, i8 addrspace(1)** %9
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  %37 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([5 x i8]* @.dec5 to i8*)), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %37), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !13
  %38 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec6 to i8*)), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %38), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !14
  ret void
39:
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %40)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/neg1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 11, column: 4, scope: !5)
!9 = !DILocation(line: 14, column: 4, scope: !5)
!10 = !DILocation(line: 17, column: 4, scope: !5)
!11 = !DILocation(line: 20, column: 4, scope: !5)
!12 = !DILocation(line: 23, column: 4, scope: !5)
!13 = !DILocation(line: 25, column: 4, scope: !5)
!14 = !DILocation(line: 26, column: 4, scope: !5)
