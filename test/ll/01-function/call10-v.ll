@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
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
  %11 = call i64 @_B_foo(i64 13, i1 0), !dbg !11
  store i64 %11, ptr %1
  %12 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %13 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 3
  %14 = load ptr addrspace(1), ptr addrspace(1) %13, align 8
  %15 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %16 = load i64, ptr %1
  %17 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %16), !dbg !13
  %18 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %15, i64 0, i64 0
  store ptr addrspace(1) %17, ptr addrspace(1) %18
  %19 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 1
  store i64 1, ptr addrspace(1) %19
  %20 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %21 = getelementptr i8, ptr addrspace(1) %20, i64 864691128455135236
  store ptr addrspace(1) %21, ptr %2
  %22 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %22), !dbg !14
  store ptr addrspace(1) null, ptr %3
  %23 = call i64 @_B_foo(i64 14, i1 1), !dbg !15
  store i64 %23, ptr %4
  %24 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 3
  %26 = load ptr addrspace(1), ptr addrspace(1) %25, align 8
  %27 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %28 = load i64, ptr %4
  %29 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %28), !dbg !17
  %30 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %27, i64 0, i64 0
  store ptr addrspace(1) %29, ptr addrspace(1) %30
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 1
  store i64 1, ptr addrspace(1) %31
  %32 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %33 = getelementptr i8, ptr addrspace(1) %32, i64 864691128455135236
  store ptr addrspace(1) %33, ptr %5
  %34 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %34), !dbg !18
  store ptr addrspace(1) null, ptr %6
  ret void
35:
  %36 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %36), !dbg !10
  unreachable
}
define internal i64 @_B_foo(i64 %0, i1 %1) !dbg !7 {
  %i = alloca i64
  %b = alloca i1
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %20, label %9
9:
  store i64 %0, ptr %i
  store i1 %1, ptr %b
  %10 = load i1, ptr %b
  br i1 %10, label %11, label %15
11:
  %12 = load i64, ptr %i
  %13 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %12, i64 1)
  %14 = extractvalue {i64, i1} %13, 1
  br i1 %14, label %36, label %33
15:
  %16 = load i64, ptr %i
  %17 = icmp eq i64 5, 0
  br i1 %17, label %22, label %24
18:
  %19 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %19), !dbg !21
  unreachable
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !19
  call void @_bal_panic(ptr addrspace(1) %21), !dbg !20
  unreachable
22:
  %23 = call ptr addrspace(1) @_bal_panic_construct(i64 3330), !dbg !19
  store ptr addrspace(1) %23, ptr %5
  br label %18
24:
  %25 = icmp eq i64 %16, -9223372036854775808
  %26 = icmp eq i64 5, -1
  %27 = and i1 %25, %26
  br i1 %27, label %30, label %28
28:
  %29 = srem i64 %16, 5
  store i64 %29, ptr %4
  br label %31
30:
  store i64 0, ptr %4
  br label %31
31:
  %32 = load i64, ptr %4
  ret i64 %32
33:
  %34 = extractvalue {i64, i1} %13, 0
  store i64 %34, ptr %3
  %35 = load i64, ptr %3
  ret i64 %35
36:
  %37 = call ptr addrspace(1) @_bal_panic_construct(i64 2817), !dbg !19
  store ptr addrspace(1) %37, ptr %5
  br label %18
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-function/call10-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 15, scope: !5)
!14 = !DILocation(line: 5, column: 4, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 15, scope: !5)
!17 = !DILocation(line: 6, column: 15, scope: !5)
!18 = !DILocation(line: 6, column: 4, scope: !5)
!19 = !DILocation(line: 0, column: 0, scope: !7)
!20 = !DILocation(line: 9, column: 9, scope: !7)
!21 = !DILocation(line: 15, column: 0, scope: !7)
