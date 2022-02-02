@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [3 x i8] c"10\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i1
  %x.1 = alloca double
  %2 = alloca i8 addrspace(1)*
  %x.2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %x.3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %x.4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %x.5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %46, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_float_to_tagged(double 10.0)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %x
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %13 = addrspacecast i8 addrspace(1)* %12 to i8*
  %14 = ptrtoint i8* %13 to i64
  %15 = and i64 %14, 2233785415175766016
  %16 = icmp eq i64 %15, 576460752303423488
  store i1 %16, i1* %1
  %17 = load i1, i1* %1
  br i1 %17, label %18, label %21
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %20 = call double @_bal_tagged_to_float(i8 addrspace(1)* %19)
  store double %20, double* %x.1
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475943970172006)), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  br label %21
21:
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %22, i8 addrspace(1)** %x.2
  %23 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([3 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %23, i8 addrspace(1)** %x
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %25 = addrspacecast i8 addrspace(1)* %24 to i8*
  %26 = ptrtoint i8* %25 to i64
  %27 = and i64 %26, 2233785415175766016
  %28 = icmp eq i64 %27, 648518346341351424
  store i1 %28, i1* %3
  %29 = load i1, i1* %3
  br i1 %29, label %30, label %32
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %31, i8 addrspace(1)** %x.3
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3056925369625175396)), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  br label %32
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %33, i8 addrspace(1)** %x.4
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %x.4
  %35 = addrspacecast i8 addrspace(1)* %34 to i8*
  %36 = ptrtoint i8* %35 to i64
  %37 = and i64 %36, 2233785415175766016
  %38 = lshr i64 %37, 56
  %39 = shl i64 1, %38
  %40 = and i64 %39, 640
  %41 = icmp ne i64 %40, 0
  store i1 %41, i1* %5
  %42 = load i1, i1* %5
  br i1 %42, label %43, label %45
43:
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %x.4
  store i8 addrspace(1)* %44, i8 addrspace(1)** %x.5
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3056925369625175396)), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  br label %45
45:
  ret void
46:
  %47 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %47)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/typetest1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 8, scope: !5)
!9 = !DILocation(line: 9, column: 8, scope: !5)
!10 = !DILocation(line: 12, column: 8, scope: !5)
