@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_error_construct(ptr addrspace(1), i64)
define void @_B04rootmain() !dbg !5 {
  %m = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i8
  %11 = load ptr, ptr @_bal_stack_guard
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %39, label %13
13:
  %14 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !11
  %15 = and i64 72057594037927935, 1
  %16 = or i64 2449958197289549824, %15
  %17 = getelementptr i8, ptr addrspace(1) null, i64 %16
  call void @_bal_mapping_init_member(ptr addrspace(1) %14, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %17), !dbg !12
  store ptr addrspace(1) %14, ptr %1
  %18 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %18, ptr %m
  %19 = load ptr addrspace(1), ptr %m
  %20 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %19, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433)), !dbg !13
  store ptr addrspace(1) %20, ptr %2
  %21 = load ptr addrspace(1), ptr %2
  %22 = call ptr addrspace(1) @_B_nonNil(ptr addrspace(1) %21), !dbg !14
  store ptr addrspace(1) %22, ptr %3
  %23 = load ptr addrspace(1), ptr %3
  %24 = addrspacecast ptr addrspace(1) %23 to ptr
  %25 = ptrtoint ptr %24 to i64
  %26 = and i64 %25, 2233785415175766016
  %27 = icmp eq i64 %26, 432345564227567616
  br i1 %27, label %28, label %31
28:
  %29 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %29, ptr %4
  %30 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %30, ptr %9
  br label %37
31:
  %32 = load ptr addrspace(1), ptr %3
  %33 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %32), !dbg !15
  store i64 %33, ptr %5
  %34 = load i64, ptr %5
  %35 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %34)
  %36 = extractvalue {i64, i1} %35, 1
  br i1 %36, label %54, label %41
37:
  %38 = load ptr addrspace(1), ptr %9
  call void @_bal_panic(ptr addrspace(1) %38), !dbg !19
  unreachable
39:
  %40 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %40), !dbg !10
  unreachable
41:
  %42 = extractvalue {i64, i1} %35, 0
  store i64 %42, ptr %6
  %43 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 3
  %45 = load ptr addrspace(1), ptr addrspace(1) %44, align 8
  %46 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %47 = load i64, ptr %6
  %48 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %47), !dbg !17
  %49 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %46, i64 0, i64 0
  store ptr addrspace(1) %48, ptr addrspace(1) %49
  %50 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 1
  store i64 1, ptr addrspace(1) %50
  %51 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %52 = getelementptr i8, ptr addrspace(1) %51, i64 864691128455135236
  store ptr addrspace(1) %52, ptr %7
  %53 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %53), !dbg !18
  store ptr addrspace(1) null, ptr %8
  ret void
54:
  %55 = call ptr addrspace(1) @_bal_panic_construct(i64 1281), !dbg !9
  store ptr addrspace(1) %55, ptr %9
  br label %37
}
define internal ptr addrspace(1) @_B_nonNil(ptr addrspace(1) %0) !dbg !7 {
  %n = alloca ptr addrspace(1)
  %n.1 = alloca ptr addrspace(1)
  %n.2 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %21, label %6
6:
  store ptr addrspace(1) %0, ptr %n
  %7 = load ptr addrspace(1), ptr %n
  %8 = addrspacecast ptr addrspace(1) %7 to ptr
  %9 = ptrtoint ptr %8 to i64
  %10 = and i64 %9, 2233785415175766016
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16
12:
  %13 = load ptr addrspace(1), ptr %n
  store ptr addrspace(1) %13, ptr %n.1
  %14 = call ptr addrspace(1) @_bal_error_construct(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431589230), i64 10), !dbg !20
  store ptr addrspace(1) %14, ptr %2
  %15 = load ptr addrspace(1), ptr %2
  ret ptr addrspace(1) %15
16:
  %17 = load ptr addrspace(1), ptr %n
  %18 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %17), !dbg !22
  store i64 %18, ptr %n.2
  %19 = load i64, ptr %n.2
  %20 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %19), !dbg !23
  ret ptr addrspace(1) %20
21:
  %22 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !20
  call void @_bal_panic(ptr addrspace(1) %22), !dbg !21
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-error/check4-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"nonNil", linkageName:"_B_nonNil", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 16, scope: !5)
!11 = !DILocation(line: 4, column: 17, scope: !5)
!12 = !DILocation(line: 4, column: 17, scope: !5)
!13 = !DILocation(line: 5, column: 35, scope: !5)
!14 = !DILocation(line: 5, column: 27, scope: !5)
!15 = !DILocation(line: 5, column: 16, scope: !5)
!16 = !DILocation(line: 5, column: 15, scope: !5)
!17 = !DILocation(line: 5, column: 15, scope: !5)
!18 = !DILocation(line: 5, column: 4, scope: !5)
!19 = !DILocation(line: 6, column: 0, scope: !5)
!20 = !DILocation(line: 0, column: 0, scope: !7)
!21 = !DILocation(line: 8, column: 9, scope: !7)
!22 = !DILocation(line: 9, column: 9, scope: !7)
!23 = !DILocation(line: 13, column: 8, scope: !7)
