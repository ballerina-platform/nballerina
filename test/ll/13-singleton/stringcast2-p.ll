@_bal_stack_guard = external global ptr
@_Bt04root0 = external constant {i32, i32, [0 x ptr]}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %s = alloca ptr addrspace(1)
  %c = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %13, label %8
8:
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570998436455), ptr %s
  %9 = load ptr addrspace(1), ptr %s
  %10 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %9), !dbg !9
  br i1 %10, label %15, label %27
11:
  %12 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %12), !dbg !12
  unreachable
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !8
  unreachable
15:
  store ptr addrspace(1) %9, ptr %1
  %16 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %16, ptr %c
  %17 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 3
  %19 = load ptr addrspace(1), ptr addrspace(1) %18, align 8
  %20 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %21 = load ptr addrspace(1), ptr %c
  %22 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 0
  store ptr addrspace(1) %21, ptr addrspace(1) %22
  %23 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 1
  store i64 1, ptr addrspace(1) %23
  %24 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %25 = getelementptr i8, ptr addrspace(1) %24, i64 864691128455135236
  store ptr addrspace(1) %25, ptr %2
  %26 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %26), !dbg !11
  store ptr addrspace(1) null, ptr %3
  ret void
27:
  %28 = call ptr addrspace(1) @_bal_panic_construct(i64 2563), !dbg !7
  store ptr addrspace(1) %28, ptr %4
  br label %11
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-singleton/stringcast2-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 16, scope: !5)
!9 = !DILocation(line: 10, column: 14, scope: !5)
!10 = !DILocation(line: 11, column: 15, scope: !5)
!11 = !DILocation(line: 11, column: 4, scope: !5)
!12 = !DILocation(line: 12, column: 0, scope: !5)
