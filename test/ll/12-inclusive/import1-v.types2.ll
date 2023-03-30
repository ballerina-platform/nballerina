@_bal_stack_guard = external global ptr
@_Bi0m4root6types20 = external constant {i32}
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"floatField\00\00"}, align 8
@.str1 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"intField\00\00\00\00"}, align 8
@_Bt0m4root6types20 = external constant {i32, i32, [0 x ptr]}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
define ptr addrspace(1) @_B0m4root6types2create(i64 %0, double %1) !dbg !5 {
  %i = alloca i64
  %f = alloca double
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %14, label %7
7:
  store i64 %0, ptr %i
  store double %1, ptr %f
  %8 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi0m4root6types20, i64 2), !dbg !11
  %9 = load double, ptr %f
  %10 = call ptr addrspace(1) @_bal_float_to_tagged(double %9), !dbg !12
  call void @_bal_mapping_init_member(ptr addrspace(1) %8, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str0 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %10), !dbg !13
  %11 = load i64, ptr %i
  %12 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %11), !dbg !14
  call void @_bal_mapping_init_member(ptr addrspace(1) %8, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str1 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %12), !dbg !15
  store ptr addrspace(1) %8, ptr %3
  %13 = load ptr addrspace(1), ptr %3
  ret ptr addrspace(1) %13
14:
  %15 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %15), !dbg !10
  unreachable
}
define i1 @_B0m4root6types2test(ptr addrspace(1) %0) !dbg !7 {
  %v = alloca ptr addrspace(1)
  %2 = alloca i1
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %10, label %6
6:
  store ptr addrspace(1) %0, ptr %v
  %7 = load ptr addrspace(1), ptr %v
  %8 = call i1 @_bal_type_contains(ptr @_Bt0m4root6types20, ptr addrspace(1) %7), !dbg !18
  store i1 %8, ptr %2
  %9 = load i1, ptr %2
  ret i1 %9
10:
  %11 = call ptr addrspace(1) @_bal_panic_construct(i64 2564), !dbg !16
  call void @_bal_panic(ptr addrspace(1) %11), !dbg !17
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-inclusive/import1-v.modules/types2/types.bal", directory:"../../../compiler/testSuite/12-inclusive/import1-v.modules/types2")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"create", linkageName:"_B0m4root6types2create", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"test", linkageName:"_B0m4root6types2test", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 6, column: 16, scope: !5)
!11 = !DILocation(line: 7, column: 11, scope: !5)
!12 = !DILocation(line: 7, column: 11, scope: !5)
!13 = !DILocation(line: 7, column: 11, scope: !5)
!14 = !DILocation(line: 7, column: 11, scope: !5)
!15 = !DILocation(line: 7, column: 11, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
!17 = !DILocation(line: 10, column: 16, scope: !7)
!18 = !DILocation(line: 11, column: 13, scope: !7)
