@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bt04root1 = external constant {i32, i32, [0 x ptr]}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %m1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %m1.1 = alloca ptr addrspace(1)
  %m1.2 = alloca ptr addrspace(1)
  %x = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %x.1 = alloca ptr addrspace(1)
  %x.2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %53, label %10
10:
  %11 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !9
  %12 = and i64 72057594037927935, 1
  %13 = or i64 2449958197289549824, %12
  %14 = getelementptr i8, ptr addrspace(1) null, i64 %13
  call void @_bal_mapping_init_member(ptr addrspace(1) %11, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %14), !dbg !10
  store ptr addrspace(1) %11, ptr %1
  %15 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %15, ptr %m1
  %16 = load ptr addrspace(1), ptr %m1
  %17 = call i1 @_bal_type_contains(ptr @_Bt04root1, ptr addrspace(1) %16), !dbg !11
  br i1 %17, label %18, label %28
18:
  %19 = load ptr addrspace(1), ptr %m1
  store ptr addrspace(1) %19, ptr %m1.1
  %20 = load ptr addrspace(1), ptr %m1.1
  %21 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %20, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)), !dbg !14
  store ptr addrspace(1) %21, ptr %2
  %22 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %22, ptr %x
  %23 = load ptr addrspace(1), ptr %x
  %24 = addrspacecast ptr addrspace(1) %23 to ptr
  %25 = ptrtoint ptr %24 to i64
  %26 = and i64 %25, 2233785415175766016
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %39, label %50
28:
  %29 = load ptr addrspace(1), ptr %m1
  store ptr addrspace(1) %29, ptr %m1.2
  %30 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !12
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 3
  %32 = load ptr addrspace(1), ptr addrspace(1) %31, align 8
  %33 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %34 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %33, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441224558), ptr addrspace(1) %34
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 1
  store i64 1, ptr addrspace(1) %35
  %36 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %37 = getelementptr i8, ptr addrspace(1) %36, i64 864691128455135236
  store ptr addrspace(1) %37, ptr %5
  %38 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %38), !dbg !13
  store ptr addrspace(1) null, ptr %6
  br label %52
39:
  %40 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %40, ptr %x.1
  %41 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !15
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 3
  %43 = load ptr addrspace(1), ptr addrspace(1) %42, align 8
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %44, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431589230), ptr addrspace(1) %45
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 1
  store i64 1, ptr addrspace(1) %46
  %47 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %48 = getelementptr i8, ptr addrspace(1) %47, i64 864691128455135236
  store ptr addrspace(1) %48, ptr %3
  %49 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %49), !dbg !16
  store ptr addrspace(1) null, ptr %4
  br label %50
50:
  %51 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %51, ptr %x.2
  br label %52
52:
  ret void
53:
  %54 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %54), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-bug/map3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 18, scope: !5)
!10 = !DILocation(line: 4, column: 18, scope: !5)
!11 = !DILocation(line: 6, column: 10, scope: !5)
!12 = !DILocation(line: 13, column: 19, scope: !5)
!13 = !DILocation(line: 13, column: 8, scope: !5)
!14 = !DILocation(line: 7, column: 22, scope: !5)
!15 = !DILocation(line: 9, column: 23, scope: !5)
!16 = !DILocation(line: 9, column: 12, scope: !5)
