@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i64 @_Bb0m4lang5arraylength(ptr addrspace(1))
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %24, label %8
8:
  %9 = call ptr addrspace(1) @_B04rootpairOfNothings(), !dbg !11
  store ptr addrspace(1) %9, ptr %1
  %10 = load ptr addrspace(1), ptr %1
  %11 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %10), !dbg !12
  %12 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %11), !dbg !13
  store i64 %12, ptr %2
  %13 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %14 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 3
  %15 = load ptr addrspace(1), ptr addrspace(1) %14, align 8
  %16 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %17 = load i64, ptr %2
  %18 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %17), !dbg !15
  %19 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %16, i64 0, i64 0
  store ptr addrspace(1) %18, ptr addrspace(1) %19
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 1
  store i64 1, ptr addrspace(1) %20
  %21 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %22 = getelementptr i8, ptr addrspace(1) %21, i64 864691128455135236
  store ptr addrspace(1) %22, ptr %3
  %23 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %23), !dbg !16
  store ptr addrspace(1) null, ptr %4
  ret void
24:
  %25 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %25), !dbg !10
  unreachable
}
define ptr addrspace(1) @_B04rootpairOfNothings() !dbg !7 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %16, label %5
5:
  %6 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !19
  %7 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %6, i64 0, i32 3
  %8 = load ptr addrspace(1), ptr addrspace(1) %7, align 8
  %9 = bitcast ptr addrspace(1) %8 to ptr addrspace(1)
  %10 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %9, i64 0, i64 0
  store ptr addrspace(1) null, ptr addrspace(1) %10
  %11 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %9, i64 0, i64 1
  store ptr addrspace(1) null, ptr addrspace(1) %11
  %12 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %6, i64 0, i32 1
  store i64 2, ptr addrspace(1) %12
  %13 = bitcast ptr addrspace(1) %6 to ptr addrspace(1)
  %14 = getelementptr i8, ptr addrspace(1) %13, i64 864691128455135236
  store ptr addrspace(1) %14, ptr %1
  %15 = load ptr addrspace(1), ptr %1
  ret ptr addrspace(1) %15
16:
  %17 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !17
  call void @_bal_panic(ptr addrspace(1) %17), !dbg !18
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-nil/array1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"pairOfNothings", linkageName:"_B04rootpairOfNothings", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 16, scope: !5)
!11 = !DILocation(line: 6, column: 15, scope: !5)
!12 = !DILocation(line: 6, column: 32, scope: !5)
!13 = !DILocation(line: 6, column: 32, scope: !5)
!14 = !DILocation(line: 6, column: 15, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 4, scope: !5)
!17 = !DILocation(line: 0, column: 0, scope: !7)
!18 = !DILocation(line: 9, column: 16, scope: !7)
!19 = !DILocation(line: 10, column: 11, scope: !7)
