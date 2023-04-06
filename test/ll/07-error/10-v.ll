@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_error_construct(ptr addrspace(1), i64)
declare ptr addrspace(1) @_Bb0m4lang5errormessage(ptr addrspace(1))
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %err = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %s = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %24, label %8
8:
  %9 = call ptr addrspace(1) @_bal_error_construct(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187952490046824), i64 5), !dbg !7
  store ptr addrspace(1) %9, ptr %1
  %10 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %10, ptr %err
  %11 = load ptr addrspace(1), ptr %err
  %12 = call ptr addrspace(1) @_Bb0m4lang5errormessage(ptr addrspace(1) %11), !dbg !9
  store ptr addrspace(1) %12, ptr %2
  %13 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %13, ptr %s
  %14 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %15 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %14, i64 0, i32 3
  %16 = load ptr addrspace(1), ptr addrspace(1) %15, align 8
  %17 = bitcast ptr addrspace(1) %16 to ptr addrspace(1)
  %18 = load ptr addrspace(1), ptr %s
  %19 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %17, i64 0, i64 0
  store ptr addrspace(1) %18, ptr addrspace(1) %19
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %14, i64 0, i32 1
  store i64 1, ptr addrspace(1) %20
  %21 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %22 = getelementptr i8, ptr addrspace(1) %21, i64 864691128455135236
  store ptr addrspace(1) %22, ptr %3
  %23 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %23), !dbg !11
  store ptr addrspace(1) null, ptr %4
  ret void
24:
  %25 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %25), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-error/10-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 19, scope: !5)
!10 = !DILocation(line: 7, column: 15, scope: !5)
!11 = !DILocation(line: 7, column: 4, scope: !5)
