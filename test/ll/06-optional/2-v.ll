@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %16, label %8
8:
  %9 = and i64 72057594037927935, 2
  %10 = or i64 2449958197289549824, %9
  %11 = getelementptr i8, ptr addrspace(1) null, i64 %10
  %12 = call ptr addrspace(1) @_B_double(ptr addrspace(1) %11), !dbg !13
  store ptr addrspace(1) %12, ptr %1
  %13 = load ptr addrspace(1), ptr %1
  call void @_B_print(ptr addrspace(1) %13), !dbg !14
  store ptr addrspace(1) null, ptr %2
  %14 = call ptr addrspace(1) @_B_double(ptr addrspace(1) null), !dbg !15
  store ptr addrspace(1) %14, ptr %3
  %15 = load ptr addrspace(1), ptr %3
  call void @_B_print(ptr addrspace(1) %15), !dbg !16
  store ptr addrspace(1) null, ptr %4
  ret void
16:
  %17 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %17), !dbg !12
  unreachable
}
define internal void @_B_print(ptr addrspace(1) %0) !dbg !7 {
  %x = alloca ptr addrspace(1)
  %x.1 = alloca ptr addrspace(1)
  %x.2 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %41, label %9
9:
  store ptr addrspace(1) %0, ptr %x
  %10 = load ptr addrspace(1), ptr %x
  %11 = addrspacecast ptr addrspace(1) %10 to ptr
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 2233785415175766016
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %26
15:
  %16 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %16, ptr %x.1
  %17 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 3
  %19 = load ptr addrspace(1), ptr addrspace(1) %18, align 8
  %20 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %21 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570965341550), ptr addrspace(1) %21
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 1
  store i64 1, ptr addrspace(1) %22
  %23 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %24 = getelementptr i8, ptr addrspace(1) %23, i64 864691128455135236
  store ptr addrspace(1) %24, ptr %2
  %25 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %25), !dbg !24
  store ptr addrspace(1) null, ptr %3
  br label %40
26:
  %27 = load ptr addrspace(1), ptr %x
  %28 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %27), !dbg !19
  store i64 %28, ptr %x.2
  %29 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 3
  %31 = load ptr addrspace(1), ptr addrspace(1) %30, align 8
  %32 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %33 = load i64, ptr %x.2
  %34 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %33), !dbg !21
  %35 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %32, i64 0, i64 0
  store ptr addrspace(1) %34, ptr addrspace(1) %35
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 1
  store i64 1, ptr addrspace(1) %36
  %37 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %38 = getelementptr i8, ptr addrspace(1) %37, i64 864691128455135236
  store ptr addrspace(1) %38, ptr %4
  %39 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %39), !dbg !22
  store ptr addrspace(1) null, ptr %5
  br label %40
40:
  ret void
41:
  %42 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !17
  call void @_bal_panic(ptr addrspace(1) %42), !dbg !18
  unreachable
}
define internal ptr addrspace(1) @_B_double(ptr addrspace(1) %0) !dbg !9 {
  %x = alloca ptr addrspace(1)
  %x.1 = alloca ptr addrspace(1)
  %x.2 = alloca i64
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %24, label %7
7:
  store ptr addrspace(1) %0, ptr %x
  %8 = load ptr addrspace(1), ptr %x
  %9 = addrspacecast ptr addrspace(1) %8 to ptr
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 2233785415175766016
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15
13:
  %14 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %14, ptr %x.1
  ret ptr addrspace(1) null
15:
  %16 = load ptr addrspace(1), ptr %x
  %17 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %16), !dbg !27
  store i64 %17, ptr %x.2
  %18 = load i64, ptr %x.2
  %19 = load i64, ptr %x.2
  %20 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %18, i64 %19)
  %21 = extractvalue {i64, i1} %20, 1
  br i1 %21, label %30, label %26
22:
  %23 = load ptr addrspace(1), ptr %3
  call void @_bal_panic(ptr addrspace(1) %23), !dbg !29
  unreachable
24:
  %25 = call ptr addrspace(1) @_bal_panic_construct(i64 4612), !dbg !25
  call void @_bal_panic(ptr addrspace(1) %25), !dbg !26
  unreachable
26:
  %27 = extractvalue {i64, i1} %20, 0
  store i64 %27, ptr %2
  %28 = load i64, ptr %2
  %29 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %28), !dbg !28
  ret ptr addrspace(1) %29
30:
  %31 = call ptr addrspace(1) @_bal_panic_construct(i64 5889), !dbg !25
  store ptr addrspace(1) %31, ptr %3
  br label %22
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-optional/2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"print", linkageName:"_B_print", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"double", linkageName:"_B_double", scope: !1, file: !1, line: 18, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 16, scope: !5)
!13 = !DILocation(line: 5, column: 10, scope: !5)
!14 = !DILocation(line: 5, column: 4, scope: !5)
!15 = !DILocation(line: 6, column: 10, scope: !5)
!16 = !DILocation(line: 6, column: 4, scope: !5)
!17 = !DILocation(line: 0, column: 0, scope: !7)
!18 = !DILocation(line: 9, column: 9, scope: !7)
!19 = !DILocation(line: 10, column: 9, scope: !7)
!20 = !DILocation(line: 14, column: 19, scope: !7)
!21 = !DILocation(line: 14, column: 19, scope: !7)
!22 = !DILocation(line: 14, column: 8, scope: !7)
!23 = !DILocation(line: 11, column: 19, scope: !7)
!24 = !DILocation(line: 11, column: 8, scope: !7)
!25 = !DILocation(line: 0, column: 0, scope: !9)
!26 = !DILocation(line: 18, column: 9, scope: !9)
!27 = !DILocation(line: 19, column: 9, scope: !9)
!28 = !DILocation(line: 23, column: 8, scope: !9)
!29 = !DILocation(line: 25, column: 0, scope: !9)
