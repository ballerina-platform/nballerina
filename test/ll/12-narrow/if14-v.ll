@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.2 = alloca double
  %x.3 = alloca double
  %x.4 = alloca i8 addrspace(1)*
  %bf1 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %38, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 8)
  store i8 addrspace(1)* %8, i8 addrspace(1)** %x
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %10 = addrspacecast i8 addrspace(1)* %9 to i8*
  %11 = ptrtoint i8* %10 to i64
  %12 = and i64 %11, 2233785415175766016
  %13 = lshr i64 %12, 56
  %14 = shl i64 1, %13
  %15 = and i64 %14, 130
  %16 = icmp ne i64 %15, 0
  store i1 %16, i1* %1
  %17 = load i1, i1* %1
  br i1 %17, label %18, label %31
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %19, i8 addrspace(1)** %x.1
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 40)
  store i8 addrspace(1)* %20, i8 addrspace(1)** %x
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %22 = addrspacecast i8 addrspace(1)* %21 to i8*
  %23 = ptrtoint i8* %22 to i64
  %24 = and i64 %23, 2233785415175766016
  %25 = icmp eq i64 %24, 576460752303423488
  store i1 %25, i1* %2
  %26 = load i1, i1* %2
  br i1 %26, label %27, label %30
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %29 = call double @_bal_tagged_to_float(i8 addrspace(1)* %28)
  store double %29, double* %x.2
  ret void
30:
  br label %34
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %33 = call double @_bal_tagged_to_float(i8 addrspace(1)* %32)
  store double %33, double* %x.3
  ret void
34:
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %35, i8 addrspace(1)** %x.4
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %x.4
  store i8 addrspace(1)* %36, i8 addrspace(1)** %bf1
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %bf1, !dbg !8
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
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if14-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 15, column: 4, scope: !5)
