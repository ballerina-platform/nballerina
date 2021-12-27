@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define internal i64 @_B_btoi(i1 %0) !dbg !5 {
  %b = alloca i1
  %2 = alloca i1
  %b.1 = alloca i1
  %b.2 = alloca i1
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %12, label %6
6:
  store i1 %0, i1* %b
  %7 = load i1, i1* %b
  %8 = icmp eq i1 %7, 1
  store i1 %8, i1* %2
  %9 = load i1, i1* %2
  br i1 %9, label %clause.0, label %pattern.0
clause.0:
  %10 = load i1, i1* %b
  store i1 %10, i1* %b.1
  ret i64 1
clause.1:
  %11 = load i1, i1* %b
  store i1 %11, i1* %b.2
  ret i64 0
pattern.0:
  br label %clause.1
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
define void @_B04rootmain() !dbg !7 {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  %9 = call i64 @_B_btoi(i1 1), !dbg !11
  store i64 %9, i64* %1, !dbg !11
  %10 = load i64, i64* %1, !dbg !12
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %10), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %11), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !12
  %12 = call i64 @_B_btoi(i1 0), !dbg !13
  store i64 %12, i64* %3, !dbg !13
  %13 = load i64, i64* %3, !dbg !14
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %13), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %14), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !14
  ret void
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564), !dbg !10
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-bug/matchreach1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"btoi", linkageName:"_B_btoi", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 0, column: 0, scope: !7)
!11 = !DILocation(line: 11, column: 15, scope: !7)
!12 = !DILocation(line: 11, column: 4, scope: !7)
!13 = !DILocation(line: 12, column: 15, scope: !7)
!14 = !DILocation(line: 12, column: 4, scope: !7)
