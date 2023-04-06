@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca i64
  %x.1 = alloca i64
  %x.2 = alloca i64
  %y = alloca i64
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %x.3 = alloca i64
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %28, label %6
6:
  store i64 250, ptr %x
  %7 = load i64, ptr %x
  %8 = icmp sle i64 250, %7
  %9 = icmp sge i64 250, %7
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %26
11:
  %12 = load i64, ptr %x
  store i64 %12, ptr %x.1
  store i64 125, ptr %y
  %13 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %14 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 3
  %15 = load ptr addrspace(1), ptr addrspace(1) %14, align 8
  %16 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %17 = load i64, ptr %y
  %18 = and i64 72057594037927935, %17
  %19 = or i64 2449958197289549824, %18
  %20 = getelementptr i8, ptr addrspace(1) null, i64 %19
  %21 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %16, i64 0, i64 0
  store ptr addrspace(1) %20, ptr addrspace(1) %21
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 1
  store i64 1, ptr addrspace(1) %22
  %23 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %24 = getelementptr i8, ptr addrspace(1) %23, i64 864691128455135236
  store ptr addrspace(1) %24, ptr %1
  %25 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %25), !dbg !10
  store ptr addrspace(1) null, ptr %2
  br label %26
26:
  %27 = load i64, ptr %x
  store i64 %27, ptr %x.3
  ret void
28:
  %29 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %29), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-bug/shiftresulttype6-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 8, column: 19, scope: !5)
!10 = !DILocation(line: 8, column: 8, scope: !5)
