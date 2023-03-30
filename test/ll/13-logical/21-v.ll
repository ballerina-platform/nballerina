@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_string_concat(ptr addrspace(1), ptr addrspace(1))
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %36, label %10
10:
  %11 = and i64 72057594037927935, 1
  %12 = or i64 2449958197289549824, %11
  %13 = getelementptr i8, ptr addrspace(1) null, i64 %12
  %14 = call ptr addrspace(1) @_B_f(ptr addrspace(1) %13), !dbg !11
  store ptr addrspace(1) %14, ptr %1
  %15 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %16 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 3
  %17 = load ptr addrspace(1), ptr addrspace(1) %16, align 8
  %18 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %19 = load ptr addrspace(1), ptr %1
  %20 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %18, i64 0, i64 0
  store ptr addrspace(1) %19, ptr addrspace(1) %20
  %21 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 1
  store i64 1, ptr addrspace(1) %21
  %22 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %23 = getelementptr i8, ptr addrspace(1) %22, i64 864691128455135236
  store ptr addrspace(1) %23, ptr %2
  %24 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %24), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %25 = call ptr addrspace(1) @_B_f(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187952490046824)), !dbg !14
  store ptr addrspace(1) %25, ptr %4
  %26 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 3
  %28 = load ptr addrspace(1), ptr addrspace(1) %27, align 8
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = load ptr addrspace(1), ptr %4
  %31 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %29, i64 0, i64 0
  store ptr addrspace(1) %30, ptr addrspace(1) %31
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  store i64 1, ptr addrspace(1) %32
  %33 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %34 = getelementptr i8, ptr addrspace(1) %33, i64 864691128455135236
  store ptr addrspace(1) %34, ptr %5
  %35 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %35), !dbg !16
  store ptr addrspace(1) null, ptr %6
  ret void
36:
  %37 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %37), !dbg !10
  unreachable
}
define internal ptr addrspace(1) @_B_f(ptr addrspace(1) %0) !dbg !7 {
  %x = alloca ptr addrspace(1)
  %x.1 = alloca i64
  %x.2 = alloca ptr addrspace(1)
  %_ = alloca i64
  %2 = alloca i64
  %_.1 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %30, label %8
8:
  store ptr addrspace(1) %0, ptr %x
  %9 = load ptr addrspace(1), ptr %x
  %10 = addrspacecast ptr addrspace(1) %9 to ptr
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 2233785415175766016
  %13 = icmp eq i64 %12, 144115188075855872
  br i1 %13, label %14, label %17
14:
  %15 = load ptr addrspace(1), ptr %x
  %16 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %15), !dbg !20
  store i64 %16, ptr %x.1
  br label %23
17:
  %18 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %18, ptr %x.2
  %19 = load ptr addrspace(1), ptr %x.2
  store ptr addrspace(1) %19, ptr %_.1
  %20 = load ptr addrspace(1), ptr %x.2
  %21 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %20, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738017515403704096)), !dbg !19
  store ptr addrspace(1) %21, ptr %3
  %22 = load ptr addrspace(1), ptr %3
  ret ptr addrspace(1) %22
23:
  %24 = load i64, ptr %x.1
  store i64 %24, ptr %_
  %25 = load i64, ptr %x.1
  %26 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %25, i64 1)
  %27 = extractvalue {i64, i1} %26, 1
  br i1 %27, label %36, label %32
28:
  %29 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %29), !dbg !22
  unreachable
30:
  %31 = call ptr addrspace(1) @_bal_panic_construct(i64 1796), !dbg !17
  call void @_bal_panic(ptr addrspace(1) %31), !dbg !18
  unreachable
32:
  %33 = extractvalue {i64, i1} %26, 0
  store i64 %33, ptr %2
  %34 = load i64, ptr %2
  %35 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %34), !dbg !21
  ret ptr addrspace(1) %35
36:
  %37 = call ptr addrspace(1) @_bal_panic_construct(i64 2561), !dbg !17
  store ptr addrspace(1) %37, ptr %4
  br label %28
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/21-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"f", linkageName:"_B_f", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 2, column: 16, scope: !5)
!11 = !DILocation(line: 3, column: 15, scope: !5)
!12 = !DILocation(line: 3, column: 15, scope: !5)
!13 = !DILocation(line: 3, column: 4, scope: !5)
!14 = !DILocation(line: 4, column: 15, scope: !5)
!15 = !DILocation(line: 4, column: 15, scope: !5)
!16 = !DILocation(line: 4, column: 4, scope: !5)
!17 = !DILocation(line: 0, column: 0, scope: !7)
!18 = !DILocation(line: 7, column: 9, scope: !7)
!19 = !DILocation(line: 14, column: 17, scope: !7)
!20 = !DILocation(line: 14, column: 8, scope: !7)
!21 = !DILocation(line: 10, column: 8, scope: !7)
!22 = !DILocation(line: 16, column: 0, scope: !7)
