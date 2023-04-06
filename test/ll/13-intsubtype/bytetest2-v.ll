@_bal_stack_guard = external global ptr
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 0, i64 2452209997103235072], align 8
@_Bt04root0 = external constant {i32, i32, [0 x ptr]}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i8
  %17 = load ptr, ptr @_bal_stack_guard
  %18 = icmp ult ptr %16, %17
  br i1 %18, label %59, label %19
19:
  %20 = and i64 72057594037927935, 0
  %21 = or i64 2449958197289549824, %20
  %22 = getelementptr i8, ptr addrspace(1) null, i64 %21
  call void @_B_b(ptr addrspace(1) %22), !dbg !11
  store ptr addrspace(1) null, ptr %1
  %23 = and i64 72057594037927935, 1
  %24 = or i64 2449958197289549824, %23
  %25 = getelementptr i8, ptr addrspace(1) null, i64 %24
  call void @_B_b(ptr addrspace(1) %25), !dbg !12
  store ptr addrspace(1) null, ptr %2
  %26 = and i64 72057594037927935, 254
  %27 = or i64 2449958197289549824, %26
  %28 = getelementptr i8, ptr addrspace(1) null, i64 %27
  call void @_B_b(ptr addrspace(1) %28), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %29 = and i64 72057594037927935, 255
  %30 = or i64 2449958197289549824, %29
  %31 = getelementptr i8, ptr addrspace(1) null, i64 %30
  call void @_B_b(ptr addrspace(1) %31), !dbg !14
  store ptr addrspace(1) null, ptr %4
  %32 = and i64 72057594037927935, 128
  %33 = or i64 2449958197289549824, %32
  %34 = getelementptr i8, ptr addrspace(1) null, i64 %33
  call void @_B_b(ptr addrspace(1) %34), !dbg !15
  store ptr addrspace(1) null, ptr %5
  %35 = and i64 72057594037927935, 127
  %36 = or i64 2449958197289549824, %35
  %37 = getelementptr i8, ptr addrspace(1) null, i64 %36
  call void @_B_b(ptr addrspace(1) %37), !dbg !16
  store ptr addrspace(1) null, ptr %6
  %38 = and i64 72057594037927935, -1
  %39 = or i64 2449958197289549824, %38
  %40 = getelementptr i8, ptr addrspace(1) null, i64 %39
  call void @_B_b(ptr addrspace(1) %40), !dbg !17
  store ptr addrspace(1) null, ptr %7
  %41 = and i64 72057594037927935, 256
  %42 = or i64 2449958197289549824, %41
  %43 = getelementptr i8, ptr addrspace(1) null, i64 %42
  call void @_B_b(ptr addrspace(1) %43), !dbg !18
  store ptr addrspace(1) null, ptr %8
  %44 = and i64 72057594037927935, 257
  %45 = or i64 2449958197289549824, %44
  %46 = getelementptr i8, ptr addrspace(1) null, i64 %45
  call void @_B_b(ptr addrspace(1) %46), !dbg !19
  store ptr addrspace(1) null, ptr %9
  %47 = and i64 72057594037927935, -2
  %48 = or i64 2449958197289549824, %47
  %49 = getelementptr i8, ptr addrspace(1) null, i64 %48
  call void @_B_b(ptr addrspace(1) %49), !dbg !20
  store ptr addrspace(1) null, ptr %10
  %50 = and i64 72057594037927935, 65536
  %51 = or i64 2449958197289549824, %50
  %52 = getelementptr i8, ptr addrspace(1) null, i64 %51
  call void @_B_b(ptr addrspace(1) %52), !dbg !21
  store ptr addrspace(1) null, ptr %11
  %53 = and i64 72057594037927935, 4294967296
  %54 = or i64 2449958197289549824, %53
  %55 = getelementptr i8, ptr addrspace(1) null, i64 %54
  call void @_B_b(ptr addrspace(1) %55), !dbg !22
  store ptr addrspace(1) null, ptr %12
  call void @_B_b(ptr addrspace(1) null), !dbg !23
  store ptr addrspace(1) null, ptr %13
  %56 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.0), !dbg !24
  call void @_B_b(ptr addrspace(1) %56), !dbg !25
  store ptr addrspace(1) null, ptr %14
  %57 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %58 = getelementptr i8, ptr addrspace(1) %57, i64 288230376151711744
  call void @_B_b(ptr addrspace(1) %58), !dbg !26
  store ptr addrspace(1) null, ptr %15
  ret void
59:
  %60 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %60), !dbg !10
  unreachable
}
define internal void @_B_b(ptr addrspace(1) %0) !dbg !7 {
  %n = alloca ptr addrspace(1)
  %2 = alloca i1
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %24, label %8
8:
  store ptr addrspace(1) %0, ptr %n
  %9 = load ptr addrspace(1), ptr %n
  %10 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %9), !dbg !29
  store i1 %10, ptr %2
  %11 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !30
  %12 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %11, i64 0, i32 3
  %13 = load ptr addrspace(1), ptr addrspace(1) %12, align 8
  %14 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %15 = load i1, ptr %2
  %16 = zext i1 %15 to i64
  %17 = or i64 %16, 72057594037927936
  %18 = getelementptr i8, ptr addrspace(1) null, i64 %17
  %19 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %14, i64 0, i64 0
  store ptr addrspace(1) %18, ptr addrspace(1) %19
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %11, i64 0, i32 1
  store i64 1, ptr addrspace(1) %20
  %21 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %22 = getelementptr i8, ptr addrspace(1) %21, i64 864691128455135236
  store ptr addrspace(1) %22, ptr %3
  %23 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %23), !dbg !31
  store ptr addrspace(1) null, ptr %4
  ret void
24:
  %25 = call ptr addrspace(1) @_bal_panic_construct(i64 5380), !dbg !27
  call void @_bal_panic(ptr addrspace(1) %25), !dbg !28
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-intsubtype/bytetest2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"b", linkageName:"_B_b", scope: !1, file: !1, line: 21, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 16, scope: !5)
!11 = !DILocation(line: 4, column: 4, scope: !5)
!12 = !DILocation(line: 5, column: 4, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 4, scope: !5)
!15 = !DILocation(line: 8, column: 4, scope: !5)
!16 = !DILocation(line: 9, column: 4, scope: !5)
!17 = !DILocation(line: 10, column: 4, scope: !5)
!18 = !DILocation(line: 11, column: 4, scope: !5)
!19 = !DILocation(line: 12, column: 4, scope: !5)
!20 = !DILocation(line: 13, column: 4, scope: !5)
!21 = !DILocation(line: 14, column: 4, scope: !5)
!22 = !DILocation(line: 15, column: 4, scope: !5)
!23 = !DILocation(line: 16, column: 4, scope: !5)
!24 = !DILocation(line: 17, column: 4, scope: !5)
!25 = !DILocation(line: 17, column: 4, scope: !5)
!26 = !DILocation(line: 18, column: 4, scope: !5)
!27 = !DILocation(line: 0, column: 0, scope: !7)
!28 = !DILocation(line: 21, column: 9, scope: !7)
!29 = !DILocation(line: 22, column: 17, scope: !7)
!30 = !DILocation(line: 22, column: 15, scope: !7)
!31 = !DILocation(line: 22, column: 4, scope: !7)
