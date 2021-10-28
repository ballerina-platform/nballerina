@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8
  %17 = load i8*, i8** @_bal_stack_guard
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %35, label %19
19:
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9223372036854775806), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %21), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -9223372036854775806), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !10
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !12
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -1), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !13
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %26), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !14
  %27 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %27), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !15
  %28 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %28), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !16
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -1), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %29), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !17
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %30), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !18
  %31 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %31), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !19
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -9223372036854775806), !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %32), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !20
  %33 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %33), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !21
  %34 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9223372036854775806), !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %34), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !22
  ret void
35:
  %36 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %36)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/mul2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 4, scope: !5)
!9 = !DILocation(line: 6, column: 4, scope: !5)
!10 = !DILocation(line: 7, column: 4, scope: !5)
!11 = !DILocation(line: 9, column: 4, scope: !5)
!12 = !DILocation(line: 10, column: 4, scope: !5)
!13 = !DILocation(line: 11, column: 4, scope: !5)
!14 = !DILocation(line: 13, column: 4, scope: !5)
!15 = !DILocation(line: 14, column: 4, scope: !5)
!16 = !DILocation(line: 15, column: 4, scope: !5)
!17 = !DILocation(line: 17, column: 4, scope: !5)
!18 = !DILocation(line: 18, column: 4, scope: !5)
!19 = !DILocation(line: 19, column: 4, scope: !5)
!20 = !DILocation(line: 21, column: 4, scope: !5)
!21 = !DILocation(line: 22, column: 4, scope: !5)
!22 = !DILocation(line: 23, column: 4, scope: !5)
