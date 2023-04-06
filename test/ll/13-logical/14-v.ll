@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.str2 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 13, i16 13, [20 x i8] c"non-empty str\00\00\00\00\00\00\00"}, align 8
@.str4 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 9, [12 x i8] c"empty str\00\00\00"}, align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %11, label %7
7:
  call void @_B04rootf(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409)), !dbg !13
  store ptr addrspace(1) null, ptr %1
  call void @_B04rootf(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261567)), !dbg !14
  store ptr addrspace(1) null, ptr %2
  %8 = and i64 72057594037927935, 2
  %9 = or i64 2449958197289549824, %8
  %10 = getelementptr i8, ptr addrspace(1) null, i64 %9
  call void @_B04rootf(ptr addrspace(1) %10), !dbg !15
  store ptr addrspace(1) null, ptr %3
  ret void
11:
  %12 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %12), !dbg !12
  unreachable
}
define void @_B04rootf(ptr addrspace(1) %0) !dbg !7 {
  %x = alloca ptr addrspace(1)
  %x.1 = alloca ptr addrspace(1)
  %x.2 = alloca i64
  %2 = alloca i1
  %_ = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %x.3 = alloca i64
  %x.4 = alloca ptr addrspace(1)
  %_.1 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %_.2 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %67, label %12
12:
  store ptr addrspace(1) %0, ptr %x
  %13 = load ptr addrspace(1), ptr %x
  %14 = addrspacecast ptr addrspace(1) %13 to ptr
  %15 = ptrtoint ptr %14 to i64
  %16 = and i64 %15, 2233785415175766016
  %17 = icmp eq i64 %16, 360287970189639680
  br i1 %17, label %18, label %23
18:
  %19 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %19, ptr %x.1
  %20 = load ptr addrspace(1), ptr %x.1
  %21 = call i1 @_B_isEmpty(ptr addrspace(1) %20), !dbg !18
  store i1 %21, ptr %2
  %22 = load i1, ptr %2
  br i1 %22, label %31, label %23
23:
  %24 = load ptr addrspace(1), ptr %x
  %25 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %24), !dbg !19
  store i64 %25, ptr %x.2
  %26 = load ptr addrspace(1), ptr %x
  %27 = addrspacecast ptr addrspace(1) %26 to ptr
  %28 = ptrtoint ptr %27 to i64
  %29 = and i64 %28, 2233785415175766016
  %30 = icmp eq i64 %29, 144115188075855872
  br i1 %30, label %42, label %55
31:
  %32 = load ptr addrspace(1), ptr %x.1
  store ptr addrspace(1) %32, ptr %_
  %33 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 3
  %35 = load ptr addrspace(1), ptr addrspace(1) %34, align 8
  %36 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %37 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %36, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str4 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %37
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 1
  store i64 1, ptr addrspace(1) %38
  %39 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %40 = getelementptr i8, ptr addrspace(1) %39, i64 864691128455135236
  store ptr addrspace(1) %40, ptr %3
  %41 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %41), !dbg !26
  store ptr addrspace(1) null, ptr %4
  ret void
42:
  %43 = load ptr addrspace(1), ptr %x
  %44 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %43), !dbg !22
  store i64 %44, ptr %x.3
  %45 = load i64, ptr %x.3
  store i64 %45, ptr %_.1
  %46 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 3
  %48 = load ptr addrspace(1), ptr addrspace(1) %47, align 8
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %49, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573432114793), ptr addrspace(1) %50
  %51 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  store i64 1, ptr addrspace(1) %51
  %52 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %53 = getelementptr i8, ptr addrspace(1) %52, i64 864691128455135236
  store ptr addrspace(1) %53, ptr %5
  %54 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %54), !dbg !24
  store ptr addrspace(1) null, ptr %6
  ret void
55:
  %56 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %56, ptr %x.4
  %57 = load ptr addrspace(1), ptr %x.4
  store ptr addrspace(1) %57, ptr %_.2
  %58 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %59 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %58, i64 0, i32 3
  %60 = load ptr addrspace(1), ptr addrspace(1) %59, align 8
  %61 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %62 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %61, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str2 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %62
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %58, i64 0, i32 1
  store i64 1, ptr addrspace(1) %63
  %64 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %65 = getelementptr i8, ptr addrspace(1) %64, i64 864691128455135236
  store ptr addrspace(1) %65, ptr %7
  %66 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %66), !dbg !21
  store ptr addrspace(1) null, ptr %8
  ret void
67:
  %68 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !16
  call void @_bal_panic(ptr addrspace(1) %68), !dbg !17
  unreachable
}
define internal i1 @_B_isEmpty(ptr addrspace(1) %0) !dbg !9 {
  %s = alloca ptr addrspace(1)
  %2 = alloca i1
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %10, label %6
6:
  store ptr addrspace(1) %0, ptr %s
  %7 = load ptr addrspace(1), ptr %s
  %8 = icmp eq ptr addrspace(1) %7, getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261567)
  store i1 %8, ptr %2
  %9 = load i1, ptr %2
  ret i1 %9
10:
  %11 = call ptr addrspace(1) @_bal_panic_construct(i64 5892), !dbg !27
  call void @_bal_panic(ptr addrspace(1) %11), !dbg !28
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/14-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"f", linkageName:"_B04rootf", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"isEmpty", linkageName:"_B_isEmpty", scope: !1, file: !1, line: 23, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 2, column: 16, scope: !5)
!13 = !DILocation(line: 3, column: 4, scope: !5)
!14 = !DILocation(line: 4, column: 4, scope: !5)
!15 = !DILocation(line: 5, column: 4, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
!17 = !DILocation(line: 8, column: 16, scope: !7)
!18 = !DILocation(line: 9, column: 22, scope: !7)
!19 = !DILocation(line: 9, column: 22, scope: !7)
!20 = !DILocation(line: 20, column: 15, scope: !7)
!21 = !DILocation(line: 20, column: 4, scope: !7)
!22 = !DILocation(line: 21, column: 0, scope: !7)
!23 = !DILocation(line: 16, column: 19, scope: !7)
!24 = !DILocation(line: 16, column: 8, scope: !7)
!25 = !DILocation(line: 11, column: 19, scope: !7)
!26 = !DILocation(line: 11, column: 8, scope: !7)
!27 = !DILocation(line: 0, column: 0, scope: !9)
!28 = !DILocation(line: 23, column: 9, scope: !9)
