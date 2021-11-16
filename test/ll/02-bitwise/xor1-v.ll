@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
  %j = alloca i64
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %33, label %12
12:
  store i64 5, i64* %i
  store i64 9, i64* %j
  %13 = load i64, i64* %i
  %14 = load i64, i64* %j
  %15 = xor i64 %13, %14
  store i64 %15, i64* %1
  %16 = load i64, i64* %1, !dbg !8
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %16), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  store i64 9223372036854775807, i64* %i
  store i64 9223372036854775807, i64* %j
  %18 = load i64, i64* %i
  %19 = load i64, i64* %j
  %20 = xor i64 %18, %19
  store i64 %20, i64* %3
  %21 = load i64, i64* %3, !dbg !9
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %21), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  store i64 -1, i64* %i
  store i64 -1, i64* %j
  %23 = load i64, i64* %i
  %24 = load i64, i64* %j
  %25 = xor i64 %23, %24
  store i64 %25, i64* %5
  %26 = load i64, i64* %5, !dbg !10
  %27 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %26), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %27), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  store i64 9223372036854775807, i64* %i
  store i64 -1, i64* %j
  %28 = load i64, i64* %i
  %29 = load i64, i64* %j
  %30 = xor i64 %28, %29
  store i64 %30, i64* %7
  %31 = load i64, i64* %7, !dbg !11
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %31), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %32), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  ret void
33:
  %34 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/02-bitwise/xor1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
!9 = !DILocation(line: 10, column: 4, scope: !5)
!10 = !DILocation(line: 14, column: 4, scope: !5)
!11 = !DILocation(line: 18, column: 4, scope: !5)
