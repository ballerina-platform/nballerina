@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %i = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %11, label %6
6:
  %7 = call i64 @_B04rootloop(), !dbg !10
  store i64 %7, i64* %1, !dbg !10
  %8 = load i64, i64* %1
  store i64 %8, i64* %i
  %9 = load i64, i64* %i, !dbg !11
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %9), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %10), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  ret void
11:
  %12 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
}
define i64 @_B04rootloop() !dbg !7 {
  %i = alloca i64
  %1 = alloca i1
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %13, label %5
5:
  store i64 5, i64* %i
  br label %6
6:
  %7 = load i64, i64* %i
  %8 = icmp slt i64 %7, 10
  store i1 %8, i1* %1
  %9 = load i1, i1* %1
  br i1 %9, label %11, label %10
10:
  ret i64 -1
11:
  %12 = load i64, i64* %i
  ret i64 %12
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052), !dbg !12
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-loop/08-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"loop", linkageName:"_B04rootloop", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 12, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 0, column: 0, scope: !7)
