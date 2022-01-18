@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i1
  %x.1 = alloca i1
  %b1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %x.2 = alloca i64
  %x.3 = alloca i1
  %b2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %40, label %7
7:
  %8 = zext i1 0 to i64
  %9 = or i64 %8, 72057594037927936
  %10 = getelementptr i8, i8 addrspace(1)* null, i64 %9
  store i8 addrspace(1)* %10, i8 addrspace(1)** %x
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %12 = addrspacecast i8 addrspace(1)* %11 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 72057594037927936
  store i1 %15, i1* %1
  %16 = load i1, i1* %1
  br i1 %16, label %17, label %27
17:
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %19 = addrspacecast i8 addrspace(1)* %18 to i8*
  %20 = ptrtoint i8* %19 to i64
  %21 = trunc i64 %20 to i1
  store i1 %21, i1* %x.1
  %22 = load i1, i1* %x.1
  store i1 %22, i1* %b1
  %23 = load i1, i1* %b1, !dbg !8
  %24 = zext i1 %23 to i64, !dbg !8
  %25 = or i64 %24, 72057594037927936, !dbg !8
  %26 = getelementptr i8, i8 addrspace(1)* null, i64 %25, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %26), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  br label %30
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %29 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %28)
  store i64 %29, i64* %x.2
  ret void
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %32 = addrspacecast i8 addrspace(1)* %31 to i8*
  %33 = ptrtoint i8* %32 to i64
  %34 = trunc i64 %33 to i1
  store i1 %34, i1* %x.3
  %35 = load i1, i1* %x.3
  store i1 %35, i1* %b2
  %36 = load i1, i1* %b2, !dbg !9
  %37 = zext i1 %36 to i64, !dbg !9
  %38 = or i64 %37, 72057594037927936, !dbg !9
  %39 = getelementptr i8, i8 addrspace(1)* null, i64 %38, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %39), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !9
  ret void
40:
  %41 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %41)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if03-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 8, scope: !5)
!9 = !DILocation(line: 13, column: 4, scope: !5)
