@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bt04root1 = external constant {i32, i32, [0 x ptr]}
@_Bi04root2 = external constant {i32}
@_Be04root3 = external constant i32
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1), ptr) readonly
define void @_B04rootmain() !dbg !5 {
  %s = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %nOrS = alloca ptr addrspace(1)
  %nOrS.1 = alloca ptr addrspace(1)
  %nOrS.2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %_ = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %nOrS.3 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %49, label %9
9:
  %10 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %11 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %10, i64 0, i32 3
  %12 = load ptr addrspace(1), ptr addrspace(1) %11, align 8
  %13 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %14 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %13, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431985267), ptr addrspace(1) %14
  %15 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %10, i64 0, i32 1
  store i64 1, ptr addrspace(1) %15
  %16 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %17 = getelementptr i8, ptr addrspace(1) %16, i64 864691128455135236
  store ptr addrspace(1) %17, ptr %1
  %18 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %18, ptr %s
  %19 = load ptr addrspace(1), ptr %s
  %20 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %19), !dbg !10
  store ptr addrspace(1) %20, ptr %nOrS
  %21 = load ptr addrspace(1), ptr %nOrS
  %22 = call i1 @_bal_type_contains(ptr @_Bt04root1, ptr addrspace(1) %21), !dbg !11
  br i1 %22, label %23, label %35
23:
  %24 = load ptr addrspace(1), ptr %nOrS
  %25 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %24, ptr @_Be04root3), !dbg !14
  store ptr addrspace(1) %25, ptr %nOrS.1
  %26 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !15
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 3
  %28 = load ptr addrspace(1), ptr addrspace(1) %27, align 8
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %29, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261390), ptr addrspace(1) %30
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  store i64 1, ptr addrspace(1) %31
  %32 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %33 = getelementptr i8, ptr addrspace(1) %32, i64 864691128455135236
  store ptr addrspace(1) %33, ptr %2
  %34 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %34), !dbg !16
  store ptr addrspace(1) null, ptr %3
  br label %47
35:
  %36 = load ptr addrspace(1), ptr %nOrS
  store ptr addrspace(1) %36, ptr %nOrS.2
  %37 = load ptr addrspace(1), ptr %nOrS.2
  store ptr addrspace(1) %37, ptr %_
  %38 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !12
  %39 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 3
  %40 = load ptr addrspace(1), ptr addrspace(1) %39, align 8
  %41 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %42 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %41, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261395), ptr addrspace(1) %42
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 1
  store i64 1, ptr addrspace(1) %43
  %44 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %45 = getelementptr i8, ptr addrspace(1) %44, i64 864691128455135236
  store ptr addrspace(1) %45, ptr %4
  %46 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %46), !dbg !13
  store ptr addrspace(1) null, ptr %5
  br label %47
47:
  %48 = load ptr addrspace(1), ptr %nOrS
  store ptr addrspace(1) %48, ptr %nOrS.3
  ret void
49:
  %50 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %50), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-mutate/listif1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 9, column: 16, scope: !5)
!9 = !DILocation(line: 10, column: 10, scope: !5)
!10 = !DILocation(line: 11, column: 14, scope: !5)
!11 = !DILocation(line: 13, column: 12, scope: !5)
!12 = !DILocation(line: 17, column: 19, scope: !5)
!13 = !DILocation(line: 17, column: 8, scope: !5)
!14 = !DILocation(line: 18, column: 4, scope: !5)
!15 = !DILocation(line: 14, column: 19, scope: !5)
!16 = !DILocation(line: 14, column: 8, scope: !5)
