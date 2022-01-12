@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %1 = alloca i1
  %x.1 = alloca i1
  %x.2 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %y.1 = alloca i64
  %3 = alloca i1
  %x.3 = alloca double
  %x.4 = alloca i64
  %_ = alloca i64
  %y.2 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %49, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 8)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %x
  %10 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.1)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %y
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %12 = addrspacecast i8 addrspace(1)* %11 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 72057594037927936
  store i1 %15, i1* %1
  %16 = load i1, i1* %1
  br i1 %16, label %17, label %22
17:
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %19 = addrspacecast i8 addrspace(1)* %18 to i8*
  %20 = ptrtoint i8* %19 to i64
  %21 = trunc i64 %20 to i1
  store i1 %21, i1* %x.1
  ret void
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %23, i8 addrspace(1)** %x.2
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %25 = addrspacecast i8 addrspace(1)* %24 to i8*
  %26 = ptrtoint i8* %25 to i64
  %27 = and i64 %26, 2233785415175766016
  %28 = icmp eq i64 %27, 504403158265495552
  store i1 %28, i1* %2
  %29 = load i1, i1* %2
  br i1 %29, label %30, label %46
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %32 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %31)
  store i64 %32, i64* %y.1
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  %34 = addrspacecast i8 addrspace(1)* %33 to i8*
  %35 = ptrtoint i8* %34 to i64
  %36 = and i64 %35, 2233785415175766016
  %37 = icmp eq i64 %36, 576460752303423488
  store i1 %37, i1* %3
  %38 = load i1, i1* %3
  br i1 %38, label %39, label %42
39:
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  %41 = call double @_bal_tagged_to_float(i8 addrspace(1)* %40)
  store double %41, double* %x.3
  ret void
42:
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  %44 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %43)
  store i64 %44, i64* %x.4
  %45 = load i64, i64* %x.4
  store i64 %45, i64* %_
  br label %46
46:
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  store i8 addrspace(1)* %47, i8 addrspace(1)** %y.2
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %48), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !8
  ret void
49:
  %50 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %50)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if22-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 15, column: 4, scope: !5)
