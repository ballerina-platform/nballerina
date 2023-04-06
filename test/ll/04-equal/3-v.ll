@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare zeroext i1 @_bal_exact_eq(ptr addrspace(1), ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %y = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca i8
  %18 = load ptr, ptr @_bal_stack_guard
  %19 = icmp ult ptr %17, %18
  br i1 %19, label %78, label %20
20:
  %21 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !11
  %22 = and i64 72057594037927935, 1
  %23 = or i64 2449958197289549824, %22
  %24 = getelementptr i8, ptr addrspace(1) null, i64 %23
  call void @_bal_mapping_init_member(ptr addrspace(1) %21, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261430), ptr addrspace(1) %24), !dbg !12
  store ptr addrspace(1) %21, ptr %1
  %25 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %25, ptr %x
  %26 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %26, ptr %y
  %27 = load ptr addrspace(1), ptr %x
  %28 = load ptr addrspace(1), ptr %y
  call void @_B_printEq(ptr addrspace(1) %27, ptr addrspace(1) %28), !dbg !13
  store ptr addrspace(1) null, ptr %2
  %29 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !14
  %30 = and i64 72057594037927935, 1
  %31 = or i64 2449958197289549824, %30
  %32 = getelementptr i8, ptr addrspace(1) null, i64 %31
  call void @_bal_mapping_init_member(ptr addrspace(1) %29, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261430), ptr addrspace(1) %32), !dbg !15
  store ptr addrspace(1) %29, ptr %3
  %33 = load ptr addrspace(1), ptr %3
  %34 = and i64 72057594037927935, 1
  %35 = or i64 2449958197289549824, %34
  %36 = getelementptr i8, ptr addrspace(1) null, i64 %35
  call void @_B_printEq(ptr addrspace(1) %33, ptr addrspace(1) %36), !dbg !16
  store ptr addrspace(1) null, ptr %4
  %37 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !17
  %38 = and i64 72057594037927935, 1
  %39 = or i64 2449958197289549824, %38
  %40 = getelementptr i8, ptr addrspace(1) null, i64 %39
  call void @_bal_mapping_init_member(ptr addrspace(1) %37, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261430), ptr addrspace(1) %40), !dbg !18
  store ptr addrspace(1) %37, ptr %5
  %41 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !19
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 3
  %43 = load ptr addrspace(1), ptr addrspace(1) %42, align 8
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = and i64 72057594037927935, 1
  %46 = or i64 2449958197289549824, %45
  %47 = getelementptr i8, ptr addrspace(1) null, i64 %46
  %48 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %44, i64 0, i64 0
  store ptr addrspace(1) %47, ptr addrspace(1) %48
  %49 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 1
  store i64 1, ptr addrspace(1) %49
  %50 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %51 = getelementptr i8, ptr addrspace(1) %50, i64 864691128455135236
  store ptr addrspace(1) %51, ptr %6
  %52 = load ptr addrspace(1), ptr %5
  %53 = load ptr addrspace(1), ptr %6
  call void @_B_printEq(ptr addrspace(1) %52, ptr addrspace(1) %53), !dbg !20
  store ptr addrspace(1) null, ptr %7
  %54 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !21
  %55 = and i64 72057594037927935, 1
  %56 = or i64 2449958197289549824, %55
  %57 = getelementptr i8, ptr addrspace(1) null, i64 %56
  call void @_bal_mapping_init_member(ptr addrspace(1) %54, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261430), ptr addrspace(1) %57), !dbg !22
  store ptr addrspace(1) %54, ptr %8
  %58 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !23
  %59 = and i64 72057594037927935, 1
  %60 = or i64 2449958197289549824, %59
  %61 = getelementptr i8, ptr addrspace(1) null, i64 %60
  call void @_bal_mapping_init_member(ptr addrspace(1) %58, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261430), ptr addrspace(1) %61), !dbg !24
  store ptr addrspace(1) %58, ptr %9
  %62 = load ptr addrspace(1), ptr %8
  %63 = load ptr addrspace(1), ptr %9
  call void @_B_printEq(ptr addrspace(1) %62, ptr addrspace(1) %63), !dbg !25
  store ptr addrspace(1) null, ptr %10
  %64 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 0), !dbg !26
  store ptr addrspace(1) %64, ptr %11
  %65 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 0), !dbg !27
  store ptr addrspace(1) %65, ptr %12
  %66 = load ptr addrspace(1), ptr %11
  %67 = load ptr addrspace(1), ptr %12
  call void @_B_printEq(ptr addrspace(1) %66, ptr addrspace(1) %67), !dbg !28
  store ptr addrspace(1) null, ptr %13
  %68 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !29
  %69 = and i64 72057594037927935, 1
  %70 = or i64 2449958197289549824, %69
  %71 = getelementptr i8, ptr addrspace(1) null, i64 %70
  call void @_bal_mapping_init_member(ptr addrspace(1) %68, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261430), ptr addrspace(1) %71), !dbg !30
  store ptr addrspace(1) %68, ptr %14
  %72 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !31
  %73 = and i64 72057594037927935, 2
  %74 = or i64 2449958197289549824, %73
  %75 = getelementptr i8, ptr addrspace(1) null, i64 %74
  call void @_bal_mapping_init_member(ptr addrspace(1) %72, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261430), ptr addrspace(1) %75), !dbg !32
  store ptr addrspace(1) %72, ptr %15
  %76 = load ptr addrspace(1), ptr %14
  %77 = load ptr addrspace(1), ptr %15
  call void @_B_printEq(ptr addrspace(1) %76, ptr addrspace(1) %77), !dbg !33
  store ptr addrspace(1) null, ptr %16
  ret void
78:
  %79 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %79), !dbg !10
  unreachable
}
define internal void @_B_printEq(ptr addrspace(1) %0, ptr addrspace(1) %1) !dbg !7 {
  %x = alloca ptr addrspace(1)
  %y = alloca ptr addrspace(1)
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i1
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %46, label %12
12:
  store ptr addrspace(1) %0, ptr %x
  store ptr addrspace(1) %1, ptr %y
  %13 = load ptr addrspace(1), ptr %x
  %14 = load ptr addrspace(1), ptr %y
  %15 = call i1 @_bal_exact_eq(ptr addrspace(1) %13, ptr addrspace(1) %14), !dbg !36
  store i1 %15, ptr %3
  %16 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !37
  %17 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 3
  %18 = load ptr addrspace(1), ptr addrspace(1) %17, align 8
  %19 = bitcast ptr addrspace(1) %18 to ptr addrspace(1)
  %20 = load i1, ptr %3
  %21 = zext i1 %20 to i64
  %22 = or i64 %21, 72057594037927936
  %23 = getelementptr i8, ptr addrspace(1) null, i64 %22
  %24 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %19, i64 0, i64 0
  store ptr addrspace(1) %23, ptr addrspace(1) %24
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 1
  store i64 1, ptr addrspace(1) %25
  %26 = bitcast ptr addrspace(1) %16 to ptr addrspace(1)
  %27 = getelementptr i8, ptr addrspace(1) %26, i64 864691128455135236
  store ptr addrspace(1) %27, ptr %4
  %28 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %28), !dbg !38
  store ptr addrspace(1) null, ptr %5
  %29 = load ptr addrspace(1), ptr %x
  %30 = load ptr addrspace(1), ptr %y
  %31 = call i1 @_bal_exact_eq(ptr addrspace(1) %29, ptr addrspace(1) %30), !dbg !39
  %32 = xor i1 %31, 1
  store i1 %32, ptr %6
  %33 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !40
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 3
  %35 = load ptr addrspace(1), ptr addrspace(1) %34, align 8
  %36 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %37 = load i1, ptr %6
  %38 = zext i1 %37 to i64
  %39 = or i64 %38, 72057594037927936
  %40 = getelementptr i8, ptr addrspace(1) null, i64 %39
  %41 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %36, i64 0, i64 0
  store ptr addrspace(1) %40, ptr addrspace(1) %41
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 1
  store i64 1, ptr addrspace(1) %42
  %43 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %44 = getelementptr i8, ptr addrspace(1) %43, i64 864691128455135236
  store ptr addrspace(1) %44, ptr %7
  %45 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %45), !dbg !41
  store ptr addrspace(1) null, ptr %8
  ret void
46:
  %47 = call ptr addrspace(1) @_bal_panic_construct(i64 6660), !dbg !34
  call void @_bal_panic(ptr addrspace(1) %47), !dbg !35
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-equal/3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printEq", linkageName:"_B_printEq", scope: !1, file: !1, line: 26, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 16, scope: !5)
!11 = !DILocation(line: 4, column: 12, scope: !5)
!12 = !DILocation(line: 4, column: 12, scope: !5)
!13 = !DILocation(line: 8, column: 4, scope: !5)
!14 = !DILocation(line: 11, column: 12, scope: !5)
!15 = !DILocation(line: 11, column: 12, scope: !5)
!16 = !DILocation(line: 11, column: 4, scope: !5)
!17 = !DILocation(line: 14, column: 12, scope: !5)
!18 = !DILocation(line: 14, column: 12, scope: !5)
!19 = !DILocation(line: 14, column: 19, scope: !5)
!20 = !DILocation(line: 14, column: 4, scope: !5)
!21 = !DILocation(line: 17, column: 12, scope: !5)
!22 = !DILocation(line: 17, column: 12, scope: !5)
!23 = !DILocation(line: 17, column: 19, scope: !5)
!24 = !DILocation(line: 17, column: 19, scope: !5)
!25 = !DILocation(line: 17, column: 4, scope: !5)
!26 = !DILocation(line: 20, column: 12, scope: !5)
!27 = !DILocation(line: 20, column: 16, scope: !5)
!28 = !DILocation(line: 20, column: 4, scope: !5)
!29 = !DILocation(line: 23, column: 12, scope: !5)
!30 = !DILocation(line: 23, column: 12, scope: !5)
!31 = !DILocation(line: 23, column: 19, scope: !5)
!32 = !DILocation(line: 23, column: 19, scope: !5)
!33 = !DILocation(line: 23, column: 4, scope: !5)
!34 = !DILocation(line: 0, column: 0, scope: !7)
!35 = !DILocation(line: 26, column: 9, scope: !7)
!36 = !DILocation(line: 27, column: 17, scope: !7)
!37 = !DILocation(line: 27, column: 15, scope: !7)
!38 = !DILocation(line: 27, column: 4, scope: !7)
!39 = !DILocation(line: 28, column: 17, scope: !7)
!40 = !DILocation(line: 28, column: 15, scope: !7)
!41 = !DILocation(line: 28, column: 4, scope: !7)
