@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i1
  %x.1 = alloca i1
  %x.2 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.3 = alloca i64
  %x.4 = alloca double
  %f = alloca double
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %38, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.1)
  store i8 addrspace(1)* %8, i8 addrspace(1)** %x
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %10 = addrspacecast i8 addrspace(1)* %9 to i8*
  %11 = ptrtoint i8* %10 to i64
  %12 = and i64 %11, 2233785415175766016
  %13 = icmp eq i64 %12, 72057594037927936
  store i1 %13, i1* %1
  %14 = load i1, i1* %1
  br i1 %14, label %15, label %20
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %17 = addrspacecast i8 addrspace(1)* %16 to i8*
  %18 = ptrtoint i8* %17 to i64
  %19 = trunc i64 %18 to i1
  store i1 %19, i1* %x.1
  ret void
20:
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %21, i8 addrspace(1)** %x.2
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  %23 = addrspacecast i8 addrspace(1)* %22 to i8*
  %24 = ptrtoint i8* %23 to i64
  %25 = and i64 %24, 2233785415175766016
  %26 = icmp eq i64 %25, 504403158265495552
  store i1 %26, i1* %2
  %27 = load i1, i1* %2
  br i1 %27, label %28, label %31
28:
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  %30 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %29)
  store i64 %30, i64* %x.3
  ret void
31:
  br label %32
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  %34 = call double @_bal_tagged_to_float(i8 addrspace(1)* %33)
  store double %34, double* %x.4
  %35 = load double, double* %x.4
  store double %35, double* %f
  %36 = load double, double* %f, !dbg !8
  %37 = call i8 addrspace(1)* @_bal_float_to_tagged(double %36), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %37), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  ret void
38:
  %39 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %39)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if06-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 12, column: 4, scope: !5)
