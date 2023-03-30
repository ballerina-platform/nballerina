@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define internal i64 @_B_btoi(i1 %0) !dbg !5 {
  %b = alloca i1
  %b.1 = alloca i1
  %b.2 = alloca i1
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %10, label %5
5:
  store i1 %0, ptr %b
  %6 = load i1, ptr %b
  %7 = icmp eq i1 %6, 1
  br i1 %7, label %clause.0, label %gard.0
clause.0:
  %8 = load i1, ptr %b
  store i1 %8, ptr %b.1
  ret i64 1
clause.1:
  ret i64 0
gard.0:
  %9 = load i1, ptr %b
  store i1 %9, ptr %b.2
  br label %clause.1
10:
  %11 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %11), !dbg !10
  unreachable
}
define void @_B04rootmain() !dbg !7 {
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %35, label %10
10:
  %11 = call i64 @_B_btoi(i1 1), !dbg !13
  store i64 %11, ptr %1
  %12 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %13 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 3
  %14 = load ptr addrspace(1), ptr addrspace(1) %13, align 8
  %15 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %16 = load i64, ptr %1
  %17 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %16), !dbg !15
  %18 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %15, i64 0, i64 0
  store ptr addrspace(1) %17, ptr addrspace(1) %18
  %19 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 1
  store i64 1, ptr addrspace(1) %19
  %20 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %21 = getelementptr i8, ptr addrspace(1) %20, i64 864691128455135236
  store ptr addrspace(1) %21, ptr %2
  %22 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %22), !dbg !16
  store ptr addrspace(1) null, ptr %3
  %23 = call i64 @_B_btoi(i1 0), !dbg !17
  store i64 %23, ptr %4
  %24 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 3
  %26 = load ptr addrspace(1), ptr addrspace(1) %25, align 8
  %27 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %28 = load i64, ptr %4
  %29 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %28), !dbg !19
  %30 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %27, i64 0, i64 0
  store ptr addrspace(1) %29, ptr addrspace(1) %30
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 1
  store i64 1, ptr addrspace(1) %31
  %32 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %33 = getelementptr i8, ptr addrspace(1) %32, i64 864691128455135236
  store ptr addrspace(1) %33, ptr %5
  %34 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %34), !dbg !20
  store ptr addrspace(1) null, ptr %6
  ret void
35:
  %36 = call ptr addrspace(1) @_bal_panic_construct(i64 2564), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %36), !dbg !12
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-bug/matchreach1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"btoi", linkageName:"_B_btoi", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 9, scope: !5)
!11 = !DILocation(line: 0, column: 0, scope: !7)
!12 = !DILocation(line: 10, column: 16, scope: !7)
!13 = !DILocation(line: 11, column: 15, scope: !7)
!14 = !DILocation(line: 11, column: 15, scope: !7)
!15 = !DILocation(line: 11, column: 15, scope: !7)
!16 = !DILocation(line: 11, column: 4, scope: !7)
!17 = !DILocation(line: 12, column: 15, scope: !7)
!18 = !DILocation(line: 12, column: 15, scope: !7)
!19 = !DILocation(line: 12, column: 15, scope: !7)
!20 = !DILocation(line: 12, column: 4, scope: !7)
