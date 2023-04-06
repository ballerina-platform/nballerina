@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %b = alloca i1
  %1 = alloca ptr addrspace(1)
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %7, label %5
5:
  store i1 0, ptr %b
  %6 = load i1, ptr %b
  call void @_B04rootfunc(i1 %6), !dbg !11
  store ptr addrspace(1) null, ptr %1
  ret void
7:
  %8 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %8), !dbg !10
  unreachable
}
define void @_B04rootfunc(i1 %0) !dbg !7 {
  %b = alloca i1
  %x = alloca ptr addrspace(1)
  %x.1 = alloca ptr addrspace(1)
  %x.2 = alloca double
  %f = alloca double
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %40, label %7
7:
  store i1 %0, ptr %b
  %8 = call ptr addrspace(1) @_bal_float_to_tagged(double 8.0), !dbg !14
  store ptr addrspace(1) %8, ptr %x
  %9 = load ptr addrspace(1), ptr %x
  %10 = addrspacecast ptr addrspace(1) %9 to ptr
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 2233785415175766016
  %13 = lshr i64 %12, 56
  %14 = shl i64 1, %13
  %15 = and i64 %14, 6
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19
17:
  %18 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %18, ptr %x.1
  ret void
19:
  %20 = load ptr addrspace(1), ptr %x
  %21 = call double @_bal_tagged_to_float(ptr addrspace(1) %20), !dbg !15
  store double %21, ptr %x.2
  %22 = load i1, ptr %b
  br i1 %22, label %23, label %27
23:
  %24 = and i64 72057594037927935, 40
  %25 = or i64 2449958197289549824, %24
  %26 = getelementptr i8, ptr addrspace(1) null, i64 %25
  store ptr addrspace(1) %26, ptr %x
  ret void
27:
  %28 = load double, ptr %x.2
  store double %28, ptr %f
  %29 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 3
  %31 = load ptr addrspace(1), ptr addrspace(1) %30, align 8
  %32 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %33 = load double, ptr %f
  %34 = call ptr addrspace(1) @_bal_float_to_tagged(double %33), !dbg !17
  %35 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %32, i64 0, i64 0
  store ptr addrspace(1) %34, ptr addrspace(1) %35
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 1
  store i64 1, ptr addrspace(1) %36
  %37 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %38 = getelementptr i8, ptr addrspace(1) %37, i64 864691128455135236
  store ptr addrspace(1) %38, ptr %2
  %39 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %39), !dbg !18
  store ptr addrspace(1) null, ptr %3
  ret void
40:
  %41 = call ptr addrspace(1) @_bal_panic_construct(i64 1796), !dbg !12
  call void @_bal_panic(ptr addrspace(1) %41), !dbg !13
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if20-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"func", linkageName:"_B04rootfunc", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 2, column: 16, scope: !5)
!11 = !DILocation(line: 4, column: 4, scope: !5)
!12 = !DILocation(line: 0, column: 0, scope: !7)
!13 = !DILocation(line: 7, column: 16, scope: !7)
!14 = !DILocation(line: 8, column: 24, scope: !7)
!15 = !DILocation(line: 9, column: 9, scope: !7)
!16 = !DILocation(line: 17, column: 15, scope: !7)
!17 = !DILocation(line: 17, column: 15, scope: !7)
!18 = !DILocation(line: 17, column: 4, scope: !7)
