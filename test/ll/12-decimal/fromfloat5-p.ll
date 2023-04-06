@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {ptr addrspace(1), i64} @_bal_decimal_from_float(double) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %f = alloca double
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %15, label %8
8:
  store double 0x7FF0000000000000, ptr %f
  %9 = load double, ptr %f
  %10 = call {ptr addrspace(1), i64} @_bal_decimal_from_float(double %9), !dbg !9
  %11 = extractvalue {ptr addrspace(1), i64} %10, 1
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %29, label %17
13:
  %14 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !12
  unreachable
15:
  %16 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %16), !dbg !8
  unreachable
17:
  %18 = extractvalue {ptr addrspace(1), i64} %10, 0
  store ptr addrspace(1) %18, ptr %1
  %19 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 3
  %21 = load ptr addrspace(1), ptr addrspace(1) %20, align 8
  %22 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %23 = load ptr addrspace(1), ptr %1
  %24 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %22, i64 0, i64 0
  store ptr addrspace(1) %23, ptr addrspace(1) %24
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 1
  store i64 1, ptr addrspace(1) %25
  %26 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %27 = getelementptr i8, ptr addrspace(1) %26, i64 864691128455135236
  store ptr addrspace(1) %27, ptr %2
  %28 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %28), !dbg !11
  store ptr addrspace(1) null, ptr %3
  ret void
29:
  %30 = or i64 %11, 1024
  %31 = call ptr addrspace(1) @_bal_panic_construct(i64 %30), !dbg !7
  store ptr addrspace(1) %31, ptr %4
  br label %13
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/fromfloat5-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 15, scope: !5)
!10 = !DILocation(line: 4, column: 15, scope: !5)
!11 = !DILocation(line: 4, column: 4, scope: !5)
!12 = !DILocation(line: 5, column: 0, scope: !5)
