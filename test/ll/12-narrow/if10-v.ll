@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %_ = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %_.1 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %46, label %10
10:
  store i64 8, ptr %i
  %11 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %12 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %11, i64 0, i32 3
  %13 = load ptr addrspace(1), ptr addrspace(1) %12, align 8
  %14 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %15 = load i64, ptr %i
  %16 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %15), !dbg !10
  %17 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %14, i64 0, i64 0
  store ptr addrspace(1) %16, ptr addrspace(1) %17
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %11, i64 0, i32 1
  store i64 1, ptr addrspace(1) %18
  %19 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %20 = getelementptr i8, ptr addrspace(1) %19, i64 864691128455135236
  store ptr addrspace(1) %20, ptr %1
  %21 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %21), !dbg !11
  store ptr addrspace(1) null, ptr %2
  %22 = load i64, ptr %i
  store i64 %22, ptr %_
  %23 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 3
  %25 = load ptr addrspace(1), ptr addrspace(1) %24, align 8
  %26 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %27 = load i64, ptr %i
  %28 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %27), !dbg !13
  %29 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %26, i64 0, i64 0
  store ptr addrspace(1) %28, ptr addrspace(1) %29
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 1
  store i64 1, ptr addrspace(1) %30
  %31 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %32 = getelementptr i8, ptr addrspace(1) %31, i64 864691128455135236
  store ptr addrspace(1) %32, ptr %3
  %33 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %33), !dbg !14
  store ptr addrspace(1) null, ptr %4
  %34 = load i64, ptr %i
  store i64 %34, ptr %_.1
  %35 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 3
  %37 = load ptr addrspace(1), ptr addrspace(1) %36, align 8
  %38 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %39 = load i64, ptr %i
  %40 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %39), !dbg !16
  %41 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %38, i64 0, i64 0
  store ptr addrspace(1) %40, ptr addrspace(1) %41
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 1
  store i64 1, ptr addrspace(1) %42
  %43 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %44 = getelementptr i8, ptr addrspace(1) %43, i64 864691128455135236
  store ptr addrspace(1) %44, ptr %5
  %45 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %45), !dbg !17
  store ptr addrspace(1) null, ptr %6
  ret void
46:
  %47 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %47), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if10-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 19, scope: !5)
!10 = !DILocation(line: 5, column: 19, scope: !5)
!11 = !DILocation(line: 5, column: 8, scope: !5)
!12 = !DILocation(line: 10, column: 19, scope: !5)
!13 = !DILocation(line: 10, column: 19, scope: !5)
!14 = !DILocation(line: 10, column: 8, scope: !5)
!15 = !DILocation(line: 16, column: 15, scope: !5)
!16 = !DILocation(line: 16, column: 15, scope: !5)
!17 = !DILocation(line: 16, column: 4, scope: !5)
