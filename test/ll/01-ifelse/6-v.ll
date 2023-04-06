@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i8
  %11 = load ptr, ptr @_bal_stack_guard
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %50, label %13
13:
  %14 = call i64 @_B_foo(i64 1, i64 1), !dbg !15
  store i64 %14, ptr %1
  %15 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %16 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 3
  %17 = load ptr addrspace(1), ptr addrspace(1) %16, align 8
  %18 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %19 = load i64, ptr %1
  %20 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %19), !dbg !17
  %21 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %18, i64 0, i64 0
  store ptr addrspace(1) %20, ptr addrspace(1) %21
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 1
  store i64 1, ptr addrspace(1) %22
  %23 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %24 = getelementptr i8, ptr addrspace(1) %23, i64 864691128455135236
  store ptr addrspace(1) %24, ptr %2
  %25 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %25), !dbg !18
  store ptr addrspace(1) null, ptr %3
  %26 = call i64 @_B_foo(i64 1, i64 10), !dbg !19
  store i64 %26, ptr %4
  %27 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 3
  %29 = load ptr addrspace(1), ptr addrspace(1) %28, align 8
  %30 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %31 = load i64, ptr %4
  %32 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %31), !dbg !21
  %33 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %30, i64 0, i64 0
  store ptr addrspace(1) %32, ptr addrspace(1) %33
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 1
  store i64 1, ptr addrspace(1) %34
  %35 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %36 = getelementptr i8, ptr addrspace(1) %35, i64 864691128455135236
  store ptr addrspace(1) %36, ptr %5
  %37 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %37), !dbg !22
  store ptr addrspace(1) null, ptr %6
  %38 = call i64 @_B_foo(i64 11, i64 1), !dbg !23
  store i64 %38, ptr %7
  %39 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 3
  %41 = load ptr addrspace(1), ptr addrspace(1) %40, align 8
  %42 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %43 = load i64, ptr %7
  %44 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %43), !dbg !25
  %45 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %42, i64 0, i64 0
  store ptr addrspace(1) %44, ptr addrspace(1) %45
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 1
  store i64 1, ptr addrspace(1) %46
  %47 = bitcast ptr addrspace(1) %39 to ptr addrspace(1)
  %48 = getelementptr i8, ptr addrspace(1) %47, i64 864691128455135236
  store ptr addrspace(1) %48, ptr %8
  %49 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %49), !dbg !26
  store ptr addrspace(1) null, ptr %9
  ret void
50:
  %51 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %51), !dbg !14
  unreachable
}
define internal i64 @_B_foo(i64 %0, i64 %1) !dbg !7 {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i1
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i1
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %33, label %12
12:
  store i64 %0, ptr %x
  store i64 %1, ptr %y
  %13 = load i64, ptr %x
  %14 = call i64 @_B_bar(i64 %13), !dbg !29
  store i64 %14, ptr %3
  %15 = load i64, ptr %y
  %16 = call i64 @_B_baz(i64 %15), !dbg !30
  store i64 %16, ptr %4
  %17 = load i64, ptr %3
  %18 = load i64, ptr %4
  %19 = icmp eq i64 %17, %18
  store i1 %19, ptr %5
  %20 = load i1, ptr %5
  br i1 %20, label %21, label %22
21:
  ret i64 0
22:
  %23 = load i64, ptr %x
  %24 = call i64 @_B_bar(i64 %23), !dbg !31
  store i64 %24, ptr %6
  %25 = load i64, ptr %y
  %26 = call i64 @_B_baz(i64 %25), !dbg !32
  store i64 %26, ptr %7
  %27 = load i64, ptr %6
  %28 = load i64, ptr %7
  %29 = icmp sgt i64 %27, %28
  store i1 %29, ptr %8
  %30 = load i1, ptr %8
  br i1 %30, label %31, label %32
31:
  ret i64 1
32:
  ret i64 -1
33:
  %34 = call ptr addrspace(1) @_bal_panic_construct(i64 2564), !dbg !27
  call void @_bal_panic(ptr addrspace(1) %34), !dbg !28
  unreachable
}
define internal i64 @_B_bar(i64 %0) !dbg !9 {
  %x = alloca i64
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %7, label %5
5:
  store i64 %0, ptr %x
  %6 = load i64, ptr %x
  ret i64 %6
7:
  %8 = call ptr addrspace(1) @_bal_panic_construct(i64 5636), !dbg !33
  call void @_bal_panic(ptr addrspace(1) %8), !dbg !34
  unreachable
}
define internal i64 @_B_baz(i64 %0) !dbg !11 {
  %x = alloca i64
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %7, label %5
5:
  store i64 %0, ptr %x
  %6 = load i64, ptr %x
  ret i64 %6
7:
  %8 = call ptr addrspace(1) @_bal_panic_construct(i64 6660), !dbg !35
  call void @_bal_panic(ptr addrspace(1) %8), !dbg !36
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-ifelse/6-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"bar", linkageName:"_B_bar", scope: !1, file: !1, line: 22, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"baz", linkageName:"_B_baz", scope: !1, file: !1, line: 26, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 4, column: 16, scope: !5)
!15 = !DILocation(line: 5, column: 15, scope: !5)
!16 = !DILocation(line: 5, column: 15, scope: !5)
!17 = !DILocation(line: 5, column: 15, scope: !5)
!18 = !DILocation(line: 5, column: 4, scope: !5)
!19 = !DILocation(line: 6, column: 15, scope: !5)
!20 = !DILocation(line: 6, column: 15, scope: !5)
!21 = !DILocation(line: 6, column: 15, scope: !5)
!22 = !DILocation(line: 6, column: 4, scope: !5)
!23 = !DILocation(line: 7, column: 15, scope: !5)
!24 = !DILocation(line: 7, column: 15, scope: !5)
!25 = !DILocation(line: 7, column: 15, scope: !5)
!26 = !DILocation(line: 7, column: 4, scope: !5)
!27 = !DILocation(line: 0, column: 0, scope: !7)
!28 = !DILocation(line: 10, column: 9, scope: !7)
!29 = !DILocation(line: 11, column: 8, scope: !7)
!30 = !DILocation(line: 11, column: 18, scope: !7)
!31 = !DILocation(line: 14, column: 12, scope: !7)
!32 = !DILocation(line: 14, column: 21, scope: !7)
!33 = !DILocation(line: 0, column: 0, scope: !9)
!34 = !DILocation(line: 22, column: 9, scope: !9)
!35 = !DILocation(line: 0, column: 0, scope: !11)
!36 = !DILocation(line: 26, column: 9, scope: !11)
