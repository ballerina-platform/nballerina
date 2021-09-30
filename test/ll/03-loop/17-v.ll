@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %19, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %8), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  store i64 0, i64* %i
  br label %9
9:
  %10 = load i64, i64* %i
  %11 = icmp slt i64 %10, 1000
  store i1 %11, i1* %2
  %12 = load i1, i1* %2
  br i1 %12, label %15, label %13
13:
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %14), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !9
  ret void
15:
  br label %16
16:
  %17 = load i64, i64* %i
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %i
  br label %9
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-loop/17-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 4, scope: !5)
!9 = !DILocation(line: 9, column: 4, scope: !5)
