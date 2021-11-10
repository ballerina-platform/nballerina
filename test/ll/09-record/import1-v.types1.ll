@_bal_stack_guard = external global i8*
@_Bi0m4root6types10 = external constant {i32, i32}
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"floatField\00\00"}, align 8
@.str1 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"intField\00\00\00\00"}, align 8
@_Bt0m4root6types11 = external constant {i32, i32, [0 x i8*]}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32, i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i1 @_bal_type_contains({i32, i32, [0 x i8*]}*, i8 addrspace(1)*) readonly
define i8 addrspace(1)* @_B0m4root6types1create(i64 %0, double %1) !dbg !5 {
  %i = alloca i64
  %f = alloca double
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  store i64 %0, i64* %i
  store double %1, double* %f
  %8 = call i8 addrspace(1)* @_bal_mapping_construct({i32, i32}* @_Bi0m4root6types10, i64 2)
  %9 = load double, double* %f
  %10 = call i8 addrspace(1)* @_bal_float_to_tagged(double %9)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %8, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* %10)
  %11 = load i64, i64* %i
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %11)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %8, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* %12)
  store i8 addrspace(1)* %8, i8 addrspace(1)** %3
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  ret i8 addrspace(1)* %13
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
define i1 @_B0m4root6types1test(i8 addrspace(1)* %0) !dbg !7 {
  %v = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %8 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt0m4root6types11, i8 addrspace(1)* %7)
  store i1 %8, i1* %2
  %9 = load i1, i1* %2
  ret i1 %9
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564), !dbg !10
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-record/import1-v.modules/types1/types.bal", directory:"../../../compiler/testSuite/09-record/import1-v.modules/types1")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"create", linkageName:"_B0m4root6types1create", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"test", linkageName:"_B0m4root6types1test", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 0, column: 0, scope: !7)
