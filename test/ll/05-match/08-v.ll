@_bal_stack_guard = external global ptr
@_Bt04root0 = external constant {i32, i32, [0 x ptr]}
@_Bt04root1 = external constant {i32, i32, [0 x ptr]}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %n = alloca i64
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %13, label %7
7:
  store i64 1, ptr %n
  %8 = load i64, ptr %n
  %9 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %8)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %19, label %15
11:
  %12 = load ptr addrspace(1), ptr %3
  call void @_bal_panic(ptr addrspace(1) %12), !dbg !13
  unreachable
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !10
  unreachable
15:
  %16 = extractvalue {i64, i1} %9, 0
  store i64 %16, ptr %1
  %17 = load i64, ptr %1
  %18 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %17), !dbg !11
  call void @_B_foo(ptr addrspace(1) %18), !dbg !12
  store ptr addrspace(1) null, ptr %2
  ret void
19:
  %20 = call ptr addrspace(1) @_bal_panic_construct(i64 1537), !dbg !9
  store ptr addrspace(1) %20, ptr %3
  br label %11
}
define internal void @_B_foo(ptr addrspace(1) %0) !dbg !7 {
  %v = alloca ptr addrspace(1)
  %v.1 = alloca i64
  %v.2 = alloca ptr addrspace(1)
  %v.3 = alloca i64
  %v.4 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %39, label %9
9:
  store ptr addrspace(1) %0, ptr %v
  %10 = load ptr addrspace(1), ptr %v
  %11 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %10), !dbg !16
  br i1 %11, label %clause.0, label %gard.0
clause.0:
  %12 = load ptr addrspace(1), ptr %v
  %13 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %12), !dbg !21
  store i64 %13, ptr %v.1
  %14 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !22
  %15 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %14, i64 0, i32 3
  %16 = load ptr addrspace(1), ptr addrspace(1) %15, align 8
  %17 = bitcast ptr addrspace(1) %16 to ptr addrspace(1)
  %18 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %17, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571083237741), ptr addrspace(1) %18
  %19 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %14, i64 0, i32 1
  store i64 1, ptr addrspace(1) %19
  %20 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %21 = getelementptr i8, ptr addrspace(1) %20, i64 864691128455135236
  store ptr addrspace(1) %21, ptr %2
  %22 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %22), !dbg !23
  store ptr addrspace(1) null, ptr %3
  br label %38
clause.1:
  %23 = load ptr addrspace(1), ptr %v
  %24 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %23), !dbg !18
  store i64 %24, ptr %v.3
  %25 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !19
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 3
  %27 = load ptr addrspace(1), ptr addrspace(1) %26, align 8
  %28 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %29 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %28, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573432113512), ptr addrspace(1) %29
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 1
  store i64 1, ptr addrspace(1) %30
  %31 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %32 = getelementptr i8, ptr addrspace(1) %31, i64 864691128455135236
  store ptr addrspace(1) %32, ptr %4
  %33 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %33), !dbg !20
  store ptr addrspace(1) null, ptr %5
  br label %38
gard.0:
  %34 = load ptr addrspace(1), ptr %v
  store ptr addrspace(1) %34, ptr %v.2
  %35 = load ptr addrspace(1), ptr %v.2
  %36 = call i1 @_bal_type_contains(ptr @_Bt04root1, ptr addrspace(1) %35), !dbg !17
  br i1 %36, label %clause.1, label %gard.1
gard.1:
  %37 = load ptr addrspace(1), ptr %v
  store ptr addrspace(1) %37, ptr %v.4
  br label %38
38:
  ret void
39:
  %40 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !14
  call void @_bal_panic(ptr addrspace(1) %40), !dbg !15
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-match/08-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 7, column: 0, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
!15 = !DILocation(line: 9, column: 9, scope: !7)
!16 = !DILocation(line: 11, column: 10, scope: !7)
!17 = !DILocation(line: 14, column: 11, scope: !7)
!18 = !DILocation(line: 16, column: 8, scope: !7)
!19 = !DILocation(line: 15, column: 23, scope: !7)
!20 = !DILocation(line: 15, column: 12, scope: !7)
!21 = !DILocation(line: 14, column: 8, scope: !7)
!22 = !DILocation(line: 12, column: 23, scope: !7)
!23 = !DILocation(line: 12, column: 12, scope: !7)
