@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %x.1 = alloca i64
  %x.2 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %x.3 = alloca ptr addrspace(1)
  %x.4 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %49, label %8
8:
  %9 = and i64 72057594037927935, 1
  %10 = or i64 2449958197289549824, %9
  %11 = getelementptr i8, ptr addrspace(1) null, i64 %10
  store ptr addrspace(1) %11, ptr %x
  %12 = load ptr addrspace(1), ptr %x
  %13 = addrspacecast ptr addrspace(1) %12 to ptr
  %14 = ptrtoint ptr %13 to i64
  %15 = and i64 %14, 2233785415175766016
  %16 = icmp eq i64 %15, 144115188075855872
  br i1 %16, label %17, label %29
17:
  %18 = load ptr addrspace(1), ptr %x
  %19 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %18), !dbg !9
  store i64 %19, ptr %x.1
  %20 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %21 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 3
  %22 = load ptr addrspace(1), ptr addrspace(1) %21, align 8
  %23 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %24 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %23, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573432114793), ptr addrspace(1) %24
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 1
  store i64 1, ptr addrspace(1) %25
  %26 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %27 = getelementptr i8, ptr addrspace(1) %26, i64 864691128455135236
  store ptr addrspace(1) %27, ptr %1
  %28 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %28), !dbg !11
  store ptr addrspace(1) null, ptr %2
  br label %29
29:
  %30 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %30, ptr %x.2
  %31 = load ptr addrspace(1), ptr %x
  %32 = addrspacecast ptr addrspace(1) %31 to ptr
  %33 = ptrtoint ptr %32 to i64
  %34 = and i64 %33, 2233785415175766016
  %35 = icmp eq i64 %34, 360287970189639680
  br i1 %35, label %36, label %47
36:
  %37 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %37, ptr %x.3
  %38 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %39 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 3
  %40 = load ptr addrspace(1), ptr addrspace(1) %39, align 8
  %41 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %42 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %41, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738020822377722995), ptr addrspace(1) %42
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 1
  store i64 1, ptr addrspace(1) %43
  %44 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %45 = getelementptr i8, ptr addrspace(1) %44, i64 864691128455135236
  store ptr addrspace(1) %45, ptr %3
  %46 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %46), !dbg !13
  store ptr addrspace(1) null, ptr %4
  br label %47
47:
  %48 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %48, ptr %x.4
  ret void
49:
  %50 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %50), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-typetest/1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 9, scope: !5)
!10 = !DILocation(line: 7, column: 19, scope: !5)
!11 = !DILocation(line: 7, column: 8, scope: !5)
!12 = !DILocation(line: 10, column: 19, scope: !5)
!13 = !DILocation(line: 10, column: 8, scope: !5)
