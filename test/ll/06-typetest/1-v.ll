@_bal_stack_guard = external global i8*
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 12, i16 12, [12 x i8] c"boolean|int?"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %17, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !10
  call void @_B_bin(i8 addrspace(1)* %11), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9223372036854775807), !dbg !11
  call void @_B_bin(i8 addrspace(1)* %12), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %13 = zext i1 1 to i64, !dbg !12
  %14 = or i64 %13, 72057594037927936, !dbg !12
  %15 = getelementptr i8, i8 addrspace(1)* null, i64 %14, !dbg !12
  call void @_B_bin(i8 addrspace(1)* %15), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !12
  call void @_B_bin(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504)), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  call void @_B_bin(i8 addrspace(1)* null), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !14
  %16 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5), !dbg !15
  call void @_B_bin(i8 addrspace(1)* %16), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  ret void
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
}
define internal void @_B_bin(i8 addrspace(1)* %0) !dbg !7 {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %x.2 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %x.3 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %32, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %12 = icmp eq i8 addrspace(1)* %11, null
  store i1 %12, i1* %2
  %13 = load i1, i1* %2
  br i1 %13, label %14, label %16
14:
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %15, i8 addrspace(1)** %x.1
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621228910)), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !17
  br label %19
16:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %17, i8 addrspace(1)** %x.2
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %18), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !18
  br label %19
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %21 = addrspacecast i8 addrspace(1)* %20 to i8*
  %22 = ptrtoint i8* %21 to i64
  %23 = and i64 %22, 2233785415175766016
  %24 = lshr i64 %23, 56
  %25 = shl i64 1, %24
  %26 = and i64 %25, 131
  %27 = icmp ne i64 %26, 0
  store i1 %27, i1* %5
  %28 = load i1, i1* %5
  br i1 %28, label %29, label %31
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %30, i8 addrspace(1)** %x.3
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str2 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !19
  br label %31
31:
  ret void
32:
  %33 = call i8 addrspace(1)* @_bal_panic_construct(i64 5892), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-typetest/1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"bin", linkageName:"_B_bin", scope: !1, file: !1, line: 23, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 7, column: 4, scope: !5)
!11 = !DILocation(line: 10, column: 4, scope: !5)
!12 = !DILocation(line: 13, column: 4, scope: !5)
!13 = !DILocation(line: 15, column: 4, scope: !5)
!14 = !DILocation(line: 18, column: 4, scope: !5)
!15 = !DILocation(line: 20, column: 4, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
!17 = !DILocation(line: 25, column: 8, scope: !7)
!18 = !DILocation(line: 28, column: 8, scope: !7)
!19 = !DILocation(line: 31, column: 8, scope: !7)
