@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bt04root1 = external constant {i32, i32, [0 x ptr]}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare i1 @_bal_type_contains_int(ptr, i64) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %20, label %7
7:
  %8 = call i64 @_B_foo(i64 10), !dbg !11
  store i64 %8, ptr %1
  %9 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %10 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 3
  %11 = load ptr addrspace(1), ptr addrspace(1) %10, align 8
  %12 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %13 = load i64, ptr %1
  %14 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %13), !dbg !13
  %15 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %12, i64 0, i64 0
  store ptr addrspace(1) %14, ptr addrspace(1) %15
  %16 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 1
  store i64 1, ptr addrspace(1) %16
  %17 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %18 = getelementptr i8, ptr addrspace(1) %17, i64 864691128455135236
  store ptr addrspace(1) %18, ptr %2
  %19 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %19), !dbg !14
  store ptr addrspace(1) null, ptr %3
  ret void
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %21), !dbg !10
  unreachable
}
define internal i64 @_B_foo(i64 %0) !dbg !7 {
  %x = alloca i64
  %i = alloca i64
  %2 = alloca i64
  %i.1 = alloca i64
  %i.2 = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %21, label %8
8:
  store i64 %0, ptr %x
  %9 = load i64, ptr %x
  %10 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %9, i64 1)
  %11 = extractvalue {i64, i1} %10, 1
  br i1 %11, label %28, label %23
12:
  %13 = load i64, ptr %i
  store i64 %13, ptr %i.1
  %14 = load i64, ptr %i.1
  %15 = call i64 @_B_foo(i64 %14), !dbg !18
  store i64 %15, ptr %3
  %16 = load i64, ptr %3
  ret i64 %16
17:
  %18 = load i64, ptr %i
  store i64 %18, ptr %i.2
  ret i64 0
19:
  %20 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !19
  unreachable
21:
  %22 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !15
  call void @_bal_panic(ptr addrspace(1) %22), !dbg !16
  unreachable
23:
  %24 = extractvalue {i64, i1} %10, 0
  store i64 %24, ptr %2
  %25 = load i64, ptr %2
  store i64 %25, ptr %i
  %26 = load i64, ptr %i
  %27 = call i1 @_bal_type_contains_int(ptr @_Bt04root1, i64 %26), !dbg !17
  br i1 %27, label %12, label %17
28:
  %29 = call ptr addrspace(1) @_bal_panic_construct(i64 2305), !dbg !15
  store ptr addrspace(1) %29, ptr %4
  br label %19
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-function/call16-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 15, scope: !5)
!14 = !DILocation(line: 5, column: 4, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
!16 = !DILocation(line: 8, column: 9, scope: !7)
!17 = !DILocation(line: 10, column: 10, scope: !7)
!18 = !DILocation(line: 11, column: 15, scope: !7)
!19 = !DILocation(line: 14, column: 0, scope: !7)
