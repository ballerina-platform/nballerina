@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare zeroext i1 @_bal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %28, label %9
9:
  %10 = call i8 addrspace(1)* @_B_mkInt(i64 2), !dbg !10
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1, !dbg !10
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %11, i8 addrspace(1)** %x
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %12, i8 addrspace(1)** %y
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %15 = call i1 @_bal_exact_eq(i8 addrspace(1)* %13, i8 addrspace(1)* %14)
  store i1 %15, i1* %2
  %16 = load i1, i1* %2, !dbg !11
  %17 = zext i1 %16 to i64, !dbg !11
  %18 = or i64 %17, 72057594037927936, !dbg !11
  %19 = getelementptr i8, i8 addrspace(1)* null, i64 %18, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %19), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !11
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %22 = call i1 @_bal_exact_eq(i8 addrspace(1)* %20, i8 addrspace(1)* %21)
  %23 = xor i1 %22, 1
  store i1 %23, i1* %4
  %24 = load i1, i1* %4, !dbg !12
  %25 = zext i1 %24 to i64, !dbg !12
  %26 = or i64 %25, 72057594037927936, !dbg !12
  %27 = getelementptr i8, i8 addrspace(1)* null, i64 %26, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %27), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !12
  ret void
28:
  %29 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %29)
  unreachable
}
define internal i8 addrspace(1)* @_B_mkInt(i64 %0) !dbg !7 {
  %n = alloca i64
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %8, label %5
5:
  store i64 %0, i64* %n
  %6 = load i64, i64* %n
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %6)
  ret i8 addrspace(1)* %7
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/02-equal/5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"mkInt", linkageName:"_B_mkInt", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 12, scope: !5)
!11 = !DILocation(line: 7, column: 4, scope: !5)
!12 = !DILocation(line: 8, column: 4, scope: !5)
!13 = !DILocation(line: 0, column: 0, scope: !7)
