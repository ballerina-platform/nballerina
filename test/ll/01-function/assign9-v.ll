@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %_ = alloca i8 addrspace(1)*
  %_.1 = alloca i8 addrspace(1)*
  %_.2 = alloca i8 addrspace(1)*
  %_.3 = alloca i8 addrspace(1)*
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %9, label %4
4:
  %5 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 100)
  store i8 addrspace(1)* %5, i8 addrspace(1)** %_
  %6 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 111)
  store i8 addrspace(1)* %6, i8 addrspace(1)** %_.1
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 43)
  store i8 addrspace(1)* %7, i8 addrspace(1)** %_.2
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 87)
  store i8 addrspace(1)* %8, i8 addrspace(1)** %_.3
  ret void
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-function/assign9-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
