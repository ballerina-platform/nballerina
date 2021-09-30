@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca double
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %22, label %13
13:
  %14 = call i8 addrspace(1)* @_B_g(i1 1), !dbg !10
  store i8 addrspace(1)* %14, i8 addrspace(1)** %1, !dbg !10
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %16 = addrspacecast i8 addrspace(1)* %15 to i8*
  %17 = ptrtoint i8* %16 to i64
  %18 = and i64 %17, 2233785415175766016
  %19 = icmp eq i64 %18, 504403158265495552
  br i1 %19, label %30, label %34
20:
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
22:
  %23 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
24:
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %26 = addrspacecast i8 addrspace(1)* %25 to i8*
  %27 = ptrtoint i8* %26 to i64
  %28 = and i64 %27, 2233785415175766016
  %29 = icmp eq i64 %28, 576460752303423488
  br i1 %29, label %35, label %45
30:
  %31 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %15)
  %32 = sitofp i64 %31 to double
  %33 = call i8 addrspace(1)* @_bal_float_to_tagged(double %32)
  store i8 addrspace(1)* %33, i8 addrspace(1)** %2
  br label %24
34:
  store i8 addrspace(1)* %15, i8 addrspace(1)** %2
  br label %24
35:
  %36 = call double @_bal_tagged_to_float(i8 addrspace(1)* %25)
  store double %36, double* %3
  %37 = load double, double* %3, !dbg !11
  %38 = call i8 addrspace(1)* @_bal_float_to_tagged(double %37), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %38), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %39 = call i8 addrspace(1)* @_B_g(i1 0), !dbg !12
  store i8 addrspace(1)* %39, i8 addrspace(1)** %5, !dbg !12
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %41 = addrspacecast i8 addrspace(1)* %40 to i8*
  %42 = ptrtoint i8* %41 to i64
  %43 = and i64 %42, 2233785415175766016
  %44 = icmp eq i64 %43, 504403158265495552
  br i1 %44, label %53, label %57
45:
  %46 = call i8 addrspace(1)* @_bal_panic_construct(i64 1283), !dbg !9
  store i8 addrspace(1)* %46, i8 addrspace(1)** %9
  br label %20
47:
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %49 = addrspacecast i8 addrspace(1)* %48 to i8*
  %50 = ptrtoint i8* %49 to i64
  %51 = and i64 %50, 2233785415175766016
  %52 = icmp eq i64 %51, 576460752303423488
  br i1 %52, label %58, label %62
53:
  %54 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %40)
  %55 = sitofp i64 %54 to double
  %56 = call i8 addrspace(1)* @_bal_float_to_tagged(double %55)
  store i8 addrspace(1)* %56, i8 addrspace(1)** %6
  br label %47
57:
  store i8 addrspace(1)* %40, i8 addrspace(1)** %6
  br label %47
58:
  %59 = call double @_bal_tagged_to_float(i8 addrspace(1)* %48)
  store double %59, double* %7
  %60 = load double, double* %7, !dbg !13
  %61 = call i8 addrspace(1)* @_bal_float_to_tagged(double %60), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %61), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !13
  ret void
62:
  %63 = call i8 addrspace(1)* @_bal_panic_construct(i64 1539), !dbg !9
  store i8 addrspace(1)* %63, i8 addrspace(1)** %9
  br label %20
}
define internal i8 addrspace(1)* @_B_g(i1 %0) !dbg !7 {
  %isInt = alloca i1
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %11, label %5
5:
  store i1 %0, i1* %isInt
  %6 = load i1, i1* %isInt
  br i1 %6, label %7, label %9
7:
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 8)
  ret i8 addrspace(1)* %8
9:
  %10 = call i8 addrspace(1)* @_bal_float_to_tagged(double 5.5)
  ret i8 addrspace(1)* %10
11:
  %12 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !14
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-typecast/17-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"g", linkageName:"_B_g", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 22, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 22, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
