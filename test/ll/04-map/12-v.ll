@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
declare {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %m = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %26, label %9
9:
  %10 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 0), !dbg !13
  store ptr addrspace(1) %10, ptr %1
  %11 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %11, ptr %m
  %12 = load ptr addrspace(1), ptr %m
  call void @_B_put(ptr addrspace(1) %12, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570848553318), i64 5), !dbg !14
  store ptr addrspace(1) null, ptr %2
  %13 = load ptr addrspace(1), ptr %m
  %14 = call i64 @_B_get(ptr addrspace(1) %13, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570848553318)), !dbg !15
  store i64 %14, ptr %3
  %15 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %16 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 3
  %17 = load ptr addrspace(1), ptr addrspace(1) %16, align 8
  %18 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %19 = load i64, ptr %3
  %20 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %19), !dbg !17
  %21 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %18, i64 0, i64 0
  store ptr addrspace(1) %20, ptr addrspace(1) %21
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 1
  store i64 1, ptr addrspace(1) %22
  %23 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %24 = getelementptr i8, ptr addrspace(1) %23, i64 864691128455135236
  store ptr addrspace(1) %24, ptr %4
  %25 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %25), !dbg !18
  store ptr addrspace(1) null, ptr %5
  ret void
26:
  %27 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %27), !dbg !12
  unreachable
}
define internal void @_B_put(ptr addrspace(1) %0, ptr addrspace(1) %1, i64 %2) !dbg !7 {
  %m = alloca ptr addrspace(1)
  %k = alloca ptr addrspace(1)
  %v = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %17, label %8
8:
  store ptr addrspace(1) %0, ptr %m
  store ptr addrspace(1) %1, ptr %k
  store i64 %2, ptr %v
  %9 = load ptr addrspace(1), ptr %k
  %10 = load ptr addrspace(1), ptr %m
  %11 = load i64, ptr %v
  %12 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %11), !dbg !21
  %13 = call i64 @_bal_mapping_set(ptr addrspace(1) %10, ptr addrspace(1) %9, ptr addrspace(1) %12), !dbg !22
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %19, label %20
15:
  %16 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %16), !dbg !23
  unreachable
17:
  %18 = call ptr addrspace(1) @_bal_panic_construct(i64 2564), !dbg !19
  call void @_bal_panic(ptr addrspace(1) %18), !dbg !20
  unreachable
19:
  ret void
20:
  %21 = or i64 %13, 2816
  %22 = call ptr addrspace(1) @_bal_panic_construct(i64 %21), !dbg !19
  store ptr addrspace(1) %22, ptr %4
  br label %15
}
define internal i64 @_B_get(ptr addrspace(1) %0, ptr addrspace(1) %1) !dbg !9 {
  %m = alloca ptr addrspace(1)
  %k = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i64
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %20, label %10
10:
  store ptr addrspace(1) %0, ptr %m
  store ptr addrspace(1) %1, ptr %k
  %11 = load ptr addrspace(1), ptr %k
  %12 = load ptr addrspace(1), ptr %m
  %13 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %12, ptr addrspace(1) %11), !dbg !26
  %14 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %12, ptr addrspace(1) %13), !dbg !27
  store ptr addrspace(1) %14, ptr %3
  %15 = load ptr addrspace(1), ptr %3
  %16 = call {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1) %15), !dbg !28
  %17 = extractvalue {ptr addrspace(1), i1} %16, 1
  br i1 %17, label %29, label %22
18:
  %19 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %19), !dbg !30
  unreachable
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 3844), !dbg !24
  call void @_bal_panic(ptr addrspace(1) %21), !dbg !25
  unreachable
22:
  %23 = extractvalue {ptr addrspace(1), i1} %16, 0
  store ptr addrspace(1) %23, ptr %4
  %24 = load ptr addrspace(1), ptr %4
  %25 = addrspacecast ptr addrspace(1) %24 to ptr
  %26 = ptrtoint ptr %25 to i64
  %27 = and i64 %26, 2233785415175766016
  %28 = icmp eq i64 %27, 144115188075855872
  br i1 %28, label %31, label %34
29:
  %30 = call ptr addrspace(1) @_bal_panic_construct(i64 4097), !dbg !24
  store ptr addrspace(1) %30, ptr %6
  br label %18
31:
  %32 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %24), !dbg !29
  store i64 %32, ptr %5
  %33 = load i64, ptr %5
  ret i64 %33
34:
  %35 = call ptr addrspace(1) @_bal_panic_construct(i64 4099), !dbg !24
  store ptr addrspace(1) %35, ptr %6
  br label %18
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-map/12-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"put", linkageName:"_B_put", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"get", linkageName:"_B_get", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 16, scope: !5)
!13 = !DILocation(line: 5, column: 17, scope: !5)
!14 = !DILocation(line: 6, column: 4, scope: !5)
!15 = !DILocation(line: 7, column: 15, scope: !5)
!16 = !DILocation(line: 7, column: 15, scope: !5)
!17 = !DILocation(line: 7, column: 15, scope: !5)
!18 = !DILocation(line: 7, column: 4, scope: !5)
!19 = !DILocation(line: 0, column: 0, scope: !7)
!20 = !DILocation(line: 10, column: 9, scope: !7)
!21 = !DILocation(line: 11, column: 5, scope: !7)
!22 = !DILocation(line: 11, column: 5, scope: !7)
!23 = !DILocation(line: 12, column: 0, scope: !7)
!24 = !DILocation(line: 0, column: 0, scope: !9)
!25 = !DILocation(line: 15, column: 9, scope: !9)
!26 = !DILocation(line: 16, column: 18, scope: !9)
!27 = !DILocation(line: 16, column: 18, scope: !9)
!28 = !DILocation(line: 16, column: 11, scope: !9)
!29 = !DILocation(line: 16, column: 11, scope: !9)
!30 = !DILocation(line: 17, column: 0, scope: !9)
