@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)*, i8 addrspace(1)*)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %a = alloca i8 addrspace(1)*
  %b = alloca i8 addrspace(1)*
  %c = alloca i8 addrspace(1)*
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %d = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8
  %16 = load i8*, i8** @_bal_stack_guard
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %66, label %18
18:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089), i8 addrspace(1)** %a
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090), i8 addrspace(1)** %b
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %20 = addrspacecast i8 addrspace(1)* %19 to i8*
  %21 = ptrtoint i8* %20 to i64
  %22 = and i64 %21, 2233785415175766016
  %23 = icmp eq i64 %22, 0
  store i1 %23, i1* %1
  %24 = load i1, i1* %1
  br i1 %24, label %33, label %25
25:
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  store i8 addrspace(1)* %26, i8 addrspace(1)** %2
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %28 = addrspacecast i8 addrspace(1)* %27 to i8*
  %29 = ptrtoint i8* %28 to i64
  %30 = and i64 %29, 2233785415175766016
  %31 = icmp eq i64 %30, 0
  store i1 %31, i1* %3
  %32 = load i1, i1* %3
  br i1 %32, label %33, label %34
33:
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  br label %40
34:
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  store i8 addrspace(1)* %35, i8 addrspace(1)** %4
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %38 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %36, i8 addrspace(1)* %37)
  store i8 addrspace(1)* %38, i8 addrspace(1)** %5
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  store i8 addrspace(1)* %39, i8 addrspace(1)** %6
  br label %40
40:
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %41, i8 addrspace(1)** %c
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %c, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %42), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %d
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %44 = addrspacecast i8 addrspace(1)* %43 to i8*
  %45 = ptrtoint i8* %44 to i64
  %46 = and i64 %45, 2233785415175766016
  %47 = icmp eq i64 %46, 0
  store i1 %47, i1* %8
  %48 = load i1, i1* %8
  br i1 %48, label %57, label %49
49:
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  store i8 addrspace(1)* %50, i8 addrspace(1)** %9
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %52 = addrspacecast i8 addrspace(1)* %51 to i8*
  %53 = ptrtoint i8* %52 to i64
  %54 = and i64 %53, 2233785415175766016
  %55 = icmp eq i64 %54, 0
  store i1 %55, i1* %10
  %56 = load i1, i1* %10
  br i1 %56, label %57, label %58
57:
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  br label %64
58:
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  store i8 addrspace(1)* %59, i8 addrspace(1)** %11
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %62 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %60, i8 addrspace(1)* %61)
  store i8 addrspace(1)* %62, i8 addrspace(1)** %12
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  store i8 addrspace(1)* %63, i8 addrspace(1)** %13
  br label %64
64:
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %13, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %65), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !9
  ret void
66:
  %67 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %67)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-nillift/5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
!9 = !DILocation(line: 9, column: 4, scope: !5)
