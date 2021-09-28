@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare i1 @_bal_mapping_has_type(i8 addrspace(1)*, i64) readonly
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %19, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_mapping_construct(i64 8386559, i64 1)
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %10, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879881007478), i8 addrspace(1)* %11)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %12, i8 addrspace(1)** %x
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %14 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %13, i64 -5)
  store i8 addrspace(1)* %14, i8 addrspace(1)** %y
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %16 = call i1 @_bal_mapping_has_type(i8 addrspace(1)* %15, i64 8386559)
  br i1 %16, label %21, label %25
17:
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
21:
  store i8 addrspace(1)* %15, i8 addrspace(1)** %2
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %23 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %22, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879881007478))
  store i8 addrspace(1)* %23, i8 addrspace(1)** %3
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !8
  ret void
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 1795), !dbg !7
  store i8 addrspace(1)* %26, i8 addrspace(1)** %5
  br label %17
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-typecast/2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 4, scope: !5)
