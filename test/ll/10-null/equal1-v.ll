@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %b = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8
  %16 = load i8*, i8** @_bal_stack_guard
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %48, label %18
18:
  call void @_B_makeNil(), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !10
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %20 = icmp eq i8 addrspace(1)* %19, null
  store i1 %20, i1* %1
  %21 = load i1, i1* %1
  br i1 %21, label %22, label %24
22:
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !11
  br label %24
24:
  call void @_B_makeNil(), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !12
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %26 = icmp eq i8 addrspace(1)* null, %25
  store i1 %26, i1* %4
  %27 = load i1, i1* %4
  br i1 %27, label %28, label %30
28:
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %29), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !13
  br label %30
30:
  %31 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %31), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !14
  call void @_B_makeNil(), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !15
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %33 = icmp ne i8 addrspace(1)* %32, null
  store i1 %33, i1* %8
  %34 = load i1, i1* %8
  br i1 %34, label %35, label %37
35:
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4), !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !16
  br label %37
37:
  call void @_B_makeNil(), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !17
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %39 = icmp ne i8 addrspace(1)* null, %38
  store i1 %39, i1* %11
  %40 = load i1, i1* %11
  br i1 %40, label %41, label %43
41:
  %42 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5), !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %42), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !18
  br label %43
43:
  store i1 0, i1* %b
  %44 = load i1, i1* %b
  br i1 %44, label %45, label %47
45:
  %46 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 6), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !19
  br label %47
47:
  ret void
48:
  %49 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %49)
  unreachable
}
define internal void @_B_makeNil() !dbg !7 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret void
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 6660), !dbg !20
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/10-null/equal1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"makeNil", linkageName:"_B_makeNil", scope: !1, file: !1, line: 26, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 7, scope: !5)
!11 = !DILocation(line: 6, column: 8, scope: !5)
!12 = !DILocation(line: 8, column: 15, scope: !5)
!13 = !DILocation(line: 9, column: 8, scope: !5)
!14 = !DILocation(line: 12, column: 8, scope: !5)
!15 = !DILocation(line: 14, column: 8, scope: !5)
!16 = !DILocation(line: 15, column: 8, scope: !5)
!17 = !DILocation(line: 17, column: 15, scope: !5)
!18 = !DILocation(line: 18, column: 8, scope: !5)
!19 = !DILocation(line: 22, column: 8, scope: !5)
!20 = !DILocation(line: 0, column: 0, scope: !7)
