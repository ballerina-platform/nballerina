@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_error_construct(ptr addrspace(1), i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %20, label %7
7:
  %8 = call i64 @_B_div(i64 5, i64 0), !dbg !13
  store i64 %8, ptr %1
  %9 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %10 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 3
  %11 = load ptr addrspace(1), ptr addrspace(1) %10, align 8
  %12 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %13 = load i64, ptr %1
  %14 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %13), !dbg !15
  %15 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %12, i64 0, i64 0
  store ptr addrspace(1) %14, ptr addrspace(1) %15
  %16 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 1
  store i64 1, ptr addrspace(1) %16
  %17 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %18 = getelementptr i8, ptr addrspace(1) %17, i64 864691128455135236
  store ptr addrspace(1) %18, ptr %2
  %19 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %19), !dbg !16
  store ptr addrspace(1) null, ptr %3
  ret void
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %21), !dbg !12
  unreachable
}
define internal i64 @_B_div(i64 %0, i64 %1) !dbg !7 {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %30, label %11
11:
  store i64 %0, ptr %x
  store i64 %1, ptr %y
  %12 = load i64, ptr %y
  %13 = call ptr addrspace(1) @_B_nonZero(i64 %12), !dbg !19
  store ptr addrspace(1) %13, ptr %3
  %14 = load ptr addrspace(1), ptr %3
  %15 = addrspacecast ptr addrspace(1) %14 to ptr
  %16 = ptrtoint ptr %15 to i64
  %17 = and i64 %16, 2233785415175766016
  %18 = icmp eq i64 %17, 432345564227567616
  br i1 %18, label %19, label %22
19:
  %20 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %20, ptr %4
  %21 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %21, ptr %7
  br label %28
22:
  %23 = load ptr addrspace(1), ptr %3
  %24 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %23), !dbg !20
  store i64 %24, ptr %5
  %25 = load i64, ptr %x
  %26 = load i64, ptr %5
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %32, label %34
28:
  %29 = load ptr addrspace(1), ptr %7
  call void @_bal_panic(ptr addrspace(1) %29), !dbg !21
  unreachable
30:
  %31 = call ptr addrspace(1) @_bal_panic_construct(i64 1796), !dbg !17
  call void @_bal_panic(ptr addrspace(1) %31), !dbg !18
  unreachable
32:
  %33 = call ptr addrspace(1) @_bal_panic_construct(i64 2050), !dbg !17
  store ptr addrspace(1) %33, ptr %7
  br label %28
34:
  %35 = icmp eq i64 %25, -9223372036854775808
  %36 = icmp eq i64 %26, -1
  %37 = and i1 %35, %36
  br i1 %37, label %41, label %38
38:
  %39 = sdiv i64 %25, %26
  store i64 %39, ptr %6
  %40 = load i64, ptr %6
  ret i64 %40
41:
  %42 = call ptr addrspace(1) @_bal_panic_construct(i64 2049), !dbg !17
  store ptr addrspace(1) %42, ptr %7
  br label %28
}
define internal ptr addrspace(1) @_B_nonZero(i64 %0) !dbg !9 {
  %n = alloca i64
  %n.1 = alloca i64
  %n.2 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %19, label %6
6:
  store i64 %0, ptr %n
  %7 = load i64, ptr %n
  %8 = icmp sle i64 0, %7
  %9 = icmp sge i64 0, %7
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %15
11:
  %12 = load i64, ptr %n
  store i64 %12, ptr %n.1
  %13 = call ptr addrspace(1) @_bal_error_construct(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571016062330), i64 13), !dbg !22
  store ptr addrspace(1) %13, ptr %2
  %14 = load ptr addrspace(1), ptr %2
  ret ptr addrspace(1) %14
15:
  %16 = load i64, ptr %n
  store i64 %16, ptr %n.2
  %17 = load i64, ptr %n.2
  %18 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %17), !dbg !24
  ret ptr addrspace(1) %18
19:
  %20 = call ptr addrspace(1) @_bal_panic_construct(i64 2820), !dbg !22
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !23
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-error/check3-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"div", linkageName:"_B_div", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"nonZero", linkageName:"_B_nonZero", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 3, column: 16, scope: !5)
!13 = !DILocation(line: 4, column: 15, scope: !5)
!14 = !DILocation(line: 4, column: 15, scope: !5)
!15 = !DILocation(line: 4, column: 15, scope: !5)
!16 = !DILocation(line: 4, column: 4, scope: !5)
!17 = !DILocation(line: 0, column: 0, scope: !7)
!18 = !DILocation(line: 7, column: 9, scope: !7)
!19 = !DILocation(line: 8, column: 26, scope: !7)
!20 = !DILocation(line: 8, column: 15, scope: !7)
!21 = !DILocation(line: 9, column: 0, scope: !7)
!22 = !DILocation(line: 0, column: 0, scope: !9)
!23 = !DILocation(line: 11, column: 9, scope: !9)
!24 = !DILocation(line: 15, column: 4, scope: !9)
