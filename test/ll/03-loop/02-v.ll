@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %6, label %5
5:
  call void @_B04rootloop(i64 8), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  ret void
6:
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
define void @_B04rootloop(i64 %0) !dbg !7 {
  %to = alloca i64
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %20, label %7
7:
  store i64 %0, i64* %to
  store i64 2, i64* %i
  br label %8
8:
  %9 = load i64, i64* %i
  %10 = load i64, i64* %to
  %11 = icmp slt i64 %9, %10
  store i1 %11, i1* %2
  %12 = load i1, i1* %2
  br i1 %12, label %14, label %13
13:
  ret void
14:
  %15 = load i64, i64* %i, !dbg !12
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %15), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %16), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !12
  br label %17
17:
  %18 = load i64, i64* %i
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %i
  br label %8
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 1796), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-loop/02-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"loop", linkageName:"_B04rootloop", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 4, scope: !5)
!11 = !DILocation(line: 0, column: 0, scope: !7)
!12 = !DILocation(line: 9, column: 8, scope: !7)
