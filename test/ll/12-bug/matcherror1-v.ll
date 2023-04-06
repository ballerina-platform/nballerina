@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.str0 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 16, i16 16, [20 x i8] c"should not match\00\00\00\00"}, align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_error_construct(ptr addrspace(1), i64)
define internal void @_B_foo(ptr addrspace(1) %0) !dbg !5 {
  %v = alloca ptr addrspace(1)
  %v.1 = alloca ptr addrspace(1)
  %v.2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %28, label %7
7:
  store ptr addrspace(1) %0, ptr %v
  %8 = load ptr addrspace(1), ptr %v
  %9 = addrspacecast ptr addrspace(1) %8 to ptr
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 2233785415175766016
  %12 = lshr i64 %11, 56
  %13 = shl i64 1, %12
  %14 = and i64 %13, 131007
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %clause.0, label %gard.0
clause.0:
  %16 = load ptr addrspace(1), ptr %v
  store ptr addrspace(1) %16, ptr %v.1
  %17 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 3
  %19 = load ptr addrspace(1), ptr addrspace(1) %18, align 8
  %20 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %21 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str0 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %21
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 1
  store i64 1, ptr addrspace(1) %22
  %23 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %24 = getelementptr i8, ptr addrspace(1) %23, i64 864691128455135236
  store ptr addrspace(1) %24, ptr %2
  %25 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %25), !dbg !12
  store ptr addrspace(1) null, ptr %3
  br label %27
gard.0:
  %26 = load ptr addrspace(1), ptr %v
  store ptr addrspace(1) %26, ptr %v.2
  br label %27
27:
  ret void
28:
  %29 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %29), !dbg !10
  unreachable
}
define void @_B04rootmain() !dbg !7 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %20, label %8
8:
  %9 = call ptr addrspace(1) @_bal_error_construct(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441223016), i64 12), !dbg !13
  store ptr addrspace(1) %9, ptr %1
  %10 = load ptr addrspace(1), ptr %1
  call void @_B_foo(ptr addrspace(1) %10), !dbg !15
  store ptr addrspace(1) null, ptr %2
  %11 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %12 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %11, i64 0, i32 3
  %13 = load ptr addrspace(1), ptr addrspace(1) %12, align 8
  %14 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %15 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %14, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570848030564), ptr addrspace(1) %15
  %16 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %11, i64 0, i32 1
  store i64 1, ptr addrspace(1) %16
  %17 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %18 = getelementptr i8, ptr addrspace(1) %17, i64 864691128455135236
  store ptr addrspace(1) %18, ptr %3
  %19 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %19), !dbg !17
  store ptr addrspace(1) null, ptr %4
  ret void
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 2820), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %21), !dbg !14
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-bug/matcherror1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 9, scope: !5)
!11 = !DILocation(line: 6, column: 23, scope: !5)
!12 = !DILocation(line: 6, column: 12, scope: !5)
!13 = !DILocation(line: 0, column: 0, scope: !7)
!14 = !DILocation(line: 11, column: 16, scope: !7)
!15 = !DILocation(line: 12, column: 4, scope: !7)
!16 = !DILocation(line: 13, column: 15, scope: !7)
!17 = !DILocation(line: 13, column: 4, scope: !7)
