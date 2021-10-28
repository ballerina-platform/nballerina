@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
  %j = alloca i64
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %25, label %13
13:
  store i64 7, i64* %i
  store i64 1, i64* %j
  %14 = load i64, i64* %i
  %15 = load i64, i64* %j
  %16 = and i64 63, %15
  %17 = ashr i64 %14, %16
  store i64 %17, i64* %1
  %18 = load i64, i64* %1, !dbg !8
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %18), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %19), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %20 = load i64, i64* %j
  %21 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %20, i64 1)
  %22 = extractvalue {i64, i1} %21, 1
  br i1 %22, label %42, label %27
23:
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_bal_panic(i8 addrspace(1)* %24)
  unreachable
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %26)
  unreachable
27:
  %28 = extractvalue {i64, i1} %21, 0
  store i64 %28, i64* %3
  %29 = load i64, i64* %i
  %30 = load i64, i64* %3
  %31 = and i64 63, %30
  %32 = ashr i64 %29, %31
  store i64 %32, i64* %4
  %33 = load i64, i64* %4, !dbg !9
  %34 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %33), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %34), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  store i64 65, i64* %j
  %35 = load i64, i64* %i
  %36 = load i64, i64* %j
  %37 = and i64 63, %36
  %38 = ashr i64 %35, %37
  store i64 %38, i64* %6
  %39 = load i64, i64* %6, !dbg !10
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %39), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !10
  %41 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -1), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %41), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  ret void
42:
  %43 = call i8 addrspace(1)* @_bal_panic_construct(i64 1793), !dbg !7
  store i8 addrspace(1)* %43, i8 addrspace(1)** %9
  br label %23
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-bitwise/shift2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
!9 = !DILocation(line: 7, column: 4, scope: !5)
!10 = !DILocation(line: 12, column: 4, scope: !5)
!11 = !DILocation(line: 15, column: 4, scope: !5)
