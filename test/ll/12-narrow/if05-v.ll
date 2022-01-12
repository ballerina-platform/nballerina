@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.2 = alloca i64
  %x.3 = alloca i1
  %b = alloca i1
  %3 = alloca i8 addrspace(1)*
  %x.4 = alloca i8 addrspace(1)*
  %bf = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %44, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.1)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %x
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %11 = addrspacecast i8 addrspace(1)* %10 to i8*
  %12 = ptrtoint i8* %11 to i64
  %13 = and i64 %12, 2233785415175766016
  %14 = lshr i64 %13, 56
  %15 = shl i64 1, %14
  %16 = and i64 %15, 130
  %17 = icmp ne i64 %16, 0
  store i1 %17, i1* %1
  %18 = load i1, i1* %1
  br i1 %18, label %19, label %40
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %20, i8 addrspace(1)** %x.1
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %x.1
  %22 = addrspacecast i8 addrspace(1)* %21 to i8*
  %23 = ptrtoint i8* %22 to i64
  %24 = and i64 %23, 2233785415175766016
  %25 = icmp eq i64 %24, 504403158265495552
  store i1 %25, i1* %2
  %26 = load i1, i1* %2
  br i1 %26, label %27, label %30
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %x.1
  %29 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %28)
  store i64 %29, i64* %x.2
  ret void
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %x.1
  %32 = addrspacecast i8 addrspace(1)* %31 to i8*
  %33 = ptrtoint i8* %32 to i64
  %34 = trunc i64 %33 to i1
  store i1 %34, i1* %x.3
  %35 = load i1, i1* %x.3
  store i1 %35, i1* %b
  %36 = load i1, i1* %b, !dbg !8
  %37 = zext i1 %36 to i64, !dbg !8
  %38 = or i64 %37, 72057594037927936, !dbg !8
  %39 = getelementptr i8, i8 addrspace(1)* null, i64 %38, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %39), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  br label %40
40:
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %x.1
  store i8 addrspace(1)* %41, i8 addrspace(1)** %x.4
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %x.4
  store i8 addrspace(1)* %42, i8 addrspace(1)** %bf
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %bf, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %43), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  ret void
44:
  %45 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %45)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if05-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 10, column: 8, scope: !5)
!9 = !DILocation(line: 14, column: 4, scope: !5)
