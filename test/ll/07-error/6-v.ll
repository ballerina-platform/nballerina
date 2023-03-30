@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"negative\00\00\00\00"}, align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare ptr addrspace(1) @_bal_error_construct(ptr addrspace(1), i64)
define void @_B04rootmain() !dbg !5 {
  %result = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %15, label %8
8:
  %9 = call ptr addrspace(1) @_B_positive(i64 -1), !dbg !13
  store ptr addrspace(1) %9, ptr %1
  %10 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %10, ptr %result
  %11 = load ptr addrspace(1), ptr %result
  call void @_B_display(ptr addrspace(1) %11), !dbg !14
  store ptr addrspace(1) null, ptr %2
  %12 = call ptr addrspace(1) @_B_positive(i64 4), !dbg !15
  store ptr addrspace(1) %12, ptr %3
  %13 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %13, ptr %result
  %14 = load ptr addrspace(1), ptr %result
  call void @_B_display(ptr addrspace(1) %14), !dbg !16
  store ptr addrspace(1) null, ptr %4
  ret void
15:
  %16 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %16), !dbg !12
  unreachable
}
define internal void @_B_display(ptr addrspace(1) %0) !dbg !7 {
  %result = alloca ptr addrspace(1)
  %result.1 = alloca i64
  %result.2 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %e = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %40, label %11
11:
  store ptr addrspace(1) %0, ptr %result
  %12 = load ptr addrspace(1), ptr %result
  %13 = addrspacecast ptr addrspace(1) %12 to ptr
  %14 = ptrtoint ptr %13 to i64
  %15 = and i64 %14, 2233785415175766016
  %16 = icmp eq i64 %15, 144115188075855872
  br i1 %16, label %17, label %24
17:
  %18 = load ptr addrspace(1), ptr %result
  %19 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %18), !dbg !21
  store i64 %19, ptr %result.1
  %20 = load i64, ptr %result.1
  %21 = load i64, ptr %result.1
  %22 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %20, i64 %21)
  %23 = extractvalue {i64, i1} %22, 1
  br i1 %23, label %55, label %42
24:
  %25 = load ptr addrspace(1), ptr %result
  store ptr addrspace(1) %25, ptr %result.2
  %26 = load ptr addrspace(1), ptr %result.2
  store ptr addrspace(1) %26, ptr %e
  %27 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 3
  %29 = load ptr addrspace(1), ptr addrspace(1) %28, align 8
  %30 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %31 = load ptr addrspace(1), ptr %e
  %32 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %30, i64 0, i64 0
  store ptr addrspace(1) %31, ptr addrspace(1) %32
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 1
  store i64 1, ptr addrspace(1) %33
  %34 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 864691128455135236
  store ptr addrspace(1) %35, ptr %5
  %36 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %36), !dbg !20
  store ptr addrspace(1) null, ptr %6
  br label %37
37:
  ret void
38:
  %39 = load ptr addrspace(1), ptr %7
  call void @_bal_panic(ptr addrspace(1) %39), !dbg !25
  unreachable
40:
  %41 = call ptr addrspace(1) @_bal_panic_construct(i64 2820), !dbg !17
  call void @_bal_panic(ptr addrspace(1) %41), !dbg !18
  unreachable
42:
  %43 = extractvalue {i64, i1} %22, 0
  store i64 %43, ptr %2
  %44 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 3
  %46 = load ptr addrspace(1), ptr addrspace(1) %45, align 8
  %47 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %48 = load i64, ptr %2
  %49 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %48), !dbg !23
  %50 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %47, i64 0, i64 0
  store ptr addrspace(1) %49, ptr addrspace(1) %50
  %51 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 1
  store i64 1, ptr addrspace(1) %51
  %52 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %53 = getelementptr i8, ptr addrspace(1) %52, i64 864691128455135236
  store ptr addrspace(1) %53, ptr %3
  %54 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %54), !dbg !24
  store ptr addrspace(1) null, ptr %4
  br label %37
55:
  %56 = call ptr addrspace(1) @_bal_panic_construct(i64 3329), !dbg !17
  store ptr addrspace(1) %56, ptr %7
  br label %38
}
define internal ptr addrspace(1) @_B_positive(i64 %0) !dbg !9 {
  %n = alloca i64
  %2 = alloca i1
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %17, label %7
7:
  store i64 %0, ptr %n
  %8 = load i64, ptr %n
  %9 = icmp sge i64 %8, 0
  store i1 %9, ptr %2
  %10 = load i1, ptr %2
  br i1 %10, label %11, label %14
11:
  %12 = load i64, ptr %n
  %13 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %12), !dbg !28
  ret ptr addrspace(1) %13
14:
  %15 = call ptr addrspace(1) @_bal_error_construct(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str0 to ptr) to ptr addrspace(1)), i64 360287970189639680), i64 26), !dbg !26
  store ptr addrspace(1) %15, ptr %3
  %16 = load ptr addrspace(1), ptr %3
  ret ptr addrspace(1) %16
17:
  %18 = call ptr addrspace(1) @_bal_panic_construct(i64 5380), !dbg !26
  call void @_bal_panic(ptr addrspace(1) %18), !dbg !27
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-error/6-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"display", linkageName:"_B_display", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"positive", linkageName:"_B_positive", scope: !1, file: !1, line: 21, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 16, scope: !5)
!13 = !DILocation(line: 5, column: 23, scope: !5)
!14 = !DILocation(line: 6, column: 4, scope: !5)
!15 = !DILocation(line: 7, column: 13, scope: !5)
!16 = !DILocation(line: 8, column: 4, scope: !5)
!17 = !DILocation(line: 0, column: 0, scope: !7)
!18 = !DILocation(line: 11, column: 9, scope: !7)
!19 = !DILocation(line: 17, column: 19, scope: !7)
!20 = !DILocation(line: 17, column: 8, scope: !7)
!21 = !DILocation(line: 18, column: 4, scope: !7)
!22 = !DILocation(line: 13, column: 19, scope: !7)
!23 = !DILocation(line: 13, column: 19, scope: !7)
!24 = !DILocation(line: 13, column: 8, scope: !7)
!25 = !DILocation(line: 19, column: 0, scope: !7)
!26 = !DILocation(line: 0, column: 0, scope: !9)
!27 = !DILocation(line: 21, column: 9, scope: !9)
!28 = !DILocation(line: 23, column: 8, scope: !9)
