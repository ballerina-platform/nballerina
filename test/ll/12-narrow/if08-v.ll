@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.2 = alloca i64
  %x.3 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %x.4 = alloca double
  %x.5 = alloca i8 addrspace(1)*
  %bs = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %46, label %8
8:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630863215), i8 addrspace(1)** %x
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
  br i1 %17, label %18, label %30
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %19, i8 addrspace(1)** %x.1
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %x.1
  %21 = addrspacecast i8 addrspace(1)* %20 to i8*
  %22 = ptrtoint i8* %21 to i64
  %23 = and i64 %22, 2233785415175766016
  %24 = icmp eq i64 %23, 504403158265495552
  store i1 %24, i1* %2
  %25 = load i1, i1* %2
  br i1 %25, label %26, label %29
26:
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %x.1
  %28 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %27)
  store i64 %28, i64* %x.2
  ret void
29:
  br label %42
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %31, i8 addrspace(1)** %x.3
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %x.3
  %33 = addrspacecast i8 addrspace(1)* %32 to i8*
  %34 = ptrtoint i8* %33 to i64
  %35 = and i64 %34, 2233785415175766016
  %36 = icmp eq i64 %35, 576460752303423488
  store i1 %36, i1* %3
  %37 = load i1, i1* %3
  br i1 %37, label %38, label %41
38:
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %x.3
  %40 = call double @_bal_tagged_to_float(i8 addrspace(1)* %39)
  store double %40, double* %x.4
  ret void
41:
  br label %42
42:
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %x.1
  store i8 addrspace(1)* %43, i8 addrspace(1)** %x.5
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %x.5
  store i8 addrspace(1)* %44, i8 addrspace(1)** %bs
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %bs, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %45), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !8
  ret void
46:
  %47 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %47)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if08-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 16, column: 4, scope: !5)
