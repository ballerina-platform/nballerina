@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_convert_to_float(ptr addrspace(1)) readonly
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %f = alloca double
  %1 = alloca double
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca double
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %45, label %10
10:
  %11 = and i64 72057594037927935, 1
  %12 = or i64 2449958197289549824, %11
  %13 = getelementptr i8, ptr addrspace(1) null, i64 %12
  store ptr addrspace(1) %13, ptr %x
  %14 = load ptr addrspace(1), ptr %x
  %15 = call ptr addrspace(1) @_bal_convert_to_float(ptr addrspace(1) %14), !dbg !9
  %16 = call double @_bal_tagged_to_float(ptr addrspace(1) %15), !dbg !10
  store double %16, ptr %1
  %17 = load double, ptr %1
  store double %17, ptr %f
  %18 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %19 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %18, i64 0, i32 3
  %20 = load ptr addrspace(1), ptr addrspace(1) %19, align 8
  %21 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %22 = load double, ptr %f
  %23 = call ptr addrspace(1) @_bal_float_to_tagged(double %22), !dbg !12
  %24 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %21, i64 0, i64 0
  store ptr addrspace(1) %23, ptr addrspace(1) %24
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %18, i64 0, i32 1
  store i64 1, ptr addrspace(1) %25
  %26 = bitcast ptr addrspace(1) %18 to ptr addrspace(1)
  %27 = getelementptr i8, ptr addrspace(1) %26, i64 864691128455135236
  store ptr addrspace(1) %27, ptr %2
  %28 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %28), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %29 = call ptr addrspace(1) @_bal_float_to_tagged(double 2.0), !dbg !14
  store ptr addrspace(1) %29, ptr %x
  %30 = load ptr addrspace(1), ptr %x
  %31 = call ptr addrspace(1) @_bal_convert_to_float(ptr addrspace(1) %30), !dbg !15
  %32 = call double @_bal_tagged_to_float(ptr addrspace(1) %31), !dbg !16
  store double %32, ptr %4
  %33 = load double, ptr %4
  store double %33, ptr %f
  %34 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 3
  %36 = load ptr addrspace(1), ptr addrspace(1) %35, align 8
  %37 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %38 = load double, ptr %f
  %39 = call ptr addrspace(1) @_bal_float_to_tagged(double %38), !dbg !18
  %40 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %37, i64 0, i64 0
  store ptr addrspace(1) %39, ptr addrspace(1) %40
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 1
  store i64 1, ptr addrspace(1) %41
  %42 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %43 = getelementptr i8, ptr addrspace(1) %42, i64 864691128455135236
  store ptr addrspace(1) %43, ptr %5
  %44 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %44), !dbg !19
  store ptr addrspace(1) null, ptr %6
  ret void
45:
  %46 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %46), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-bug/float1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 14, scope: !5)
!10 = !DILocation(line: 4, column: 14, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 6, scope: !5)
!15 = !DILocation(line: 8, column: 8, scope: !5)
!16 = !DILocation(line: 8, column: 8, scope: !5)
!17 = !DILocation(line: 9, column: 15, scope: !5)
!18 = !DILocation(line: 9, column: 15, scope: !5)
!19 = !DILocation(line: 9, column: 4, scope: !5)
