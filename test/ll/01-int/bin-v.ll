@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.smul.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %20, label %7
7:
  %8 = call i64 @_B_bin(i64 6, i64 2, i64 3), !dbg !11
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
define internal i64 @_B_bin(i64 %0, i64 %1, i64 %2) !dbg !7 {
  %x = alloca i64
  %y = alloca i64
  %z = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %10
10:
  store i64 %0, ptr %x
  store i64 %1, ptr %y
  store i64 %2, ptr %z
  %11 = load i64, ptr %x
  %12 = load i64, ptr %y
  %13 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %11, i64 %12)
  %14 = extractvalue {i64, i1} %13, 1
  br i1 %14, label %24, label %19
15:
  %16 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %16), !dbg !17
  unreachable
17:
  %18 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !15
  call void @_bal_panic(ptr addrspace(1) %18), !dbg !16
  unreachable
19:
  %20 = extractvalue {i64, i1} %13, 0
  store i64 %20, ptr %4
  %21 = load i64, ptr %4
  %22 = load i64, ptr %z
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %26, label %28
24:
  %25 = call ptr addrspace(1) @_bal_panic_construct(i64 2305), !dbg !15
  store ptr addrspace(1) %25, ptr %6
  br label %15
26:
  %27 = call ptr addrspace(1) @_bal_panic_construct(i64 2306), !dbg !15
  store ptr addrspace(1) %27, ptr %6
  br label %15
28:
  %29 = icmp eq i64 %21, -9223372036854775808
  %30 = icmp eq i64 %22, -1
  %31 = and i1 %29, %30
  br i1 %31, label %35, label %32
32:
  %33 = sdiv i64 %21, %22
  store i64 %33, ptr %5
  %34 = load i64, ptr %5
  ret i64 %34
35:
  %36 = call ptr addrspace(1) @_bal_panic_construct(i64 2305), !dbg !15
  store ptr addrspace(1) %36, ptr %6
  br label %15
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/bin-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"bin", linkageName:"_B_bin", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 13, scope: !5)
!12 = !DILocation(line: 5, column: 13, scope: !5)
!13 = !DILocation(line: 5, column: 13, scope: !5)
!14 = !DILocation(line: 5, column: 2, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
!16 = !DILocation(line: 8, column: 9, scope: !7)
!17 = !DILocation(line: 10, column: 0, scope: !7)
