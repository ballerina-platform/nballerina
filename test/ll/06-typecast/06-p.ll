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
  %f = alloca double
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca double
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %21, label %10
10:
  %11 = call ptr addrspace(1) @_B_g(), !dbg !11
  store ptr addrspace(1) %11, ptr %1
  %12 = load ptr addrspace(1), ptr %1
  %13 = call ptr addrspace(1) @_bal_convert_to_float(ptr addrspace(1) %12), !dbg !12
  store ptr addrspace(1) %13, ptr %2
  %14 = load ptr addrspace(1), ptr %2
  %15 = addrspacecast ptr addrspace(1) %14 to ptr
  %16 = ptrtoint ptr %15 to i64
  %17 = and i64 %16, 2233785415175766016
  %18 = icmp eq i64 %17, 216172782113783808
  br i1 %18, label %23, label %37
19:
  %20 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !17
  unreachable
21:
  %22 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %22), !dbg !10
  unreachable
23:
  %24 = call double @_bal_tagged_to_float(ptr addrspace(1) %14), !dbg !13
  store double %24, ptr %3
  %25 = load double, ptr %3
  store double %25, ptr %f
  %26 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 3
  %28 = load ptr addrspace(1), ptr addrspace(1) %27, align 8
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = load double, ptr %f
  %31 = call ptr addrspace(1) @_bal_float_to_tagged(double %30), !dbg !15
  %32 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %29, i64 0, i64 0
  store ptr addrspace(1) %31, ptr addrspace(1) %32
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  store i64 1, ptr addrspace(1) %33
  %34 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 864691128455135236
  store ptr addrspace(1) %35, ptr %4
  %36 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %36), !dbg !16
  store ptr addrspace(1) null, ptr %5
  ret void
37:
  %38 = call ptr addrspace(1) @_bal_panic_construct(i64 1283), !dbg !9
  store ptr addrspace(1) %38, ptr %6
  br label %19
}
define internal ptr addrspace(1) @_B_g() !dbg !7 {
  %1 = alloca i8
  %2 = load ptr, ptr @_bal_stack_guard
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %8, label %4
4:
  %5 = zext i1 1 to i64
  %6 = or i64 %5, 72057594037927936
  %7 = getelementptr i8, ptr addrspace(1) null, i64 %6
  ret ptr addrspace(1) %7
8:
  %9 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !18
  call void @_bal_panic(ptr addrspace(1) %9), !dbg !19
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-typecast/06-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"g", linkageName:"_B_g", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 21, scope: !5)
!12 = !DILocation(line: 5, column: 14, scope: !5)
!13 = !DILocation(line: 5, column: 14, scope: !5)
!14 = !DILocation(line: 6, column: 15, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 4, scope: !5)
!17 = !DILocation(line: 7, column: 0, scope: !5)
!18 = !DILocation(line: 0, column: 0, scope: !7)
!19 = !DILocation(line: 9, column: 9, scope: !7)
