@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %1 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i1
  %x.2 = alloca i8 addrspace(1)*
  %y.1 = alloca i1
  %_ = alloca i8 addrspace(1)*
  %_.1 = alloca i1
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %39, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  store i8 addrspace(1)* %8, i8 addrspace(1)** %x
  %9 = zext i1 1 to i64
  %10 = or i64 %9, 72057594037927936
  %11 = getelementptr i8, i8 addrspace(1)* null, i64 %10
  store i8 addrspace(1)* %11, i8 addrspace(1)** %y
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %13 = addrspacecast i8 addrspace(1)* %12 to i8*
  %14 = ptrtoint i8* %13 to i64
  %15 = and i64 %14, 2233785415175766016
  %16 = icmp eq i64 %15, 504403158265495552
  store i1 %16, i1* %1
  %17 = load i1, i1* %1
  br i1 %17, label %26, label %18
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %19, i8 addrspace(1)** %x.1
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %21 = addrspacecast i8 addrspace(1)* %20 to i8*
  %22 = ptrtoint i8* %21 to i64
  %23 = and i64 %22, 2233785415175766016
  %24 = icmp eq i64 %23, 576460752303423488
  store i1 %24, i1* %2
  %25 = load i1, i1* %2
  store i1 %25, i1* %3
  br label %28
26:
  %27 = load i1, i1* %1
  store i1 %27, i1* %3
  br label %28
28:
  %29 = load i1, i1* %3
  br i1 %29, label %30, label %31
30:
  ret void
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %32, i8 addrspace(1)** %x.2
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %34 = addrspacecast i8 addrspace(1)* %33 to i8*
  %35 = ptrtoint i8* %34 to i64
  %36 = trunc i64 %35 to i1
  store i1 %36, i1* %y.1
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  store i8 addrspace(1)* %37, i8 addrspace(1)** %_
  %38 = load i1, i1* %y.1
  store i1 %38, i1* %_.1
  ret void
39:
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 260), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %40)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/18-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
