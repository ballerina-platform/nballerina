@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1)) readonly
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
  br i1 %12, label %65, label %13
13:
  %14 = and i64 72057594037927935, 1
  %15 = or i64 2449958197289549824, %14
  %16 = getelementptr i8, ptr addrspace(1) null, i64 %15
  %17 = and i64 72057594037927935, 2
  %18 = or i64 2449958197289549824, %17
  %19 = getelementptr i8, ptr addrspace(1) null, i64 %18
  %20 = call i64 @_B_add(ptr addrspace(1) %16, ptr addrspace(1) %19), !dbg !11
  store i64 %20, ptr %1
  %21 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 3
  %23 = load ptr addrspace(1), ptr addrspace(1) %22, align 8
  %24 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %25 = load i64, ptr %1
  %26 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %25), !dbg !13
  %27 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %24, i64 0, i64 0
  store ptr addrspace(1) %26, ptr addrspace(1) %27
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 1
  store i64 1, ptr addrspace(1) %28
  %29 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %30 = getelementptr i8, ptr addrspace(1) %29, i64 864691128455135236
  store ptr addrspace(1) %30, ptr %2
  %31 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %31), !dbg !14
  store ptr addrspace(1) null, ptr %3
  %32 = and i64 72057594037927935, 2
  %33 = or i64 2449958197289549824, %32
  %34 = getelementptr i8, ptr addrspace(1) null, i64 %33
  %35 = zext i1 0 to i64
  %36 = or i64 %35, 72057594037927936
  %37 = getelementptr i8, ptr addrspace(1) null, i64 %36
  %38 = call i64 @_B_add(ptr addrspace(1) %34, ptr addrspace(1) %37), !dbg !15
  store i64 %38, ptr %4
  %39 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 3
  %41 = load ptr addrspace(1), ptr addrspace(1) %40, align 8
  %42 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %43 = load i64, ptr %4
  %44 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %43), !dbg !17
  %45 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %42, i64 0, i64 0
  store ptr addrspace(1) %44, ptr addrspace(1) %45
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 1
  store i64 1, ptr addrspace(1) %46
  %47 = bitcast ptr addrspace(1) %39 to ptr addrspace(1)
  %48 = getelementptr i8, ptr addrspace(1) %47, i64 864691128455135236
  store ptr addrspace(1) %48, ptr %5
  %49 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %49), !dbg !18
  store ptr addrspace(1) null, ptr %6
  %50 = zext i1 0 to i64
  %51 = or i64 %50, 72057594037927936
  %52 = getelementptr i8, ptr addrspace(1) null, i64 %51
  %53 = call i64 @_B_add(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187952490046824), ptr addrspace(1) %52), !dbg !19
  store i64 %53, ptr %7
  %54 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 3
  %56 = load ptr addrspace(1), ptr addrspace(1) %55, align 8
  %57 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %58 = load i64, ptr %7
  %59 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %58), !dbg !21
  %60 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %57, i64 0, i64 0
  store ptr addrspace(1) %59, ptr addrspace(1) %60
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 1
  store i64 1, ptr addrspace(1) %61
  %62 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %63 = getelementptr i8, ptr addrspace(1) %62, i64 864691128455135236
  store ptr addrspace(1) %63, ptr %8
  %64 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %64), !dbg !22
  store ptr addrspace(1) null, ptr %9
  ret void
65:
  %66 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %66), !dbg !10
  unreachable
}
define internal i64 @_B_add(ptr addrspace(1) %0, ptr addrspace(1) %1) !dbg !7 {
  %x = alloca ptr addrspace(1)
  %y = alloca ptr addrspace(1)
  %n = alloca ptr addrspace(1)
  %n.1 = alloca i64
  %n.2 = alloca ptr addrspace(1)
  %y.1 = alloca i64
  %y.2 = alloca ptr addrspace(1)
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca i64
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %39, label %10
10:
  store ptr addrspace(1) %0, ptr %x
  store ptr addrspace(1) %1, ptr %y
  %11 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %11, ptr %n
  %12 = load ptr addrspace(1), ptr %n
  %13 = addrspacecast ptr addrspace(1) %12 to ptr
  %14 = ptrtoint ptr %13 to i64
  %15 = and i64 %14, 2233785415175766016
  %16 = icmp eq i64 %15, 144115188075855872
  br i1 %16, label %17, label %25
17:
  %18 = load ptr addrspace(1), ptr %n
  %19 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %18), !dbg !25
  store i64 %19, ptr %n.1
  %20 = load ptr addrspace(1), ptr %y
  %21 = addrspacecast ptr addrspace(1) %20 to ptr
  %22 = ptrtoint ptr %21 to i64
  %23 = and i64 %22, 2233785415175766016
  %24 = icmp eq i64 %23, 144115188075855872
  br i1 %24, label %27, label %34
25:
  %26 = load ptr addrspace(1), ptr %n
  store ptr addrspace(1) %26, ptr %n.2
  ret i64 -1
27:
  %28 = load ptr addrspace(1), ptr %y
  %29 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %28), !dbg !26
  store i64 %29, ptr %y.1
  %30 = load i64, ptr %n.1
  %31 = load i64, ptr %y.1
  %32 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %30, i64 %31)
  %33 = extractvalue {i64, i1} %32, 1
  br i1 %33, label %48, label %41
34:
  %35 = load ptr addrspace(1), ptr %y
  store ptr addrspace(1) %35, ptr %y.2
  %36 = load i64, ptr %n.1
  ret i64 %36
37:
  %38 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %38), !dbg !30
  unreachable
39:
  %40 = call ptr addrspace(1) @_bal_panic_construct(i64 2564), !dbg !23
  call void @_bal_panic(ptr addrspace(1) %40), !dbg !24
  unreachable
41:
  %42 = extractvalue {i64, i1} %32, 0
  store i64 %42, ptr %3
  %43 = load i64, ptr %3
  %44 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %43), !dbg !27
  store ptr addrspace(1) %44, ptr %n
  %45 = load ptr addrspace(1), ptr %n
  %46 = call {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1) %45), !dbg !28
  %47 = extractvalue {ptr addrspace(1), i1} %46, 1
  br i1 %47, label %57, label %50
48:
  %49 = call ptr addrspace(1) @_bal_panic_construct(i64 3585), !dbg !23
  store ptr addrspace(1) %49, ptr %6
  br label %37
50:
  %51 = extractvalue {ptr addrspace(1), i1} %46, 0
  store ptr addrspace(1) %51, ptr %4
  %52 = load ptr addrspace(1), ptr %4
  %53 = addrspacecast ptr addrspace(1) %52 to ptr
  %54 = ptrtoint ptr %53 to i64
  %55 = and i64 %54, 2233785415175766016
  %56 = icmp eq i64 %55, 144115188075855872
  br i1 %56, label %59, label %62
57:
  %58 = call ptr addrspace(1) @_bal_panic_construct(i64 3841), !dbg !23
  store ptr addrspace(1) %58, ptr %6
  br label %37
59:
  %60 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %52), !dbg !29
  store i64 %60, ptr %5
  %61 = load i64, ptr %5
  ret i64 %61
62:
  %63 = call ptr addrspace(1) @_bal_panic_construct(i64 3843), !dbg !23
  store ptr addrspace(1) %63, ptr %6
  br label %37
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-narrow/06-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"add", linkageName:"_B_add", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
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
!19 = !DILocation(line: 7, column: 15, scope: !5)
!20 = !DILocation(line: 7, column: 15, scope: !5)
!21 = !DILocation(line: 7, column: 15, scope: !5)
!22 = !DILocation(line: 7, column: 4, scope: !5)
!23 = !DILocation(line: 0, column: 0, scope: !7)
!24 = !DILocation(line: 10, column: 9, scope: !7)
!25 = !DILocation(line: 19, column: 4, scope: !7)
!26 = !DILocation(line: 17, column: 8, scope: !7)
!27 = !DILocation(line: 14, column: 14, scope: !7)
!28 = !DILocation(line: 15, column: 19, scope: !7)
!29 = !DILocation(line: 15, column: 19, scope: !7)
!30 = !DILocation(line: 20, column: 0, scope: !7)
