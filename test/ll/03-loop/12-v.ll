@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
  %1 = alloca i1
  %2 = alloca i1
  %i.1 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %25, label %7
7:
  store i64 6, i64* %i
  br label %8
8:
  %9 = load i64, i64* %i
  %10 = icmp slt i64 %9, 10
  store i1 %10, i1* %1
  %11 = load i1, i1* %1
  br i1 %11, label %13, label %12
12:
  ret void
13:
  %14 = load i64, i64* %i
  %15 = icmp eq i64 %14, 8
  store i1 %15, i1* %2
  %16 = load i1, i1* %2
  br i1 %16, label %17, label %22
17:
  %18 = load i64, i64* %i
  store i64 %18, i64* %i.1
  br label %19
19:
  %20 = load i64, i64* %i
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %i
  br label %8
22:
  %23 = load i64, i64* %i, !dbg !8
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %23), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  br label %19
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %26)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-loop/12-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 9, column: 8, scope: !5)
