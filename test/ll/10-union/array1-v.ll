@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bt04root1 = external constant {i32, i32, [0 x ptr]}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %v2 = alloca ptr addrspace(1)
  %v2.1 = alloca ptr addrspace(1)
  %v2.2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %v2.3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %36, label %7
7:
  %8 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !9
  %9 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %8, i64 0, i32 3
  %10 = load ptr addrspace(1), ptr addrspace(1) %9, align 8
  %11 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %12 = getelementptr inbounds [0 x i64], ptr addrspace(1) %11, i64 0, i64 0
  store i64 1, ptr addrspace(1) %12
  %13 = getelementptr inbounds [0 x i64], ptr addrspace(1) %11, i64 0, i64 1
  store i64 2, ptr addrspace(1) %13
  %14 = getelementptr inbounds [0 x i64], ptr addrspace(1) %11, i64 0, i64 2
  store i64 3, ptr addrspace(1) %14
  %15 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %8, i64 0, i32 1
  store i64 3, ptr addrspace(1) %15
  %16 = bitcast ptr addrspace(1) %8 to ptr addrspace(1)
  %17 = getelementptr i8, ptr addrspace(1) %16, i64 864691128455135236
  store ptr addrspace(1) %17, ptr %1
  %18 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %18, ptr %v1
  %19 = load ptr addrspace(1), ptr %v1
  %20 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %19), !dbg !10
  store ptr addrspace(1) %20, ptr %v2
  %21 = load ptr addrspace(1), ptr %v2
  %22 = call i1 @_bal_type_contains(ptr @_Bt04root1, ptr addrspace(1) %21), !dbg !11
  br i1 %22, label %23, label %34
23:
  %24 = load ptr addrspace(1), ptr %v2
  store ptr addrspace(1) %24, ptr %v2.1
  %25 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !12
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 3
  %27 = load ptr addrspace(1), ptr addrspace(1) %26, align 8
  %28 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %29 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %28, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573432046969), ptr addrspace(1) %29
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 1
  store i64 1, ptr addrspace(1) %30
  %31 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %32 = getelementptr i8, ptr addrspace(1) %31, i64 864691128455135236
  store ptr addrspace(1) %32, ptr %2
  %33 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %33), !dbg !13
  store ptr addrspace(1) null, ptr %3
  br label %34
34:
  %35 = load ptr addrspace(1), ptr %v2
  store ptr addrspace(1) %35, ptr %v2.3
  ret void
36:
  %37 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %37), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/10-union/array1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 15, scope: !5)
!10 = !DILocation(line: 4, column: 13, scope: !5)
!11 = !DILocation(line: 5, column: 10, scope: !5)
!12 = !DILocation(line: 6, column: 19, scope: !5)
!13 = !DILocation(line: 6, column: 8, scope: !5)
