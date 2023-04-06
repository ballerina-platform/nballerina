@_bal_stack_guard = external global ptr
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"This is \00\00\00\00"}, align 8
@_Bi04root0 = external constant {i32}
@.str1 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 15, i16 15, [20 x i8] c"This is integer\00\00\00\00\00"}, align 8
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"test str\00\00\00\00"}, align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_string_concat(ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
define internal void @_B_stringFoo(ptr addrspace(1) %0) !dbg !5 {
  %s = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %21, label %8
8:
  store ptr addrspace(1) %0, ptr %s
  %9 = load ptr addrspace(1), ptr %s
  %10 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str0 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %9), !dbg !15
  store ptr addrspace(1) %10, ptr %2
  %11 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %12 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %11, i64 0, i32 3
  %13 = load ptr addrspace(1), ptr addrspace(1) %12, align 8
  %14 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %15 = load ptr addrspace(1), ptr %2
  %16 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %14, i64 0, i64 0
  store ptr addrspace(1) %15, ptr addrspace(1) %16
  %17 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %11, i64 0, i32 1
  store i64 1, ptr addrspace(1) %17
  %18 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %19 = getelementptr i8, ptr addrspace(1) %18, i64 864691128455135236
  store ptr addrspace(1) %19, ptr %3
  %20 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %20), !dbg !17
  store ptr addrspace(1) null, ptr %4
  ret void
21:
  %22 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %22), !dbg !14
  unreachable
}
define internal void @_B_intFoo(i64 %0) !dbg !7 {
  %i = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %17, label %7
7:
  store i64 %0, ptr %i
  %8 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %9 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %8, i64 0, i32 3
  %10 = load ptr addrspace(1), ptr addrspace(1) %9, align 8
  %11 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %12 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %11, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str1 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %12
  %13 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %8, i64 0, i32 1
  store i64 1, ptr addrspace(1) %13
  %14 = bitcast ptr addrspace(1) %8 to ptr addrspace(1)
  %15 = getelementptr i8, ptr addrspace(1) %14, i64 864691128455135236
  store ptr addrspace(1) %15, ptr %2
  %16 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %16), !dbg !21
  store ptr addrspace(1) null, ptr %3
  ret void
17:
  %18 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !18
  call void @_bal_panic(ptr addrspace(1) %18), !dbg !19
  unreachable
}
define internal void @_B_foo(ptr addrspace(1) %0) !dbg !9 {
  %x = alloca ptr addrspace(1)
  %x.1 = alloca i64
  %x.2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %_ = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %22, label %7
7:
  store ptr addrspace(1) %0, ptr %x
  %8 = load ptr addrspace(1), ptr %x
  %9 = addrspacecast ptr addrspace(1) %8 to ptr
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 2233785415175766016
  %12 = icmp eq i64 %11, 144115188075855872
  br i1 %12, label %13, label %17
13:
  %14 = load ptr addrspace(1), ptr %x
  %15 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %14), !dbg !25
  store i64 %15, ptr %x.1
  %16 = load i64, ptr %x.1
  call void @_B_intFoo(i64 %16), !dbg !26
  store ptr addrspace(1) null, ptr %2
  br label %21
17:
  %18 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %18, ptr %x.2
  %19 = load ptr addrspace(1), ptr %x.2
  store ptr addrspace(1) %19, ptr %_
  %20 = load ptr addrspace(1), ptr %x.2
  call void @_B_stringFoo(ptr addrspace(1) %20), !dbg !24
  store ptr addrspace(1) null, ptr %3
  br label %21
21:
  ret void
22:
  %23 = call ptr addrspace(1) @_bal_panic_construct(i64 3076), !dbg !22
  call void @_bal_panic(ptr addrspace(1) %23), !dbg !23
  unreachable
}
define void @_B04rootmain() !dbg !11 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %10, label %6
6:
  %7 = and i64 72057594037927935, 2
  %8 = or i64 2449958197289549824, %7
  %9 = getelementptr i8, ptr addrspace(1) null, i64 %8
  call void @_B_foo(ptr addrspace(1) %9), !dbg !29
  store ptr addrspace(1) null, ptr %1
  call void @_B_foo(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str2 to ptr) to ptr addrspace(1)), i64 360287970189639680)), !dbg !30
  store ptr addrspace(1) null, ptr %2
  ret void
10:
  %11 = call ptr addrspace(1) @_bal_panic_construct(i64 5636), !dbg !27
  call void @_bal_panic(ptr addrspace(1) %11), !dbg !28
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-wildcard/2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"stringFoo", linkageName:"_B_stringFoo", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"intFoo", linkageName:"_B_intFoo", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 22, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 4, column: 9, scope: !5)
!15 = !DILocation(line: 5, column: 26, scope: !5)
!16 = !DILocation(line: 5, column: 15, scope: !5)
!17 = !DILocation(line: 5, column: 4, scope: !5)
!18 = !DILocation(line: 0, column: 0, scope: !7)
!19 = !DILocation(line: 8, column: 9, scope: !7)
!20 = !DILocation(line: 9, column: 15, scope: !7)
!21 = !DILocation(line: 9, column: 4, scope: !7)
!22 = !DILocation(line: 0, column: 0, scope: !9)
!23 = !DILocation(line: 12, column: 9, scope: !9)
!24 = !DILocation(line: 18, column: 8, scope: !9)
!25 = !DILocation(line: 19, column: 4, scope: !9)
!26 = !DILocation(line: 14, column: 8, scope: !9)
!27 = !DILocation(line: 0, column: 0, scope: !11)
!28 = !DILocation(line: 22, column: 16, scope: !11)
!29 = !DILocation(line: 23, column: 4, scope: !11)
!30 = !DILocation(line: 24, column: 4, scope: !11)
