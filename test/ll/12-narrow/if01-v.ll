@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i1
  %x.1 = alloca i1
  %b = alloca i1
  %2 = alloca i8 addrspace(1)*
  %x.2 = alloca i64
  %i = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %31, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  store i8 addrspace(1)* %8, i8 addrspace(1)** %x
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %10 = addrspacecast i8 addrspace(1)* %9 to i8*
  %11 = ptrtoint i8* %10 to i64
  %12 = and i64 %11, 2233785415175766016
  %13 = icmp eq i64 %12, 72057594037927936
  store i1 %13, i1* %1
  %14 = load i1, i1* %1
  br i1 %14, label %15, label %25
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %17 = addrspacecast i8 addrspace(1)* %16 to i8*
  %18 = ptrtoint i8* %17 to i64
  %19 = trunc i64 %18 to i1
  store i1 %19, i1* %x.1
  %20 = load i1, i1* %x.1
  store i1 %20, i1* %b
  %21 = load i1, i1* %b, !dbg !8
  %22 = zext i1 %21 to i64, !dbg !8
  %23 = or i64 %22, 72057594037927936, !dbg !8
  %24 = getelementptr i8, i8 addrspace(1)* null, i64 %23, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  ret void
25:
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %27 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %26)
  store i64 %27, i64* %x.2
  %28 = load i64, i64* %x.2
  store i64 %28, i64* %i
  %29 = load i64, i64* %i, !dbg !9
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %29), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %30), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !9
  ret void
31:
  %32 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %32)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if01-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 8, scope: !5)
!9 = !DILocation(line: 11, column: 4, scope: !5)
