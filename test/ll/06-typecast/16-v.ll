@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_convert_to_float(i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %f = alloca double
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %20, label %9
9:
  %10 = call i8 addrspace(1)* @_B_g(), !dbg !10
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1, !dbg !10
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %12 = call i8 addrspace(1)* @_bal_convert_to_float(i8 addrspace(1)* %11)
  store i8 addrspace(1)* %12, i8 addrspace(1)** %2
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %14 = addrspacecast i8 addrspace(1)* %13 to i8*
  %15 = ptrtoint i8* %14 to i64
  %16 = and i64 %15, 2233785415175766016
  %17 = icmp eq i64 %16, 576460752303423488
  br i1 %17, label %22, label %27
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %19)
  unreachable
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
22:
  %23 = call double @_bal_tagged_to_float(i8 addrspace(1)* %13)
  store double %23, double* %3
  %24 = load double, double* %3
  store double %24, double* %f
  %25 = load double, double* %f, !dbg !11
  %26 = call i8 addrspace(1)* @_bal_float_to_tagged(double %25), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %26), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  ret void
27:
  %28 = call i8 addrspace(1)* @_bal_panic_construct(i64 1283), !dbg !9
  store i8 addrspace(1)* %28, i8 addrspace(1)** %5
  br label %18
}
define internal i8 addrspace(1)* @_B_g() !dbg !7 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %6, label %4
4:
  %5 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 8)
  ret i8 addrspace(1)* %5
6:
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !12
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-typecast/16-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"g", linkageName:"_B_g", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 21, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 0, column: 0, scope: !7)
