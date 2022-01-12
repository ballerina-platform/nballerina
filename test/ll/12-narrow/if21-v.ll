@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.2 = alloca i8 addrspace(1)*
  %_ = alloca i8 addrspace(1)*
  %3 = alloca i1
  %x.3 = alloca i1
  %x.4 = alloca i64
  %_.1 = alloca i64
  %x.5 = alloca i8 addrspace(1)*
  %_.2 = alloca i8 addrspace(1)*
  %x.6 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %54, label %8
8:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621429108), i8 addrspace(1)** %x
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %10 = addrspacecast i8 addrspace(1)* %9 to i8*
  %11 = ptrtoint i8* %10 to i64
  %12 = and i64 %11, 2233785415175766016
  %13 = lshr i64 %12, 56
  %14 = shl i64 1, %13
  %15 = and i64 %14, 1154
  %16 = icmp ne i64 %15, 0
  store i1 %16, i1* %1
  %17 = load i1, i1* %1
  br i1 %17, label %18, label %51
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %19, i8 addrspace(1)** %x.1
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  store i8 addrspace(1)* %20, i8 addrspace(1)** %x
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %22 = addrspacecast i8 addrspace(1)* %21 to i8*
  %23 = ptrtoint i8* %22 to i64
  %24 = and i64 %23, 2233785415175766016
  %25 = lshr i64 %24, 56
  %26 = shl i64 1, %25
  %27 = and i64 %26, 130
  %28 = icmp ne i64 %27, 0
  store i1 %28, i1* %2
  %29 = load i1, i1* %2
  br i1 %29, label %30, label %48
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %31, i8 addrspace(1)** %x.2
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  store i8 addrspace(1)* %32, i8 addrspace(1)** %_
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  %34 = addrspacecast i8 addrspace(1)* %33 to i8*
  %35 = ptrtoint i8* %34 to i64
  %36 = and i64 %35, 2233785415175766016
  %37 = icmp eq i64 %36, 72057594037927936
  store i1 %37, i1* %3
  %38 = load i1, i1* %3
  br i1 %38, label %39, label %44
39:
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  %41 = addrspacecast i8 addrspace(1)* %40 to i8*
  %42 = ptrtoint i8* %41 to i64
  %43 = trunc i64 %42 to i1
  store i1 %43, i1* %x.3
  ret void
44:
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  %46 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %45)
  store i64 %46, i64* %x.4
  %47 = load i64, i64* %x.4
  store i64 %47, i64* %_.1
  br label %48
48:
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  store i8 addrspace(1)* %49, i8 addrspace(1)** %x.5
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %x.5
  store i8 addrspace(1)* %50, i8 addrspace(1)** %_.2
  br label %51
51:
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  store i8 addrspace(1)* %52, i8 addrspace(1)** %x.6
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %x.6, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %53), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !8
  ret void
54:
  %55 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %55)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if21-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 15, column: 4, scope: !5)
