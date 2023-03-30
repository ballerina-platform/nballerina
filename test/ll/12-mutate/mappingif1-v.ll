@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bt04root1 = external constant {i32, i32, [0 x ptr]}
@_Bi04root2 = external constant {i32}
@_Be04root3 = external constant i32
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
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
  br i1 %8, label %42, label %9
9:
  %10 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !9
  call void @_bal_mapping_init_member(ptr addrspace(1) %10, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431985267)), !dbg !10
  store ptr addrspace(1) %10, ptr %1
  %11 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %11, ptr %s
  %12 = load ptr addrspace(1), ptr %s
  %13 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %12), !dbg !11
  store ptr addrspace(1) %13, ptr %nOrS
  %14 = load ptr addrspace(1), ptr %nOrS
  %15 = call i1 @_bal_type_contains(ptr @_Bt04root1, ptr addrspace(1) %14), !dbg !12
  br i1 %15, label %16, label %28
16:
  %17 = load ptr addrspace(1), ptr %nOrS
  %18 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %17, ptr @_Be04root3), !dbg !15
  store ptr addrspace(1) %18, ptr %nOrS.1
  %19 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !16
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 3
  %21 = load ptr addrspace(1), ptr addrspace(1) %20, align 8
  %22 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %23 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %22, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261390), ptr addrspace(1) %23
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 1
  store i64 1, ptr addrspace(1) %24
  %25 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %26 = getelementptr i8, ptr addrspace(1) %25, i64 864691128455135236
  store ptr addrspace(1) %26, ptr %2
  %27 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %27), !dbg !17
  store ptr addrspace(1) null, ptr %3
  br label %40
28:
  %29 = load ptr addrspace(1), ptr %nOrS
  store ptr addrspace(1) %29, ptr %nOrS.2
  %30 = load ptr addrspace(1), ptr %nOrS.2
  store ptr addrspace(1) %30, ptr %_
  %31 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !13
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 3
  %33 = load ptr addrspace(1), ptr addrspace(1) %32, align 8
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261395), ptr addrspace(1) %35
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 1
  store i64 1, ptr addrspace(1) %36
  %37 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %38 = getelementptr i8, ptr addrspace(1) %37, i64 864691128455135236
  store ptr addrspace(1) %38, ptr %4
  %39 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %39), !dbg !14
  store ptr addrspace(1) null, ptr %5
  br label %40
40:
  %41 = load ptr addrspace(1), ptr %nOrS
  store ptr addrspace(1) %41, ptr %nOrS.3
  ret void
42:
  %43 = call ptr addrspace(1) @_bal_panic_construct(i64 3332), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %43), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-mutate/mappingif1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 13, column: 16, scope: !5)
!9 = !DILocation(line: 14, column: 10, scope: !5)
!10 = !DILocation(line: 14, column: 10, scope: !5)
!11 = !DILocation(line: 15, column: 14, scope: !5)
!12 = !DILocation(line: 17, column: 12, scope: !5)
!13 = !DILocation(line: 21, column: 19, scope: !5)
!14 = !DILocation(line: 21, column: 8, scope: !5)
!15 = !DILocation(line: 22, column: 4, scope: !5)
!16 = !DILocation(line: 18, column: 19, scope: !5)
!17 = !DILocation(line: 18, column: 8, scope: !5)
