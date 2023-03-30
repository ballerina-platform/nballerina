@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bt04root1 = external constant {i32, i32, [0 x ptr]}
@.func0 = internal unnamed_addr constant {ptr} {ptr @_B_negInc}, align 8
@.func1 = internal unnamed_addr constant {ptr} {ptr @_B_posInc}, align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %inc = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i64
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %57, label %12
12:
  %13 = call ptr addrspace(1) @_B_incFn(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573432049520)), !dbg !15
  store ptr addrspace(1) %13, ptr %1
  %14 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %14, ptr %inc
  %15 = load ptr addrspace(1), ptr %inc
  %16 = ptrtoint ptr addrspace(1) %15 to i64
  %17 = and i64 %16, 72057594037927928
  %18 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %17
  %19 = addrspacecast ptr addrspace(1) %18 to ptr
  %20 = bitcast ptr %19 to ptr
  %21 = getelementptr inbounds {ptr}, ptr %20, i32 0, i32 0
  %22 = load ptr, ptr %21
  %23 = call i64 %22(i64 1), !dbg !16
  store i64 %23, ptr %2
  %24 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 3
  %26 = load ptr addrspace(1), ptr addrspace(1) %25, align 8
  %27 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %28 = load i64, ptr %2
  %29 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %28), !dbg !18
  %30 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %27, i64 0, i64 0
  store ptr addrspace(1) %29, ptr addrspace(1) %30
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 1
  store i64 1, ptr addrspace(1) %31
  %32 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %33 = getelementptr i8, ptr addrspace(1) %32, i64 864691128455135236
  store ptr addrspace(1) %33, ptr %3
  %34 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %34), !dbg !19
  store ptr addrspace(1) null, ptr %4
  %35 = call ptr addrspace(1) @_B_incFn(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431260526)), !dbg !20
  store ptr addrspace(1) %35, ptr %5
  %36 = load ptr addrspace(1), ptr %5
  store ptr addrspace(1) %36, ptr %inc
  %37 = load ptr addrspace(1), ptr %inc
  %38 = ptrtoint ptr addrspace(1) %37 to i64
  %39 = and i64 %38, 72057594037927928
  %40 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %39
  %41 = addrspacecast ptr addrspace(1) %40 to ptr
  %42 = bitcast ptr %41 to ptr
  %43 = getelementptr inbounds {ptr}, ptr %42, i32 0, i32 0
  %44 = load ptr, ptr %43
  %45 = call i64 %44(i64 1), !dbg !21
  store i64 %45, ptr %6
  %46 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 3
  %48 = load ptr addrspace(1), ptr addrspace(1) %47, align 8
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = load i64, ptr %6
  %51 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %50), !dbg !23
  %52 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %49, i64 0, i64 0
  store ptr addrspace(1) %51, ptr addrspace(1) %52
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  store i64 1, ptr addrspace(1) %53
  %54 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %55 = getelementptr i8, ptr addrspace(1) %54, i64 864691128455135236
  store ptr addrspace(1) %55, ptr %7
  %56 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %56), !dbg !24
  store ptr addrspace(1) null, ptr %8
  ret void
57:
  %58 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %58), !dbg !14
  unreachable
}
define internal ptr addrspace(1) @_B_incFn(ptr addrspace(1) %0) !dbg !7 {
  %kind = alloca ptr addrspace(1)
  %kind.1 = alloca ptr addrspace(1)
  %kind.2 = alloca ptr addrspace(1)
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %12, label %5
5:
  store ptr addrspace(1) %0, ptr %kind
  %6 = load ptr addrspace(1), ptr %kind
  %7 = call i1 @_bal_type_contains(ptr @_Bt04root1, ptr addrspace(1) %6), !dbg !27
  br i1 %7, label %8, label %10
8:
  %9 = load ptr addrspace(1), ptr %kind
  store ptr addrspace(1) %9, ptr %kind.1
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func1 to ptr addrspace(1)), i64 648518346341351424)
10:
  %11 = load ptr addrspace(1), ptr %kind
  store ptr addrspace(1) %11, ptr %kind.2
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func0 to ptr addrspace(1)), i64 648518346341351424)
12:
  %13 = call ptr addrspace(1) @_bal_panic_construct(i64 2820), !dbg !25
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !26
  unreachable
}
define internal i64 @_B_posInc(i64 %0) !dbg !9 {
  %a = alloca i64
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %13, label %7
7:
  store i64 %0, ptr %a
  %8 = load i64, ptr %a
  %9 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %8, i64 1)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %18, label %15
11:
  %12 = load ptr addrspace(1), ptr %3
  call void @_bal_panic(ptr addrspace(1) %12), !dbg !30
  unreachable
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 4868), !dbg !28
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !29
  unreachable
15:
  %16 = extractvalue {i64, i1} %9, 0
  store i64 %16, ptr %2
  %17 = load i64, ptr %2
  ret i64 %17
18:
  %19 = call ptr addrspace(1) @_bal_panic_construct(i64 5121), !dbg !28
  store ptr addrspace(1) %19, ptr %3
  br label %11
}
define internal i64 @_B_negInc(i64 %0) !dbg !11 {
  %a = alloca i64
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %13, label %7
7:
  store i64 %0, ptr %a
  %8 = load i64, ptr %a
  %9 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %8, i64 1)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %18, label %15
11:
  %12 = load ptr addrspace(1), ptr %3
  call void @_bal_panic(ptr addrspace(1) %12), !dbg !33
  unreachable
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 5892), !dbg !31
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !32
  unreachable
15:
  %16 = extractvalue {i64, i1} %9, 0
  store i64 %16, ptr %2
  %17 = load i64, ptr %2
  ret i64 %17
18:
  %19 = call ptr addrspace(1) @_bal_panic_construct(i64 6145), !dbg !31
  store ptr addrspace(1) %19, ptr %3
  br label %11
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/15-function/return1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"incFn", linkageName:"_B_incFn", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"posInc", linkageName:"_B_posInc", scope: !1, file: !1, line: 19, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"negInc", linkageName:"_B_negInc", scope: !1, file: !1, line: 23, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 4, column: 16, scope: !5)
!15 = !DILocation(line: 5, column: 18, scope: !5)
!16 = !DILocation(line: 6, column: 15, scope: !5)
!17 = !DILocation(line: 6, column: 15, scope: !5)
!18 = !DILocation(line: 6, column: 15, scope: !5)
!19 = !DILocation(line: 6, column: 4, scope: !5)
!20 = !DILocation(line: 7, column: 10, scope: !5)
!21 = !DILocation(line: 8, column: 15, scope: !5)
!22 = !DILocation(line: 8, column: 15, scope: !5)
!23 = !DILocation(line: 8, column: 15, scope: !5)
!24 = !DILocation(line: 8, column: 4, scope: !5)
!25 = !DILocation(line: 0, column: 0, scope: !7)
!26 = !DILocation(line: 11, column: 9, scope: !7)
!27 = !DILocation(line: 12, column: 13, scope: !7)
!28 = !DILocation(line: 0, column: 0, scope: !9)
!29 = !DILocation(line: 19, column: 9, scope: !9)
!30 = !DILocation(line: 21, column: 0, scope: !9)
!31 = !DILocation(line: 0, column: 0, scope: !11)
!32 = !DILocation(line: 23, column: 9, scope: !11)
!33 = !DILocation(line: 25, column: 0, scope: !11)
