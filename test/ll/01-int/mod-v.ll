@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %20, label %10
10:
  %11 = call i64 @_B_mod(i64 5, i64 3), !dbg !10
  store i64 %11, i64* %1, !dbg !10
  %12 = load i64, i64* %1, !dbg !11
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %12), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %13), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %14 = call i64 @_B_mod(i64 7, i64 7), !dbg !12
  store i64 %14, i64* %3, !dbg !12
  %15 = load i64, i64* %3, !dbg !13
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %15), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %16), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %17 = call i64 @_B_mod(i64 6, i64 9), !dbg !14
  store i64 %17, i64* %5, !dbg !14
  %18 = load i64, i64* %5, !dbg !15
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %18), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %19), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  ret void
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
}
define internal i64 @_B_mod(i64 %0, i64 %1) !dbg !7 {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %14, label %8
8:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %9 = load i64, i64* %x
  %10 = load i64, i64* %y
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %16, label %18
12:
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
16:
  %17 = call i8 addrspace(1)* @_bal_panic_construct(i64 2562), !dbg !16
  store i8 addrspace(1)* %17, i8 addrspace(1)** %4
  br label %12
18:
  %19 = icmp eq i64 %9, -9223372036854775808
  %20 = icmp eq i64 %10, -1
  %21 = and i1 %19, %20
  br i1 %21, label %24, label %22
22:
  %23 = srem i64 %9, %10
  store i64 %23, i64* %3
  br label %25
24:
  store i64 0, i64* %3
  br label %25
25:
  %26 = load i64, i64* %3
  ret i64 %26
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/mod-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"mod", linkageName:"_B_mod", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 13, scope: !5)
!11 = !DILocation(line: 4, column: 2, scope: !5)
!12 = !DILocation(line: 5, column: 13, scope: !5)
!13 = !DILocation(line: 5, column: 2, scope: !5)
!14 = !DILocation(line: 6, column: 13, scope: !5)
!15 = !DILocation(line: 6, column: 2, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
