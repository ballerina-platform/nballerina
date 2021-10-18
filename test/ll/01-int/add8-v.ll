@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %33, label %16
16:
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9223372036854775807), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %18), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -1), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %19), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !12
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -9223372036854775807), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %21 = call i64 @_B_add(i64 1, i64 0), !dbg !14
  store i64 %21, i64* %5, !dbg !14
  %22 = load i64, i64* %5, !dbg !15
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %22), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %24 = call i64 @_B_add(i64 1, i64 9223372036854775806), !dbg !16
  store i64 %24, i64* %7, !dbg !16
  %25 = load i64, i64* %7, !dbg !17
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %25), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %26), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  %27 = call i64 @_B_add(i64 -1, i64 0), !dbg !18
  store i64 %27, i64* %9, !dbg !18
  %28 = load i64, i64* %9, !dbg !19
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %28), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %29), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !19
  %30 = call i64 @_B_add(i64 -1, i64 -9223372036854775806), !dbg !20
  store i64 %30, i64* %11, !dbg !20
  %31 = load i64, i64* %11, !dbg !21
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %31), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %32), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !21
  ret void
33:
  %34 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
}
define internal i64 @_B_add(i64 %0, i64 %1) !dbg !7 {
  %i = alloca i64
  %j = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, i64* %i
  store i64 %1, i64* %j
  %9 = load i64, i64* %i
  %10 = load i64, i64* %j
  %11 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %20, label %17
13:
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844), !dbg !22
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
17:
  %18 = extractvalue {i64, i1} %11, 0
  store i64 %18, i64* %3
  %19 = load i64, i64* %3
  ret i64 %19
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 4097), !dbg !22
  store i8 addrspace(1)* %21, i8 addrspace(1)** %4
  br label %13
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/add8-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"add", linkageName:"_B_add", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 1, scope: !5)
!11 = !DILocation(line: 5, column: 1, scope: !5)
!12 = !DILocation(line: 6, column: 1, scope: !5)
!13 = !DILocation(line: 7, column: 1, scope: !5)
!14 = !DILocation(line: 9, column: 12, scope: !5)
!15 = !DILocation(line: 9, column: 1, scope: !5)
!16 = !DILocation(line: 10, column: 12, scope: !5)
!17 = !DILocation(line: 10, column: 1, scope: !5)
!18 = !DILocation(line: 11, column: 12, scope: !5)
!19 = !DILocation(line: 11, column: 1, scope: !5)
!20 = !DILocation(line: 12, column: 12, scope: !5)
!21 = !DILocation(line: 12, column: 1, scope: !5)
!22 = !DILocation(line: 0, column: 0, scope: !7)
