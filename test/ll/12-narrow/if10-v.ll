@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
  %1 = alloca i8 addrspace(1)*
  %_ = alloca i64
  %2 = alloca i8 addrspace(1)*
  %_.1 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %16, label %7
7:
  store i64 8, i64* %i
  %8 = load i64, i64* %i, !dbg !8
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %8), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %9), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  %10 = load i64, i64* %i
  store i64 %10, i64* %_
  %11 = load i64, i64* %i, !dbg !9
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %11), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %12), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  %13 = load i64, i64* %i
  store i64 %13, i64* %_.1
  %14 = load i64, i64* %i, !dbg !10
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %14), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %15), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !10
  ret void
16:
  %17 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %17)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if10-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 8, scope: !5)
!9 = !DILocation(line: 10, column: 8, scope: !5)
!10 = !DILocation(line: 16, column: 4, scope: !5)
