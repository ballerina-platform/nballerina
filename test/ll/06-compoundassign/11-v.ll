@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca i64
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %18, label %10
10:
  store i64 1, ptr %x
  %11 = load i64, ptr %x
  %12 = call i64 @_B_foo(i64 %11), !dbg !11
  store i64 %12, ptr %1
  %13 = load i64, ptr %1
  %14 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 2, i64 %13)
  %15 = extractvalue {i64, i1} %14, 1
  br i1 %15, label %26, label %20
16:
  %17 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %17), !dbg !15
  unreachable
18:
  %19 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %19), !dbg !10
  unreachable
20:
  %21 = extractvalue {i64, i1} %14, 0
  store i64 %21, ptr %2
  %22 = load i64, ptr %x
  %23 = load i64, ptr %2
  %24 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %22, i64 %23)
  %25 = extractvalue {i64, i1} %24, 1
  br i1 %25, label %42, label %28
26:
  %27 = call ptr addrspace(1) @_bal_panic_construct(i64 1537), !dbg !9
  store ptr addrspace(1) %27, ptr %6
  br label %16
28:
  %29 = extractvalue {i64, i1} %24, 0
  store i64 %29, ptr %3
  %30 = load i64, ptr %3
  store i64 %30, ptr %x
  %31 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 3
  %33 = load ptr addrspace(1), ptr addrspace(1) %32, align 8
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = load i64, ptr %x
  %36 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %35), !dbg !13
  %37 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 0
  store ptr addrspace(1) %36, ptr addrspace(1) %37
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 1
  store i64 1, ptr addrspace(1) %38
  %39 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %40 = getelementptr i8, ptr addrspace(1) %39, i64 864691128455135236
  store ptr addrspace(1) %40, ptr %4
  %41 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %41), !dbg !14
  store ptr addrspace(1) null, ptr %5
  ret void
42:
  %43 = call ptr addrspace(1) @_bal_panic_construct(i64 1537), !dbg !9
  store ptr addrspace(1) %43, ptr %6
  br label %16
}
define internal i64 @_B_foo(i64 %0) !dbg !7 {
  %i = alloca i64
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %13, label %7
7:
  store i64 %0, ptr %i
  %8 = load i64, ptr %i
  %9 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %8, i64 3)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %18, label %15
11:
  %12 = load ptr addrspace(1), ptr %3
  call void @_bal_panic(ptr addrspace(1) %12), !dbg !18
  unreachable
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 2564), !dbg !16
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !17
  unreachable
15:
  %16 = extractvalue {i64, i1} %9, 0
  store i64 %16, ptr %2
  %17 = load i64, ptr %2
  ret i64 %17
18:
  %19 = call ptr addrspace(1) @_bal_panic_construct(i64 2817), !dbg !16
  store ptr addrspace(1) %19, ptr %3
  br label %11
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-compoundassign/11-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 6, column: 13, scope: !5)
!12 = !DILocation(line: 7, column: 15, scope: !5)
!13 = !DILocation(line: 7, column: 15, scope: !5)
!14 = !DILocation(line: 7, column: 4, scope: !5)
!15 = !DILocation(line: 8, column: 0, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
!17 = !DILocation(line: 10, column: 9, scope: !7)
!18 = !DILocation(line: 12, column: 0, scope: !7)
