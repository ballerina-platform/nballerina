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
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %15, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %10), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %11), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9223372036854775807), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %12), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !10
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -1), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %13), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -9223372036854775808), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %14), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !12
  ret void
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/const2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 2, scope: !5)
!9 = !DILocation(line: 6, column: 2, scope: !5)
!10 = !DILocation(line: 7, column: 2, scope: !5)
!11 = !DILocation(line: 8, column: 2, scope: !5)
!12 = !DILocation(line: 9, column: 2, scope: !5)
